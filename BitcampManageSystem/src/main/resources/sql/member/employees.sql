CREATE TABLE employees(
	employee_id VARCHAR(20),
    job_id VARCHAR(20),
    access_id VARCHAR(30),
	password VARCHAR(30),
    name VARCHAR(20),
    gender VARCHAR(10),
    email VARCHAR(50),
    phone_number INT,
    address VARCHAR(100),
    hire_date DATE,
    image VARCHAR(50),
	PRIMARY KEY(employee_id)
);