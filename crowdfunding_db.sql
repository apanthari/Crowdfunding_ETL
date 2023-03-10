CREATE TABLE category (
category_id VARCHAR,
category VARCHAR, 
PRIMARY KEY (category_id)
); 
SELECT * FROM category

CREATE TABLE subcategory(
subcategory_id VARCHAR,
subcategory VARCHAR,
PRIMARY KEY (subcategory_id)
); 
SELECT * FROM subcategory

CREATE TABLE contacts(
contact_id INT, 
first_name VARCHAR,
last_name VARCHAR,
email VARCHAR, 
PRIMARY KEY (contact_id)
);
SELECT * FROM contacts


CREATE TABLE campaign (
cf_id INT,
contact_id INT,
company_name VARCHAR,
descriptive VARCHAR,
goal FLOAT,
pledged FLOAT,
outcome VARCHAR,
backers_count INT,
country VARCHAR,
currency VARCHAR,
launch_date DATE,
end_date DATE,
category_id VARCHAR,
subcategory_id VARCHAR, 
PRIMARY KEY (cf_id),
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
); 
SELECT * FROM campaign
