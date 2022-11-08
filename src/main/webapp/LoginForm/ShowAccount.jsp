<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/2/2022
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>
  <a type="button" class="btn btn-success" href="/createProduct.jsp">Create</a>
  <table class="table table-striped">
    <thead>
    <tr>
      <th>id</th>
      <th>username</th>
      <th>password</th>
      <th>name</th>
      <th>age</th>
      <th>gender</th>
      <th>phoneNumber</th>
      <th>address</th>
      <th>img</th>
      <th>role</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${taikhoans}" var="tk">
      <tr>
        <td>${tk.id}</td>
        <td>${tk.username}</td>
        <td>${tk.password}</td>
        <td>${tk.name}</td>
        <td>${tk.age}</td>
        <td>${tk.gender}</td>
        <td>${tk.phonenumber}</td>
        <td>${tk.address}</td>
        <td><img src="${tk.img}" height="200" width="250"></td>
        <td>${tk.id_role}</td>
        <td><a type="button" class="btn btn-warning" href="/edit?id=${tk.id}" >Edit</a></td>
        <td><button type="button" class="btn btn-danger">Danger</button></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>