# 🔍 Missing Value Checker for CSV Files in R

This R script is a utility tool for scanning multiple `.csv` files in a specified folder and identifying columns with missing values (`NA`). It helps ensure data quality and highlights any incomplete data across datasets.

---

## 📁 What It Does

- Scans a **directory of CSV files**
- Reads each file using `readr::read_csv()`
- Counts the number of missing (`NA`) values **per column**
- Outputs a **summary report** listing:
  - Only files **with missing values**
  - The **columns** containing NAs
  - The **number** of NAs per column
- Cleanly reports when **no NAs are found**

---

## 🧪 Example Output

```text
⚠️ NAs found in the following files/columns:

📄 data_2024.csv
ColumnA: 3
ColumnD: 1

📄 sales_2023.csv
Region: 2


## 👤 Author

**Scott Dunn**  
R Programmer | Data Enthusiast 
📫 [LinkedIn]https://www.linkedin.com/in/scott-dunn-a5936b23/
