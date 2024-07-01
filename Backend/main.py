from flask import Flask, jsonify
from flask_cors import CORS

import mysql.connector

app = Flask(__name__)
CORS(app)

# MySQL connection configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '******', # Enter MqSQL password
    'database': 'employee'
}

# Function to fetch employee data from MySQL
def get_employee_data():
    try:
        # Connect to MySQL database
        con = mysql.connector.connect(**db_config)
        cur = con.cursor()

        # SQL query to fetch employee data with joins
        query = """
        SELECT e.employeeNumber, e.lastName, e.firstName, e.extension, e.email, e.officeCode, e.jobTitle, 
               e.city, e.phone, e.reportsTo, r.lastName AS reportToLastName, r.firstName AS reportToFirstName
        FROM employees e
        LEFT JOIN employees r ON e.reportsTo = r.employeeNumber
        """
        cur.execute(query)
        rows = cur.fetchall()

        # Convert query results into a list of dictionaries
        employees = []
        for row in rows:
            employee = {
                "employeeNumber": row[0],
                "lastName": row[1],
                "firstName": row[2],
                "extension": row[3],
                "email": row[4],
                "officeCode": row[5],
                "jobTitle": row[6],
                "city": row[7],
                "phone": row[8],
                "reportsTo": row[9],
                "reportToLastName": row[10],
                "reportToFirstName": row[11]
            }
            employees.append(employee)

        # Close cursor and connection
        cur.close()
        con.close()

        return {"data": employees}

    except mysql.connector.Error as err:
        print(f"Error retrieving data from MySQL: {err}")
        return {"error": "Failed to fetch data"}, 500

# Route to handle GET requests for employee data
@app.route('/api/employees', methods=['GET'])
def get_employees():
    employee_data = get_employee_data()
    return jsonify(employee_data)

if __name__ == '__main__':
    app.run(debug=True)
