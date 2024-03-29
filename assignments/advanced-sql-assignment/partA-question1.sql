-- Write the query to create the 4 tables below.
CREATE TABLE `client` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `dob` date NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT full_name UNIQUE (`first_name`, `last_name`)
);

CREATE TABLE `employee` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `dob` date NOT NULL,
    `date_joined` date NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT full_name UNIQUE (`first_name`, `last_name`)
);

CREATE TABLE `project` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `cid` int(11) DEFAULT NULL,
    `name` varchar(255) NOT NULL UNIQUE,
    `notes` TEXT,
    PRIMARY KEY (`id`),
     CONSTRAINT `project_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `client` (`id`)
);

CREATE TABLE `works_on` (
    `eid` int(11) NOT NULL,
    `pid` int(11) NOT NULL,
    `start_date` date NOT NULL,
    PRIMARY KEY (`eid`, `pid`),
    CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`),
    CONSTRAINT `works_on_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `project` (`id`)
);


-- Leave the queries below untouched. These are to test your submission correctly.
-- Test that the tables were created
DESCRIBE client;
DESCRIBE employee;
DESCRIBE project;
DESCRIBE works_on;

-- Test that the correct foreign keys were created 
SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_SCHEMA = 'mimir';
