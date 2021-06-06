<%--
  Created by IntelliJ IDEA.
  User: JerkFace
  Date: 06.06.2021
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meals</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Meals Meals Meals</h1>
    <table border="1">
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
    <c:forEach items="${mealsList}" var="meal">
        <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
        <tr class="red-${meal.excess}">
            <td>${meal.dateTime}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
