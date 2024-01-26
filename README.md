# Setup

1. Create your database
```bash
$ CREATE DATABASE spring_product;
```

2. Run migrations
```bash
$ ./mvnw flyway:migrate
```

3. Install the project
```bash
$ ./mvnw install
```

4. Start the project
```bash
$ java -jar target/demo-0.0.1-SNAPSHOT.jar
```

Note: if necessary clean the project run the command:
```bash
 $ ./mvnw clean
```

# Requests examples

## Create a product
```bash
$ curl -X POST -H "Content-Type: application/json" -d '{"name": "New Product", "price": 4.20}' http://localhost:8080/products
```

Response:
```json
{"id":1,"name":"New Product","price":4.20}
```

## List products
```bash
$ curl http://localhost:8080/products
```

Response:
```json
[{"id":1,"name":"New Product","price":4.20}]
```

## Update a product
```bash
$ curl -X PUT -H "Content-Type: application/json" -d '{"name": "New Name", "price": 420.00}' http://localhost:8080/products/1
```

Response:
```json
{"name":"New Name","price":420.0}
```

## Delete a product
```bash
$ curl -X DELETE http://localhost:8080/products/1
```

Response: **Product deleted successfully**