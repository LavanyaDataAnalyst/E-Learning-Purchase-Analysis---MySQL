use Elearning_db;

-------- Combining Learner, Course and Purchase data -------------------------------------------------------------------------------

select l.learner_id as ID ,l.full_name as Full_Name,
	   l.country as Country,c.course_name as Course_Name,
       c.category as Category,c.unit_price as Price,
       p.purchase_date as Purchased_Date from learners l
left join purchases p on p.learner_id=l.learner_id
left join courses c on c.course_id=p.course_id;

-------- Learner's Purchase Details -------------------------------------------------------------------------------------------------

select l.learner_id as ID,
	   l.full_name as Student_Name,
       sum(p.quantity) as Total_Courses,
       sum(p.quantity*c.unit_price) as Total_price
from learners l
left join purchases p on p.learner_id=l.learner_id
left join courses c on c.course_id=p.course_id
group by l.learner_id,l.full_name;

--------  Each Learner’s total spending along with their country -----------------------------------------------------------------------

select l.learner_id as ID,l.full_name as Full_Name, 
	   l.country as Country,
       sum(p.quantity*c.unit_price) as Total_cost
from learners l
left join purchases p on p.learner_id=l.learner_id
left join courses c on c.course_id=p.course_id
group by l.learner_id,l.full_name;


-------- Top 3 most purchased courses based on total quantity sold ------------------------------------------------------------------------

select c.course_name as Top_3_Courses,
	   sum(p.quantity) as Total_Quantity_sold
from courses c
left join purchases p on p.course_id=c.course_id
group by c.course_name
order by Total_Quantity_sold desc
limit 3;

-------- Each course category’s total revenue and the number of unique learners who purchased from that category ----------------------------- 

select c.category as Category, 
	   count(distinct p.learner_id) as Number_of_Learners,
       sum(p.quantity *c.unit_price) as Total_Revenue
from courses c
left join purchases p on p.course_id=c.course_id
group by c.category
order by Total_Revenue desc;

--------  Listing all learners who have purchased courses from more than one category ---------------------------------------------------------

SELECT 
    ROW_NUMBER() OVER (ORDER BY l.full_name) AS S_No,
    l.full_name AS Name_of_the_Learner
FROM learners l
JOIN purchases p ON l.learner_id = p.learner_id
JOIN courses c ON c.course_id = p.course_id
GROUP BY l.learner_id, l.full_name
HAVING COUNT(DISTINCT c.category) > 1;

-------- Courses that have not been purchased at all ------------------------------------------------------------------------------------------

select c.course_name as Non_Purchased_Course 
from courses c
left join purchases p on p.course_id=c.course_id
where p.course_id is null;


