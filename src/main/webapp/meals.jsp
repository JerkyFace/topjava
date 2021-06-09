<%--
  Created by IntelliJ IDEA.
  User: JerkFace
  Date: 06.06.2021
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html>
<head>
    <title>Meals</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Meals list</h1>
<table border="1">
    <tr>
        <td colspan="5"><a href="meals?action=create">Add new record</a></td>
    </tr>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <td colspan="2"></td>
    </tr>
    <c:forEach items="${mealsList}" var="meal">
        <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
        <tr class="red-${meal.excess}">
            <td>${meal.dateTime.format(DateTimeFormatter.ISO_LOCAL_DATE)}
                &nbsp; ${meal.dateTime.format(DateTimeFormatter.ISO_LOCAL_TIME)}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
            <td>Update</td>
            <td>Delete</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
