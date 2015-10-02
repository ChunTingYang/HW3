<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        String hoursWorked = request.getParameter("hours");
        String payRate = request.getParameter("pay");
        String preTaxDeduct = request.getParameter("pre");
        String postTaxDeduct = request.getParameter("post");

           %>
    <body>
        <h1>Salary Information</h1>
        
        <table>
            <tbody>
                <tr>
                    <td>Hours Worked:</td>
                    <td>><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td>Hourly Pay:</td>
                    <td><%= payRate %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
            </tbody>
            
        </table>
    </body>
</html>
