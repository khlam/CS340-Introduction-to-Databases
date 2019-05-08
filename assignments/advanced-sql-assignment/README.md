### Advanced SQL Assignment Part A
#### Question 1
Create a table called client with the following columns:
- id - an auto-incrementing integer which is the primary key, size 11
- first_name - a varchar with a maximum length of 255 characters, cannot be null
- last_name - a varchar with a maximum length of 255 characters, cannot be null
- dob - a date type with no default and null not allowed
- The combination of the first_name and last_name must be unique in this table.  Name this constraint as full_name

Create a table called employee with the following columns:
- id - an auto-incrementing integer which is the primary key, size 11
- first_name - a varchar of maximum length 255, cannot be null
- last_name - a varchar of maximum length 255, cannot be null
- dob - a date cannot be null
- date_joined - a date cannot be null
- The combination of the first_name and last_name must be unique in this table. Name this constraint as full_name

Create a table called project with the following columns:
- id - an auto-incrementing integer which is the primary key, size 11
- cid - an integer which is a foreign key reference to the client table
- name - a varchar of maximum length 255, cannot be null
- notes - a text column
- The project name must be unique in this table

Create a table called works_on representing a many-to-many relationship between employees and projects, with the following properties:
- eid - an integer which is a foreign key reference to the employee table
- pid - an integer which is a foreign key reference to the project table
- start_date - a date, not null
- The primary key is a combination of eid and pid

> Answer: [`partA-question1.sql`](./partA-question1.sql)

