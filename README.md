# 📊E-Learning Purchase Analysis 

# 📊 Social Media Platform Database Design and Analysis
## ℹ️ Description:
* Analyzed learner purchase behavior and course performance on an e-learning platform using MySQL. 
* Generated insights on spending patterns, course popularity, revenue trends, and customer segmentation.

## 📖 Table of Contents:
>* Project Overview
>* Database Description
>* Database Schema
>* Tools and Technologies
>* Key Insights
>* Recommendations
>* How to Use

## 📘Project Overview:
* This project uses SQL queries to examine learner transactions, identify top-performing courses, and evaluate category-wise revenue.
* The analysis helps uncover business insights to improve course offerings and learner engagement.

## 📂 Data Source:
* The database represents an online learning platform where learners purchase digital courses.

It stores information about:

>* **Learners** – including learner names and countries
>* **Courses** – including course names, categories, and pricing
>* **Purchases** – including quantities purchased and purchase dates

## 🏗 Database Schema:

🧑‍🎓**Learners** - Stores learner details

>* Learner_ID – Unique learner identifier
>* Full_Name – Learner name
>* Country – Learner country

📚**Courses** - Stores course details

>* Course_ID – Unique course identifier
>* Course_Name – Name of the course
>* Category – Course category
>* Unit_Price – Price of the course

🛒**Purchases** - Stores transaction details

>* Purchase_ID – Unique purchase identifier
>* Learner_ID – References learner
>* Course_ID – References course
>* Quantity – Number of courses purchased
>* Purchase_Date – Date of purchase

**The relationships are:**

>* Learners → Purchases through Learner_ID
>* Courses → Purchases through Course_ID

This schema supports efficient multi-table joins for sales and learner analysis.

## 🛠 Tools & Technologies:

The following tools were used in this project:

**MySQL**
>* Database creation
>* Query writing
>* Data analysis

**SQL concepts implemented:**

`INNER JOIN`

`LEFT JOIN`

`GROUP BY`

`ORDER BY`

`WHERE`

`HAVING`

`SUM()`

`COUNT()`

`DISTINCT`

`ROW_NUMBER()`

`Purchase_Date Filtering`
  
## 🔍 Key Insights

* Revenue varies significantly across categories, indicating demand differences 
* Some learners make multiple purchases, showing repeat customer behavior 
* A few courses contribute to majority of total sales (top 3 courses) 
* Learners from different countries show diverse purchasing patterns 
* Certain courses have no purchases, highlighting potential improvement areas 
* Learners purchasing from multiple categories indicate broader learning interest


## 💡Recommendations

Based on the analysis, the following improvements can be suggested:

* Focus marketing efforts on high-performing categories to maximize revenue 
* Promote low-performing or non-purchased courses through discounts or bundling 
* Target repeat learners with personalized recommendations 
* Introduce cross-category course bundles to increase engagement 
* Analyze country-wise trends to localize content and pricing strategies

  
## ▶️ How to Use

- Create the **Learners**, **Courses**, and **Purchases** tables in MySQL  
- Insert sample learner, course, and purchase data into the tables  
- Run the SQL queries to analyze spending patterns, top courses, and revenue trends  
- Review the query results to understand learner behavior and course performance  
- Use the insights to improve course offerings, marketing strategies, and customer retention  
  
## 👩‍💻 Author
 > Lavanya Madhan Raj

