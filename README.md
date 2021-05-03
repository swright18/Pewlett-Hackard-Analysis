# Pewlett-Hackard Analysis 
### Overview of Analysis 
The purpose of this analysis is to determine the number of retiring employees by title and to identify which employees are eligible to participate in a mentorship program. This analysis  will show the titles of all employees born between January, 1 1952 and December, 31 1955. First we created a query that retrieved the emp_no, first_name and last_name columns from the employees table and retrieved the title, from_date and to_date columns of the titles table in our pewlett-hackard query. We joined both of these table on the primary key, filtered the data by birth_date and put the information into a new table. A unique_titles table was created to find the first occurrence of the emp_no in our new table by using the DISTINCT ON function and for the last part of the deliverable we did ORDER BY COUNT to show us the total number of each title from our unique_titles table that we created. Then, a query was created that retrieved columns from the employees and dept_emp table, filtered data on current employees born in 1965 then ordered the table by emp_no. This was completed to find the Mentorship Eligibility for these employees. 
### Results
 - First, after running the first part of the analysis, it was determined that over 90,000 employees are at the age of retirement. 
 - Second, there are 7 distinct titles that the employees hold that are retirement eligible. 
 - Third, of the over 90,000 employees at the age of retirement, 64% of them currently hold Senior positions at the company. 
 
 
 ![1](https://user-images.githubusercontent.com/79758494/116835851-e07ba180-ab89-11eb-9d03-95513ddcd4fc.PNG)
 
 - Fourth, when a query was created to find Mentorship Eligibility, there are 1,549 employees that are eligible in the mentorship program. 
 
![Capture](https://user-images.githubusercontent.com/79758494/116835852-e1143800-ab89-11eb-9ef3-ed6af1d04b0a.PNG)


### Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
	- Over 90,000 employees are within retirement age, that is almost 64% of employees that could be retiring within the next decade whose roles and responsibilities within the company will need to be filled. 
-   Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
	- There are not currently enough qualified retirement ready employees in the department to mentor the next generation of employees. With there being over 90,000 retirement-ready employees, there are only 1,549 employees eligible for the Mentorship program. 