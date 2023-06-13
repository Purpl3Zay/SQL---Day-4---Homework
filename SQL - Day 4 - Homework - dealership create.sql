CREATE TABLE salespeople (
  salesperson_id INTEGER,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (salesperson_id)
);

CREATE TABLE customers (
  customer_id INTEGER,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (customer_id)
);

CREATE TABLE cars (
  car_number VARCHAR(50),
  make VARCHAR(25),
  model VARCHAR(25),
  year VARCHAR(4),
  salesperson_id INTEGER,
  invoice_id INTEGER,
  customer_id INTEGER,
  PRIMARY KEY (car_number),
  FOREIGN KEY (salesperson_id) REFERENCES salespeople(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE invoices (
  invoice_id SERIAL,
  total NUMERIC(6,2),
  salesperson_id INTEGER,
  customer_id INTEGER,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (salesperson_id) REFERENCES salespeople(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE mechanics (
  employee_id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (employee_id)
);

CREATE TABLE serviceticket (
  ticket_id SERIAL,
  employee_id INTEGER,
  car_number INTEGER,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (car_number) REFERENCES cars(car_number),
  FOREIGN KEY (employee_id) REFERENCES mechanics(employee_id),
  FOREIGN KEY (ticket_id) REFERENCES customers(customer_id),
);
