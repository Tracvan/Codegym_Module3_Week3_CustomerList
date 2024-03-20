<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" href="asset/css/bootstrap.css">
</head>
<body>
<h1>Customer List</h1>
<table class="table">
    <thead>
<tr>
<th scope="col">Name</th>
<th scope="col">Birth</th>
<th scope="col">Address</th>
<th scope="col">Image</th>
</tr>
<%--<%--%>
<%--    List<Customer> customerList = (List<Customer>) request.getAttribute("customerList");--%>
<%--%>--%>


<%--    <%for (Customer customer : customerList)--%>
<%--    {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--    <td><%=customer.getName()%></td>--%>
<%--    <td><%=customer.getBirth()%></td>--%>
<%--    <td><%=customer.getAddress()%></td>--%>
<%--    <td><%=customer.getImage()%></td>--%>
<%--    </tr>--%>
<%--    <%}%>--%>

    <c:forEach items="${customerList}" var="cus">
    <tr>
        <td>${cus.name}</td>
        <td>${cus.birth}</td>
        <td>${cus.address}</td>
        <td>${cus.image}</td>
    </tr>
</c:forEach>

</table>
</body>
</html>
