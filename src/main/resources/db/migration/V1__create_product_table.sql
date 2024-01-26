-- V1__create_product_table.sql
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10,2)
);
