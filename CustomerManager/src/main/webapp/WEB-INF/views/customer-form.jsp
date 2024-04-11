<%-- 
    Document   : customer-form
    Created on : Apr 11, 2024, 9:29:36 AM
    Author     : d
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <h1>Add New Customer</h1>
            <form:form action="save" method="post" modelAttribute="customer">
                <table>
                    <tr>
                        <td>name: </td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>email: </td>
                        <td><input type="email" name="email"></td>
                    </tr>
                    <tr>
                        <td>address: </td>
                        <td><input type="text" name="address"></td>
                    </tr>
                    <tr align="center"><td colspan="2"><input type="submit" value="save"></tr>
                </table>
            </form:form>
        </div>
    </body>
</html>
