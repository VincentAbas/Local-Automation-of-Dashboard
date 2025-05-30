# Local-Automation-of-Dashboard
Using Python, SQL Server(SMSS), Power Bi, and Windows' Task Scheduler to automate dashboard

## Dataset
- The dataset is a sample dataset made by me in SSMS (SQL Server Management Studio). The dataset contains that following features:

  - OrderID - A primary key and auto increment integer value.
  - CustomerName - A customer name
  - Product - Name of the Product.
  - Quantity - Number of Orders by an individual.
  - Price - Price of the product ordered.
  - OrderData - The date of when the order occured.
 
## The Process
- The data - In this project I'm using SQL queries to enter new values but the ideal is that it would come from a real source of data such as an ecommerce        website. It would enter new data as customers submit their order informations.
  
  ![SQL Queries](https://github.com/user-attachments/assets/4587f522-47b0-4d3e-bb98-ee26bd2ab404)

- Extracting the data - I made a python script to connect and extract the data from the database and then it will be exported as a csv file. I've also provided simple data cleaning in the script to make sure nothing is wrong with the values getting inputted.
  
  ![Python Script](https://github.com/user-attachments/assets/41475712-3a19-4c14-9333-f4209b6efaf3)

- Displaying on the Dashboard - I made a simple and informative dashboard that will display Number of products sold, number of products sold each month, and sum of the quantity by each product. It will use the exported csv file as a data source so if it refreshed, it will show the new updated dashboard.

  ![Power Bi](https://github.com/user-attachments/assets/a6a42a73-45aa-496c-9cf9-414a1238c891)

- The loop sequence - I used the **Task Scheduler** of windows to set it in every five minutes (It can be changed). It will run the python script every five minutes therefore replacing the old csv file to keep it updated. Note, I couldve make two copies so that I have a backup so that if something bad happens I will still have a copy of it, but for the sake of this small project I just made the script export one csv file.

  However, Since I am using the unlicensed Power BI I cannot automatically refresh the dashboard, so in this case I have to manually refresh it each time the python script runs.
