create database clinic;
use clinic;

-- 2. Total patients kitne hain?
select count(*) as total_patient from df;

-- 3. Sirf PatientName aur Age dikhao
select patientname,age from df;

-- 4. Unique departments dekho
select distinct department from df;

-- 5. Unique doctors dekho
select distinct doctor from df;

-- 7. Unique appointment statuses
select distinct status from df;

-- 8. Patients ki average age
select avg(age) as avg_age from df;

-- 9. Maximum age
select max(age) from df;

-- 10. Minimum age
select min(age) from df;

-- 11. Cardiology ke patients
select * from df where department = 'cardiology';

-- 12. Age 60 se zyada patients
select * from df where age > 60;

-- 13. Female patients
select * from df where gender ='female';

-- 14. Insured patients
select * from df where insurancestatus ='insured';

-- 15. Completed appointments
select * from df where status = 'completed';

-- 16. Cancelled appointments
select * from df where status ='cancelled';

-- 18. Fee ₹1000 se zyada
select * from df where fee > 1000;

-- 19. Age 18 se 60 ke beech
select * from df where age between 18 and 60 ;

-- 20. Cardiology ke insured patients
select * from df where department ='cardiology' and insurancestatus ='insured';

-- 21. Department-wise patient count
select department,count(patientid) as total_patient from df group by department order by total_patient desc;

-- 22. Doctor-wise patient count
select doctor,count(patientid) as total_patient from df group by doctor order by total_patient desc;

-- 23. Gender-wise patient count
select gender ,count(patientid) as total_patient from df group by gender order by total_patient desc;

-- 24. Insurance-wise patient count
select insurancestatus,count(patientid) as total_patient from df group by insurancestatus order by total_patient desc;

-- 25. Status-wise patient count
select status ,count(patientid) as total_patient from df group by status order by total_patient desc;

-- 26. Department + Status-wise patient count
select department,status,count(patientid)as total_patient from df group by department,status order by total_patient desc;

-- 27. Department + Insurance-wise patient count
select department ,insurancestatus,count(*) as total_patient from df group by department,insurancestatus
order by total_patient desc;

-- 28. Total revenue
select sum(fee) as total_revenue from df;

-- 29. Average fee
select avg(fee) as avg_fee from df;

-- 30. Department-wise total revenue
select department,sum(fee) as total_revenue from df group by department order by total_revenue desc;

-- 31. Department-wise average fee
select department,avg(fee) as avg_fee from df group by department order by avg_fee desc;

-- 32. Doctor-wise total revenue
select doctor,sum(fee) as total_revenue from df group by doctor order by total_revenue desc;

-- 33. Doctor-wise average fee
select doctor,avg(fee) as avg_fee from df group by doctor order by avg_fee desc;

-- 34. Insurance-wise total revenue
select insurancestatus ,sum(fee) as total_revenue from df group by insurancestatus order by total_revenue desc;

-- 35. Status-wise total revenue
select status ,sum(fee) as total_revenue from df group by status order by total_revenue desc;

-- 36. Kaunse departments me 50 se zyada patients hain?
select department,count(*) as total_patient from df group by department having total_patient > 50;

-- 37. Kaunse doctors ne 40 se zyada patients dekhe?
select doctor,count(*) as total_patient from df group by doctor having total_patient > 40;

-- 38. Kaunse departments ki total revenue ₹50,000 se zyada hai?
select department,sum(fee) as total_fee from df group by department having total_fee > 50000;

-- 39. Kaunse departments ki average fee ₹1000 se zyada hai?
select department,avg(fee) as avg_fee from df group by department having avg_fee > 1000;

-- 40. Top 5 highest fee patients
select patientname,department,fee from df order by fee desc limit 5;

-- 41. Lowest 5 fee patients
select patientname,department,fee from df order by fee limit 5;

-- 42. Highest revenue department
select department,sum(fee) as revenue from df group by department order by revenue desc limit 1;

-- 43. Sabse zyada patients wala doctor
select doctor ,count(*) as patient from df group by doctor order by count(*) desc limit 1;

-- 44. Highest average fee wala department
select department,avg(fee) as avg_fee from df group by department order by avg_fee desc limit 1;

-- 45. Age group banao
select patientname,age, case when age < 18 then 'teen' when age between 18 and 30 then 'adult'
else 'elder' end as age_group from df ;

-- 46. Fee category banao
select patientname,age,fee, case when fee < 700 then 'low'
when fee between 700 and 1200 then 'medium'
else 'high' end as fee_category from df;

-- 47. Completed / Cancelled / No-Show ko readable category me lao
select patientname,age,fee,status, case when status ='completed' then 'successful'
when status = 'cancelled' then 'cancelled'
else 'missed' end as status_category
from df;

-- 48. Cancellation rate nikalo
select count(case when status = 'cancelled' then 1 end ) * 100 / count(*) as cancellation_rate from df;

-- 49. Completion rate
select count(case when status = 'completed' then 1 end) * 100/count(*) as compleion_rate from df;

-- 50. No-show rate
select count(case when status ='no-show' then 1 end) * 100/count(*) as no_show_rate from df;

-- 51. Department-wise completion rate
select department, count(case when status ='completed' then 1 end) * 100/count(*) as completion_rate
from df group by department order by completion_rate desc;

-- 52. Department-wise cancellation rate
select department,count(case when status ='cancelled' then 1 end) * 100/ count(*) as cancellation_rate
from df group by department order by cancellation_rate;

-- 53. Doctor-wise average waiting time
select doctor ,avg(waittime_min)as avg_wait from df group by doctor order by avg_wait;

-- 54. Department-wise average waiting time
select department,avg(waittime_min) as avg_wait from df group by department order by avg_wait desc;

-- 55. Kis department me sabse zyada waiting time hai?
select department,avg(waittime_min) as avg_wait from df group by department order by avg_wait desc limit 1;

-- 56. Department + Insurance + Status ka complete analysis
select department,insurancestatus,status, count(*) as patients,
sum(fee) as total_revenue, avg(fee) as avg_fee,
avg(waittime_min) as avg_wait from df group by department,insurancestatus,status order by total_revenue desc;

-- 57. Har department ka total patients, revenue aur average fee
select department,count(*) as total_patient,sum(fee) as total_revenue,avg(fee) as avg_fee from df group by department;

-- 58. Insured vs Not Insured average fee
select insurancestatus,avg(fee) as avg_fee from df group by insurancestatus;

-- 59. Insured patients ki total revenue
select insurancestatus,sum(fee) as total_revenue from df where insurancestatus ='insured';

-- 60. Not Insured patients ki total revenue
select insurancestatus,sum(fee) as total_revenue from df where insurancestatus ='not insured';

-- 61. Highest fee patient ka naam
select patientname,fee from df order by fee desc limit 1;

-- 62. Average age by department
select department, avg(age) from df group by department ;

-- 63. 50+ age patients by department
select department,count(*) as patient from df where age >= 50 group by department
order by patient;

-- 64. Completed appointments ki average fee
select status,avg(fee) as avg_fee from df where status = 'completed';

-- 65. Cancelled appointments ki average fee
select status,avg(fee) as avg_fee from df where status = 'cancelled';

-- 66. No-show appointments ki average fee
select status,avg(fee) from df where status = 'no-show';

-- 67. Sabse zyada revenue kis doctor ne generate ki?
select doctor,sum(fee) as total_revenue from df group by doctor order by total_revenue desc limit 1;

-- 68. Sabse zyada cancelled appointments kis doctor ke hain?
select status,doctor,count(*) from df where status ='cancelled' group by doctor order by count(*) desc limit 1;

-- 69. Sabse zyada no-show appointments kis department me hain?
select status,department,count(*) from df where status = 'no-show' group by department order by count(*) desc limit 1;

-- 70. Clinic ka overall performance report
select count(*) as total_patients,
sum(fee) as total_revenue,
avg(fee) as avg_fee,
avg(age) as avg_age,
avg(waittime_min) as avg_wait,
count(case when status = 'completed' then 1 else 0 end) as completed,
count(case when status ='cancelled' then 1 else 0 end) as cancelled,
count(case when status = 'no-show' then 1 else 0 end) as no_show from df;
