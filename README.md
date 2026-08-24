# Employee Management & Data Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing employee and department data using **SQL and SQLite**.

The goal of the project is to practice SQL concepts and answer practical business questions related to employee salaries, departments, performance, experience, and workforce distribution.

## 🛠️ Tools Used

* **SQLite** — Database management system
* **DB Browser for SQLite** — Database creation and query execution
* **SQL** — Data querying and analysis
* **GitHub** — Project version control and documentation

## 🗄️ Database Structure

The project uses two main tables:

### Employee2

Contains employee-related information such as:

* Employee ID
* Employee Name
* Gender
* Department ID
* Designation
* Salary
* Bonus
* Hire Date
* Experience
* City
* Performance Rating
* Age
* Status

### department

Contains department-related information such as:

* Department ID
* Department Name
* Location
* Manager Name
* Employee Name
* Salary

The tables are connected using:

Employee2.DepartmentID → department.DeptID

## 📚 SQL Concepts Practiced

The project demonstrates the following SQL concepts:

* SELECT statements
* WHERE conditions
* ORDER BY
* LIKE
* BETWEEN
* Aggregate functions

  * COUNT()
  * AVG()
  * MAX()
  * MIN()
  * SUM()
* GROUP BY
* HAVING
* INNER JOIN
* Subqueries
* Correlated subqueries
* LIMIT

## 🔍 Analysis Performed

Some of the questions answered in this project include:

* Finding employees based on salary and experience
* Finding the highest and lowest salaries
* Calculating average and total salaries
* Counting employees in each department
* Calculating department-wise average salaries
* Finding the highest-paid employee
* Finding the department with the highest average salary
* Finding employees earning above their department's average salary
* Analyzing employee performance ratings
* Analyzing salary by designation
* Finding the top-paid employees

## 🎯 Key Learning

Through this project, I practiced using SQL to transform raw employee data into meaningful information.

The project helped strengthen my understanding of **filtering, aggregation, grouping, joins, and subqueries**, which are important skills for data analysis.

## 📁 Project Files


Employee-SQL-Project/
│
├── Employee_analysis.sql
└── README.md


