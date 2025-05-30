import pyodbc
import pandas as pd

#connection to sql server (SMSS) using odbc driver
conn = pyodbc.connect(
    "DRIVER={ODBC Driver 18 for SQL Server};"
    "SERVER=localhost\\SQLEXPRESS;"
    "DATABASE=SalesData;"
    "Trusted_Connection=yes;"
    "Encrypt=no;"
)


query = "SELECT * FROM Sales"
df = pd.read_sql(query, conn)

#Data Cleaning to ensure no wrong info is going to the dashboard

df.drop_duplicates(inplace=True)
df.dropna(subset=['Price'], inplace=True)
df['Price'] = pd.to_numeric(df['Price'], errors = 'coerce')
df['Product'] = df['Product'].str.strip().str.title()

# export to csv
df.to_csv("C:/Users/admin/Documents/Python Projects/CSV output/sales_data.csv", index=False)

print("Data exported successfully.")
