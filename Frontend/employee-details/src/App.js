import React, { useEffect, useState } from 'react';
import axios from 'axios';
import './App.css';

const App = () => {
    const [employees, setEmployees] = useState([]);

    useEffect(() => {
        axios.get('http://127.0.0.1:5000/api/employees')
            .then(response => {
                setEmployees(response.data.data);
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    }, []);

    return (
        <div>
            <h1 style={{textAlign:'center'}}>Employees Data</h1>
            <table>
                <thead>
                    <tr>
                        <th>Employee Number</th>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Extension</th>
                        <th>Email</th>
                        <th>Office Code</th>
                        <th>Job Title</th>
                        <th>City</th>
                        <th>Phone</th>
                        <th>Reports To</th>
                        <th>Report To Last Name</th>
                        <th>Report To First Name</th>
                    </tr>
                </thead>
                <tbody>
                    {employees.map(employee => (
                        <tr key={employee.employeeNumber}>
                            <td>{employee.employeeNumber}</td>
                            <td>{employee.lastName}</td>
                            <td>{employee.firstName}</td>
                            <td>{employee.extension}</td>
                            <td>{employee.email}</td>
                            <td>{employee.officeCode}</td>
                            <td>{employee.jobTitle}</td>
                            <td>{employee.city}</td>
                            <td>{employee.phone}</td>
                            <td>{employee.reportsTo}</td>
                            <td>{employee.reportToLastName}</td>
                            <td>{employee.reportToFirstName}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default App;
