USE employee;
-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50),
    extension VARCHAR(10),
    email VARCHAR(100),
    officeCode VARCHAR(10),
    jobTitle VARCHAR(100),
    city VARCHAR(50),
    phone VARCHAR(20),
    reportsTo INT,
    reportToLastName VARCHAR(50),
    reportToFirstName VARCHAR(50)
);

-- Insert sample data into employees table
INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle, city, phone, reportsTo, reportToLastName, reportToFirstName) VALUES
(1002, 'Murphy', 'Diane', 'x5800', 'dmurphy@classicmodelcars.com', '1', 'President', 'San Francisco', '+1 650 219 4782', NULL, NULL, NULL),
(1056, 'Patterson', 'Mary', 'x4611', 'mpatterso@classicmodelcars.com', '1', 'VP Sales', 'San Francisco', '+1 650 219 4782', 1002, 'Murphy', 'Diane'),
(1076, 'Firrelli', 'Jeff', 'x9273', 'jfirrelli@classicmodelcars.com', '1', 'VP Marketing', 'San Francisco', '+1 650 219 4782', 1002, 'Murphy', 'Diane'),
(1088, 'Patterson', 'William', 'x4871', 'wpatterson@classicmodelcars.com', '6', 'Sales Manager (APAC)', 'Sydney', '+61 2 9264 2451', 1056, 'Patterson', 'Mary'),
(1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodelcars.com', '4', 'Sale Manager (EMEA)', 'Paris', '+33 1 46 62 7555', 1056, 'Patterson', 'Mary'),
(1143, 'Bow', 'Anthony', 'x5428', 'abow@classicmodelcars.com', '1', 'Sales Manager (NA)', 'San Francisco', '+1 650 219 4782', 1056, 'Patterson', 'Mary'),
(1165, 'Jennings', 'Leslie', 'x3291', 'ljennings@classicmodelcars.com', '1', 'Sales Rep', 'San Francisco', '+1 650 219 4782', 1143, 'Bow', 'Anthony'),
(1166, 'Thompson', 'Leslie', 'x4065', 'lthompson@classicmodelcars.com', '1', 'Sales Rep', 'San Francisco', '+1 650 219 4782', 1143, 'Bow', 'Anthony'),
(1188, 'Firrelli', 'Julie', 'x2173', 'jfirrelli@classicmodelcars.com', '2', 'Sales Rep', 'Boston', '+1 215 837 0825', 1143, 'Bow', 'Anthony'),
(1216, 'Patterson', 'Steve', 'x4334', 'spatterson@classicmodelcars.com', '2', 'Sales Rep', 'Boston', '+1 215 837 0825', 1143, 'Bow', 'Anthony'),
(1286, 'Firrelli', 'Molly', 'x5800', 'mfirrelli@classicmodelcars.com', '2', 'Sales Rep', 'Boston', '+1 215 837 0825', 1143, 'Bow', 'Anthony'),
(1323, 'Vanauf', 'George', 'x4102', 'gvanauf@classicmodelcars.com', '3', 'Sales Rep', 'NYC', '+1 212 555 3000', 1143, 'Bow', 'Anthony');
