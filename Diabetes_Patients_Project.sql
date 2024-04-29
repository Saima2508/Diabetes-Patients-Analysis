use diabetes_patients;

-- Total Number of records--
select count(*) from diabetes;

-- Total Number of records with diabetes--
select count(*) from diabetes where outcome = 1;

-- Total Number of records with No diabetes--
select count(*) from diabetes where outcome = 0;

-- Average glucose level of patient having diabetes
select avg(glucose) from diabetes where outcome = 1;

-- Average blood pressure  of patient having diabetes
select avg(bloodpressure) from diabetes where outcome = 1;

-- Average skin thickness of patient having diabetes
select avg(skinthickness) from diabetes where outcome = 1;

-- Average age of patient having diabetes
select avg(age) from diabetes where outcome = 1;
 
-- Average BMI of patient having diabetes
select avg(bmi) from diabetes where outcome = 1;

-- Average Number of pregnancies of patient having diabetes
select avg(pregnancies) from diabetes where outcome = 1;

-- Average diabetespedigreefunction of patient having diabetes
select avg(diabetespedigreefunction) from diabetes where outcome = 1;

-- Total number of patients having more than 4 pregnancies
select count(*) from diabetes where pregnancies >= 4;

-- Total number of pregnancies by age/ bloodpressure/glocose/insulin/bmi/diabetespedigreefunction having diabetes--  
select distinct age, count(pregnancies) over(partition by age) from diabetes  where outcome = 1;

select distinct bloodpressure, count(pregnancies) over(partition by bloodpressure) from diabetes  where outcome = 1;

select distinct glucose, count(pregnancies) over(partition by glucose) from diabetes  where outcome = 1;

select distinct insulin, count(pregnancies) over(partition by insulin) from diabetes  where outcome = 1;

select distinct bmi, count(pregnancies) over(partition by bmi) from diabetes  where outcome = 1;

select distinct diabetespedigreefunction, count(pregnancies) over(partition by diabetespedigreefunction) from diabetes  where outcome = 1;



