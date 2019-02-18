CREATE TABLE consultation (
    con_id INT(50) AUTO_INCREMENT,
    `subject` VARCHAR(200),
    `name` VARCHAR(50),
    email VARCHAR(50),
    phone_num VARCHAR(100),
    gender VARCHAR(30),
    needs VARCHAR(30),
    purpose VARCHAR(30),
    campus VARCHAR(30),
    application varchar(150),
    `comment` VARCHAR(5000),
    apply_date DATETIME,
    PRIMARY KEY (con_id)
);