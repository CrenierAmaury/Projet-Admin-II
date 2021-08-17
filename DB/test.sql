CREATE DATABASE IF NOT EXISTS b2b_db;
USE b2b_db;
CREATE TABLE IF NOT EXISTS example_database.todo_list;
CREATE USER 'b2b'@'135.125.101.233' IDENTIFIED WITH mysql_native_password BY 'user1234';
GRANT ALL ON example_database.* TO 'b2b'@'135.125.101.233';
FlUSH PRIVILEGES;

CREATE TABLE b2b_db.todo_list (
    id INT AUTO_INCREMENT,
    content VARCHAR(200),
    PRIMARY KEY(id)
);

INSERT INTO b2b_db.todo_list (content) VALUES ("My first important item");
