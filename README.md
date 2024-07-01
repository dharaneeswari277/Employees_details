# Employee Details Application

This project includes a backend API built with Flask to serve employee data from a MySQL database, and a frontend application built with React to display the data in a table.


### Notes:

- Replace placeholders like `your_username` and `password` with actual values in main.py file located in Backend folder


## Prerequisites

- Python 3.x
- Node.js and npm
- MySQL Server
- MySQL Workbench (optional, for GUI management)
- `flask-cors` library for handling CORS in Flask

## Database Setup

1. **Import the Database:**

   To import the `employee` from the `SalesDatabases.sql` file, use the following steps:

   1. Open your terminal or command prompt.
   2. Navigate to the directory where your `SalesDatabases.sql` file is located.
   3. Run the following command to import the database:

      ```bash
      mysql -u your_username -p < SalesDatabases.sql
      ```

      Replace `your_username` with your MySQL username. You will be prompted to enter your password.

2. **Verify the Import:**

   After the import process is complete, verify that the database has been created by logging into your MySQL server and listing the databases:

   ```bash
   mysql -u your_username -p

   
Backend Setup

Clone the Repository:

git clone https://github.com/dharaneeswari277/Employees_details.git

cd Backend
   
3. Run the Flask Application:
   
python main.py

Frontend Setup

Navigate to the Frontend Directory:

cd Frontend

Install Dependencies:

npm install axios

4. Run the React Application:

npm start


Usage

Visit http://localhost:3000 in your browser to see the employee data displayed in a table.

The backend API is available at http://127.0.0.1:5000/api/employees

  
