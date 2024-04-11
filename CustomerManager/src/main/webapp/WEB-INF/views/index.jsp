<%-- 
    Document   : index
    Created on : Apr 10, 2024, 8:58:59 PM
    Author     : d
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CUSTOMER-MANAGER</title>
    </head>
    <body>
        <h1 align="center">Spring MVC Hibernate Customer-Manager CRUD App</h1>
        <p>${message}</p>
        <hr>
        <div align="center">
            <h2>Customer Manager</h2>
            <form action="search" method="get">
                <input type="text" name="keyword"/>
                <input type="submit" name="search"/>
            </form>
            <h3><a href="new">New Customer</a></h3>
            <table border="1" cellPadding="5">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${customers}" var="customer">
                    <tr>
                        <td>${customer.id}</td>
                        <td>${customer.name}</td>
                        <td>${customer.email}</td>
                        <td>${customer.address}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
