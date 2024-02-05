CREATE TABLE IF NOT EXISTS employee (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(40) NOT NULL,
	department VARCHAR(40) NOT NULL,
	chief INTEGER REFERENCES employee(id)
);






