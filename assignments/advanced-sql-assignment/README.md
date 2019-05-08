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

#### Question 2
Insert the following into the client table:

| First Name	| Last Name	    | DOB |
| ------------- | ------------- | --- |
| Sara          | Smith	        | 1/2/1970 |
| Miguel	    | Cabrera       | 2/2/1988 |
| Bo            | Chang         | 3/2/1985 |
 
Insert the following into the employee table:

| First name    |	Last name   | DOB | Date Joined |
| ------------- | ------------- | ----| --------- |
| Ananya        | Jaiswal       | 1/2/1975 | 1/1/2009 |
| Michael       | Fern          | 10/18/1980 | 6/5/2013 |
| Abdul         |	Rehman	    | 3/21/1984	| 11/10/2013 |
 
Insert the following project instances into the project table (you should use a subquery to set up foreign key references and not hard-coded numbers):

| cid | name | notes |
| ------------- | ------------- | ------------- |
| reference to Sara Smith | Diamond | Should be done by Jan 2019 |
| reference to Bo Chang	| Chan'g | Ongoing maintenance |
| reference to Miguel Cabrera | The Robinson Project | NULL |
 
Insert the following into the works_on table. Again, your queries here should not have hard-coded integers for foreign keys.

| employee | project | start_date |
| ------------- | ------------- | --- |
| Ananya Jaiswal |	Chan'g | 1/1/2012 |
| Michael Fern | The Robinson Project | 8/8/2013 |
| Abdul Rehman | Diamond | 9/11/2014 |

> Answer: [`partA-question2.sql`](./partA-question2.sql)
