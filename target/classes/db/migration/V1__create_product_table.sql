-- V1__create_product_table.sql
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10,2)
);
