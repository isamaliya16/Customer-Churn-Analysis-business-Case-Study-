# **Turning Losses into Loyalty: Analyzing Churn Risk in Subscription-Based Services**
---

## 🌟 Project Overview

Customer churn is one of the **biggest challenges** faced by subscription-based businesses.  
This project focuses on **identifying churn patterns**, **understanding customer behavior**, and **turning churn risks into loyalty opportunities** using **SQL-driven analysis** and **Power BI / Excel visualizations**.

The analysis simulates a **real-world business scenario** where management wants actionable insights to **reduce churn and improve retention**.

---

## 🧠 Business Objective

🎯 The primary objectives of this project are to:

- Identify **high-risk churn customers**
- Understand **key churn drivers**
- Analyze churn across **subscription types, age groups, and engagement levels**
- Provide **data-backed recommendations** for customer retention
- Convert raw data into **actionable business intelligence**

---

## 🧾 Dataset Description

📄 **File Name:** `CustomerSubscriptions.csv`

| Column Name | Description |
|------------|------------|
| 🆔 CustomerID | Unique customer identifier |
| 👤 Name | Customer full name |
| 🎂 Age | Customer age |
| 🚻 Gender | Male / Female / Other |
| 📦 SubscriptionType | Monthly / Quarterly / Yearly |
| 📅 SubscriptionDate | Subscription start date |
| ⏰ LastLoginDate | Most recent login date |
| 🧘 TotalSessions | Total sessions attended |
| ⭐ FeedbackScore | Rating (1–10) |
| 🔁 IsChurned | 1 = Churned, 0 = Active |

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|-----|--------|
| 🐬 **SQL (MySQL / PostgreSQL / SQL Server)** | Data querying & churn analysis |
| 📊 **Power BI / Excel** | Data visualization & dashboard |
| 📁 **CSV** | Data storage & exchange |
| 🧠 **Business Analytics** | Insight generation |
| 📈 **Data Storytelling** | Decision support |

---

---

## 🔍 PART 1 – SQL Analysis

All data analysis is performed using **SQL queries**, focusing on churn behavior and engagement.

### ✅ SQL Tasks Covered

1️⃣ Active vs Churned customers by **SubscriptionType**  
2️⃣ Average **FeedbackScore** by SubscriptionType & Gender  
3️⃣ Low engagement customers (Sessions < 5 & Feedback < 5)  
4️⃣ Inactive users (No login in last **60 days**)  
5️⃣ **Churn Rate** calculation by SubscriptionType  
6️⃣ Top 10 customers with **longest subscriptions**  
7️⃣ **Age Group-wise churn analysis**  

---

## 📊 PART 2 – Power BI Dashboard
<p align="center">
  <img src="images/Dashboard.png" alt="Churn Dashboard" width="850"/>
</p>

An **interactive and modern dashboard** built for business decision-makers.

## 📈 Visual Components Explained

### 📉 Monthly Churn Trend
- Shows **steady increase in churn** over months
- December records the **highest churn count**
- Indicates seasonal or engagement-related churn patterns

### 🍩 Customer Distribution (Churned vs Active)
- ~51% customers churned
- Highlights **critical retention challenge**

### 🚻 Churn by Gender
- Male, Female, and Other categories analyzed
- Helps identify **gender-specific retention strategies**

### ⭐ Feedback Score vs Churn
- Lower feedback scores correlate with **higher churn**
- Strong indicator of **customer dissatisfaction**

---

## 🎛️ Interactive Filters (Slicers)

The dashboard supports dynamic filtering by:
- 📦 **Subscription Type** (Monthly / Quarterly / Yearly)
- 🎂 **Age Group** (18–25, 26–35, etc.)
- 🚻 **Gender**

➡️ Enables **deep-dive analysis** for targeted decision-making.

---

## 🧠 Key Insights & Business Value

✔️ Identifies **early churn warning signs**  
✔️ Highlights **low-engagement customers**  
✔️ Reveals which subscription plans are **less sticky**  
✔️ Supports **targeted retention strategies**  
✔️ Enables **data-driven management decisions**

---
---

## 📦 Final Submission Checklist ✅

| File | Description |
|----|------------|
| 📜 `ChurnAnalysis.sql` | All SQL queries |
| 📊 `ChurnDashboard.pbix` | Interactive dashboard |
| 📝 `Customer Subscription.docx` | Key insights & recommendations |
| 📘 `README.md` | Project documentation |

---

## 🚀 Future Scope & Enhancements

✨ Predictive churn modeling (ML integration)  
✨ Automated alerts for high-risk customers  
✨ Real-time dashboards  
✨ Personalized retention campaigns  
✨ Integration with CRM systems  

---

## 🏁 Conclusion

This project demonstrates how **data analytics transforms churn from a threat into an opportunity**.  
By combining **SQL precision** with **visual storytelling**, businesses can **retain customers, boost loyalty, and increase revenue**.

> 💡 *Data doesn’t just explain churn — it helps prevent it.*

---

## 👨‍💻 Author

**Ayush Isamaliya**  
📊 Junior Data Analyst | Business Intelligence Enthusiast  
🌐 Passionate about SQL, Power BI & Data-Driven Decisions  

---

⭐ *If you find this project useful, don’t forget to star it!*  
