    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <h1>Salary Information</h1>
    <%
        Integer hoursWorked = Integer.parseInt(request.getParameter ("hoursWorked"));
        Double payRate = Double.parseDouble(request.getParameter ("payRate"));
        Double postTaxDeduct = Double.parseDouble(request.getParameter ("postTaxDeduct"));
        Double preTaxDeduct = Double.parseDouble(request.getParameter ("preTaxDeduct"));
        
        Integer regularHours;
        Integer overHours;
        Double overRate;
        Double regPay;
        Double overPay;
        Double grossPay;
        Double taxAmount;
        Double prePay;
        Double tax;
        Double postPay;
        Double netPay;
        
        if (hoursWorked >40){
                        regularHours=40;
                        overHours=hoursWorked-regularHours;
                        overRate= payRate*1.5;
                        regPay=regularHours*payRate;
                        overPay=overHours*overRate;
                        grossPay=regPay+overPay;}
                           else {overHours=0;
                                 overRate=0.00;
                                 grossPay=hoursWorked*payRate;}
                
         if (grossPay <500) {taxAmount=grossPay-preTaxDeduct;
                          tax= taxAmount*0.18;}
                          else {taxAmount=grossPay-preTaxDeduct;
                          tax= taxAmount * 0.22;}
         
         prePay=grossPay-preTaxDeduct;
         
         postPay= taxAmount-tax;
         
         netPay=postPay-postTaxDeduct;
 
    %>    
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%=hoursWorked%></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%=payRate%></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%=overHours%></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td>
                        <%=overRate%></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%=preTaxDeduct%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= prePay%></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= tax%></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postPay%></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%=postTaxDeduct%></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%=netPay%></td>
                </tr> 
            </tbody>
        </table>
    <h2><a href="./index.jsp">Back </h2>
    </body>
</html>

