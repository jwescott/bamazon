var mysql = require("mysql")
require("console.table")
var inquirer = require("inquirer")
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "developer",
    password: "scooby72",
    database: "bamazon"
})

connection.connect(function (err) {
    if (err) console.log(err);
    console.log("connection id", connection.threadId);
    displayInventory();

})

function displayInventory() {
    connection.query("SELECT item_id, product_name, price, stock_quantity FROM products", function (err, data) {
        console.table(data)

        inquirer.prompt([{
                type: "input",
                message: "Please select an item id.",
                name: "itemId"
            }, {
                type: "input",
                message: "How many of that item would you like to buy?",
                name: "quantity"

            }

        ]).then(function (userInput) {
     
          connection.query("SELECT * FROM products WHERE item_id = ? ", userInput.itemId, function(err, data) {
                console.table(data)
                var newQuantity = parseInt(data[0].stock_quantity) - parseInt(userInput.quantity)
                // console.log(newQuantity)
                // console.log(data[0].stock_quantity)
                // console.log(userInput.quantity)
                var statement=   connection.query("UPDATE products SET stock_quantity = ? WHERE item_id = ?", [newQuantity, userInput.itemId], function(err, data) {
                    displayInventory();
                })

                // console.log(statement.sql)
            })
        

            
        })
    })
}