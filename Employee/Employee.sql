CREATE TABLE IF NOT EXISTS Department (
	id SERIAL PRIMARY KEY,
	name_department VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employee (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(80) NOT NULL,
	department_id INTEGER NOT NULL REFERENCES Department(id),
	boss_id INTEGER NOT NULL,
	CONSTRAINT  fk_Employee FOREIGN KEY (boss_id) REFERENCES Employee (id)
	
);