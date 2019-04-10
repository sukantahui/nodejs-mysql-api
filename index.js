const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');

// parse application/json
app.use(bodyParser.json());

//create database connection
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'sukantahui',
    database: 'restful_db'
});

//connect to database
// conn.connect((err) =>{
//     if(err) throw err;
//     console.log('Mysql Connected...');
// });

conn.connect(function(err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }
    console.log('connected as id ' + conn.threadId);
});

//show all products
app.get('/api/products',(req, res) => {
    let sql = "SELECT * FROM product";
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

//show single product
app.get('/api/products/:id',(req, res) => {
    let sql = "SELECT * FROM product WHERE product_id="+req.params.id;
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

//add new product
app.post('/api/products',(req, res) => {
        let data = {product_name: req.body.product_name, product_price: req.body.product_price};
    // let sql = "INSERT INTO product SET ?";
    // let query = conn.query(sql, data,(err, results) => {
    //     if(err) throw err;
    // res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    // });

    /* Begin transaction */
    conn.beginTransaction(function(err) {
        if (err) {
            console.log('Part1');
            res.send(JSON.stringify({"status": 200, "error": err, "response": 'part1'}));
            console.log('Error begining transaction');
        }
        var query=conn.query('INSERT INTO product SET ?', data, function(err, results) {
            if (err) {
                conn.rollback(function() {
                    res.send(JSON.stringify({"status": 200, "error": err, "response": 'error in commit'}));
                    console.log('Error in query, rolling back');
                });
            }else{
                res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
            }

            //var log = results.insertId;


        });
        
        conn.commit(function(err) {
            if (err) {
                connection.rollback(function() {
                    res.send(JSON.stringify({"status": 200, "error": err, "response": 'error in commit'}));
                    console.log('Error in Commit');
                    //throw err;
                });
            }else {
                console.log('Transaction Complete.');
            }
            //conn.end();
        });
    });

    /* End transaction */

});

//update product
app.put('/api/products/:id',(req, res) => {
    let sql = "UPDATE product SET product_name='"+req.body.product_name+"', product_price='"+req.body.product_price+"' WHERE product_id="+req.params.id;
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

//Delete product
app.delete('/api/products/:id',(req, res) => {
    let sql = "DELETE FROM product WHERE product_id="+req.params.id+"";
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

//Server listening
app.listen(3000,() =>{
    console.log('Server started on port 3000...');
});