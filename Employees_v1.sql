CREATE TABLE IF NOT EXISTS employee (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(40) NOT NULL,
	department VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS chief (
	id INTEGER PRIMARY KEY REFERENCES employee(id),
	department VARCHAR(40) NOT NULL
);

alter table employee add column chief_id INTEGER REFERENCES chief(id);

