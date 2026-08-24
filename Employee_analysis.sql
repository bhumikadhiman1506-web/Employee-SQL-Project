--Employee Management & Data Analysis
--Section 1: Basic Employee Analysis

--Q1. Display all employees
select * from Employee2;

--Q2. Display employee name,designation and salary
select EmpName,Designation,Salary from Employee2;

--Q3. Find employees whose salary is greater than 50000
select EmpName from Employee2 where Salary>50000;

Q4.  Find employees who work in the IT department
select EmpName from Employee2 e join department d on e.DepartmentID=d.DeptID where d.DeptID="IT";

-- Q5. Display employees in descending order of salary
select EmpName,Salary from Employee2 order by Salary desc;

-- Q6. Find employees with more than 5 years of experience
select EmpName,Experience from Employee2 where Experience>5;

-- Q7. Find employees whose name starts with "A"
select EmpName from Employee2 where EmpName like "A%";

-- Q8. Find employees whose salary is between 40000 and 70000
select EmpName from Employee2 where Salary between 40000 and 60000;

--Section 2: Aggregate Functions

--Q1. Find the average salary of all employees
select avg(Salary) as AverageSalary from Employee2;

--Q2. Find the highest salary
select max(Salary) as HighestSalary from Employee2;

--Q3. Find the lowest salary
select min(Salary) as LowestSalary from Employee2;

--Q4. Count the total number of employees
select count(EmpID) as TotalEmployees from Employee2;

--Q5. Find the total salary paid to all employees
select sum(Salary) as TotalSalary from Employee2;

--Q6. Find the average bonus
select avg(Bonus) as AverageBonus from Employee2;

--Q7. Find the highest performance rating
select max(PerformanceRating) as HighestRating from Employee2;

--Q8. Find the average experience of employees
select avg(Experience) as AverageExperience from Employee2;

--Section 3: Group by + Having
--Q1. Find the number of employees in each department
select d.DeptName,count(e.EmpID) as EmployeeCount from Employee2 e join department d on e.DepartmentID=d.DeptID group by d.DeptName;

--Q2. Find the average salary of each department
select d.DeptName,avg(e.Salary)  as AverageSalary from  Employee2 e join department d on e.DepartmentID=d.DeptID group by d.DeptName;

--Q3. Find the highest salary in each department
select d.DeptName,max(e.Salary) as HighestSalary from Employee2 e join department d on e.DepartmentID=d.DeptID group by d.DeptName;

--Q4. Find the lowest salary in each department
select d.DeptName,min(e.Salary) as LowestSalary from Employee2 e join department d on e.DepartmentID=d.DeptID group by d.DeptName;

--Q5. Find the total salary paid by each department
select d.DeptName,sum(e.Salary) as TotalSalary from Employee2 e join department d on e.DepartmentID=d.DeptID group by d.DeptName;

--Q6. Find departments having more than 3 employees
select d.DeptName,count(e.EmpID) as EmployeeCount from Employee2 e join department d  on e.departmentID=d.DeptID group by d.DeptName having count(e.EmpID)>3;

--Q7. Find departments whose average salary is greater than 50,000
select d.DeptName,avg(e.Salary) as AverageSalary from Employee2 e join department d on e.departmentID=d.DeptID group by d.DeptName having AverageSalary>50000;

--Q8. Find departments whose total salary is greater than 200,000
select d.DeptName,sum(e.Salary) as TotalSalary from Employee2 e join department d on e.departmentId=d.DeptID group by d.DeptName having TotalSalary>200000;

--Section 4: Advanced Join Analysis
--Q1. Display each employee with their department name
select e.EmpName,e.Designation,e.Salary,d.DeptName from Employee2 join department d on e.DepartmentID=d.DeptID;

--Q2. Display employee name, department, location and salary
select e.EmpName,d.DeptName,d.Location,e.Salary from Employee2 e join department d on e.DepartmentID=d.DeptID;

--Q3. Find employees working in the IT department who earn more than 50,000
select e.* from Employee2 e join department d on e.DepartmentID=d.DeptID where d.DeptName ="IT" and e.Salary>50000;

--Q4. Find the highest-paid employee in each department
select e.EmpName from Employee2 e join department d on e.DepartmentID=d.DeptID group by d.DeptName having max(e.Salary);

--Q5. Find the employee with the highest salary in the entire company
select e.EmpName,d.DeptName,e.Salary from Employee2 e join department d on e.DepartmentID=d.DeptID where e.Salary=(select max(e.Salary) from Employee2 e where e.DepartmentID=d.DeptID) ;

--Q6. Display employees whose salary is higher than their department's average salary
select EmpName from Employee2 where Salary=(select max(Salary) from Employee2);

--Q7. Display employees whose salary is lower than their department's average salary
select e.EmpName,e.Salary from Employee2 e where e.Salary>(select avg(d.Salary) from Employee2 d where e.DepartmentID=d.DepartmentID);

--Q8. Find the department with the highest average salary
select d.DeptName,avg(e.Salary) as AvgSal from Employee2 e join department d on e.DepartmentID=d.DeptID group by d.DeptName order by AvgSal desc limit 1;

--Section 5: Employee Performance & Salary Analysis
--Q1. Find employees with a performance rating of 5
select EmpName,PerformanceRating from Employee2 where PerformanceRating=5;

--Q2. Find employees with a salary above the company average
select EmpName,Salary from Employee2 where Salary>(select avg(Salary) from Employee2);

--Q3. Find employees with the highest salary in the company
select EmpName,Salary from Employee2 order by Salary desc limit 3;

--Q4. Find employees who have more than 5 years of experience and earn more than 50,000
select EmpName from Employee2 where Experience>5 and Salary>50000;

--Q5. Find the average salary based on performance rating
select PerformanceRating,avg(Salary) as AvgSal from Employee2 group by PerformanceRating order by PerformanceRating;

--Q6. Find the average salary based on designation
select avg(Salary) as AvgSal from Employee2 group by Designation;

--Q7. Find the average salary of employees with more than 5 years of experience
select avg(Salary) as AvgSal from Employee2 where Experience>5;

--Q8. Find employees whose salary is above the average salary of their designation
select e.EmpName,e.Designation,e.Salary from Employee2 e where e.Salary>(select avg(e2.Salary) from Employee2 e2 where e.Designation=e2.Designation);

