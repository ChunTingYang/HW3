<%-- 
    Document   : index
    Created on : Oct 1, 2015, 8:38:15 PM
    Author     : Chun-Ting Yang
--%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample Salary Calculator</title>
    </head>
    
    <%
        
        Date today = new Date ();
        
        SimpleDateFormat dateFormat= new SimpleDateFormat ("dd-MM-yyyy");
        String ddMMyyyyToday = dateFormat.format(today);
        
        SimpleDateFormat dateFormatUS= new SimpleDateFormat ("dd/MM/yyyy");
        String ddMMyyyyTodayUS = dateFormatUS.format(today);
        
    %>
    
    <body>
        <h1>Hello World!</h1>
        <p> Today is: <%= today %>
        <p> Today is: <%= ddMMyyyyToday %>
        <p> Today is: <%= ddMMyyyyTodayUS %>
        <p> Hours Worked:</p>
        <p> Hourly Pay:</p>
        <p> Pre-tax Deduct:</p>
        <p> Post-tax Deduct:</p>
    </body>
</html>
