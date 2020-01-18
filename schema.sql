-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS bamazon;
-- Creates the "animals_db" database --
CREATE DATABASE bamazon;

-- Makes it so all of the following code will affect animals_db --
USE bamazon;

-- Creates the table "people" within animals_db --
CREATE TABLE  products(
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  item_id INTEGER (11) AUTO_INCREMENT NOT NULL, PRIMARY KEY(item_id),
  -- Makes a string column called "name" which cannot contain null --
  product_name VARCHAR(30) NOT NULL,
  -- Makes a boolean column called "has_pet" which cannot contain null --
  department_name VARCHAR(30),
  -- Makes a sting column called "pet_name" --
  price DECIMAL(10,2),
  -- Makes an numeric column called "pet_age" --
  stock_quantity INTEGER(10)
  
);

INSERT INTO products(
    product_name, department_name, price, stock_quantity
)

VALUES (
    'mens shirt','clothing',100.00,10

),
 (
    'womens shirt','clothing',150.00,15

),
 (
    'jeans','clothing',200.00,10

),
 (
    'xbox','gaming',450.00,20

),
 (
    'playstation','gaming',500.00,20

), (
    'laptop','electronic',1000.00,5

),
 (
    'iphone','electronic',1100.00,100

), (
    'camera','electric',200.00,10

), (
    'red wine','alcohol',10.00,200

), (
    'white wine','alcohol',10.00,250

)








