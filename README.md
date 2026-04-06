# docker-database-project
https://shivaprogramming.com/IS436/content/deliverable/deliverable3.html

## 1. Start the Database
Run the following command in your terminal from the project directory:
docker compose up

To run in background mode (detached):
docker compose up -d

## 2. Stop the Database
To stop the running container:
docker compose down

To stop and remove all data (including volumes):
docker compose down -v

## 3. Connect to the Database
**Method 1: Inside the container (recommended)**
docker exec -it my_project_db psql -U student -d projectdb

**Method 2: From your host machine (if PostgreSQL is installed locally)**
psql -h localhost -p 5432 -U student -d projectdb

## 4. Verify the Database
Once connected to PostgreSQL, run these SQL commands:
\dt
SELECT * FROM Customer;
SELECT * FROM Orders;

**Expected output:**
- The `\dt` command should show two tables: `customer` and `orders`
- The `SELECT` statements should return sample data inserted from the init-db scripts
