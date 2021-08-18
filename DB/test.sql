USE b2b_db;
CREATE TABLE IF NOT EXISTS web_db.todo_list;

CREATE TABLE web_db.todo_list (
    id INT AUTO_INCREMENT,
    content VARCHAR(200),
    PRIMARY KEY(id)
);

INSERT INTO web_db.todo_list (content) VALUES ("My first important item");
