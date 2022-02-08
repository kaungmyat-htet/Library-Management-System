CREATE TABLE persons (
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
cid VARCHAR(12) NOT NULL,
dob DATE NOT NULL,
phone VARCHAR(15) NOT NULL,
address_id int NOT NULL,
PRIMARY KEY (cid),
FOREIGN KEY (address_id) REFERENCES addresses(address_id));