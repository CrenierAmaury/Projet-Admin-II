CREATE DATABASE IF NOT EXISTS example_database;
USE example_database;
CREATE TABLE IF NOT EXISTS example_database.todo_list;
CREATE USER 'b2b'@'135.125.101.233' IDENTIFIED WITH mysql_native_password BY 'user1234';
GRANT ALL ON example_database.* TO 'b2b'@'135.125.101.233';
FlUSH PRIVILEGES;

CREATE TABLE example_database.todo_list (
    item_id INT AUTO_INCREMENT,
    content VARCHAR(255),
    PRIMARY KEY(item_id)
);

INSERT INTO example_database.todo_list (content) VALUES ("My first important item");
