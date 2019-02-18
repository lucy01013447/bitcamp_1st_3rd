// 18.06.14 최신
CREATE TABLE applicants (
	apply_id INT(50) NOT NULL AUTO_INCREMENT,
    lec_id INT(50) NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    birth VARCHAR(50),
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_num VARCHAR(100) NOT NULL UNIQUE,
    gender VARCHAR(30),
    address VARCHAR(300),
    `comment` VARCHAR(5000),
    `password` VARCHAR(50) NOT NULL,
    apply_date DATETIME,
    PRIMARY KEY (apply_id),
    CONSTRAINT FOREIGN KEY(lec_id) REFERENCES lectures(lec_id)
);