<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 22/6/16
  Time: 7:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="ExpenseLayout">
</head>

<body>
<content tag="title">
    <h1>Show Status</h1>
</content>
<content tag="body">
    You Are Registered...<br>
    First Name:${registeredUser.firstName}<br>
    Last Name:${registeredUser.lastName}<br>
    Email:${registeredUser.email}
</content>
</body>
</html>