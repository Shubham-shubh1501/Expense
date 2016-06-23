<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 22/6/16
  Time: 11:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="ExpenseLayout">
</head>

<body>
<content tag="title">
    <h1>Profile</h1>
</content>
<content tag="body">
    <dl>
        <dt>First Name: <dd>${sendDetails.firstName}</dd></dt>
        <dt>Last Name: <dd>${sendDetails.lastName}</dd></dt>
        <dt>Email: <dd>${sendDetails.email}</dd></dt>
    </dl>
    <a href="/profile/edit" class="btn btn-primary">Edit</a>
</content>
</body>
</html>