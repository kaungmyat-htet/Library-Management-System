CREATE TABLE addresses (
address_id int GENERATED ALWAYS AS IDENTITY,
street VARCHAR(95) NOT NULL,
city VARCHAR(35) NOT NULL,
state_id int NOT NULL,
zipcode VARCHAR(5) NOT NULL,
PRIMARY KEY(address_id),
FOREIGN KEY(state_id) REFERENCES states(state_id));