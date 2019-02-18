CREATE TABLE users(
	user_id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(30) NOT NULL,
	name VARCHAR(20) NOT NULL,
	nickname VARCHAR(30) NOT NULL UNIQUE,
	email_hash VARCHAR(100),
	email_check BOOLEAN DEFAULT FALSE,
	PRIMARY KEY(user_id)
);

/*더미데이터*/
INSERT INTO users
(email, password, name, nickname)
VALUES
('qwe@gmail.com', '123', '김테스터', '미스타킴');
COMMIT;