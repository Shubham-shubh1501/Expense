<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 22/6/16
  Time: 10:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="ExpenseLayout">
</head>

<body>
<content tag="title">
    <h1>Login</h1>
</content>
<content tag="body">
    <div>
        <g:form  method="Post" controller="Login" action="save" class="table-bordered">
            <div class="form-group ${hasErrors(bean: myUser,field:'email','has-error')}">

                <label for="Email"> Email:</label>
                <g:textField  name="Email" placeholder="Enter Email-id" class="form-control"
                              value="${myUser.email}"/><br>
                <g:renderErrors bean="${myUser}" field="email"/>
            </div>
            <div class="form-group ${hasErrors(bean: myUser,field:'password','has-error')}">
                <label for="password">Password:</label>
                <g:passwordField  name="password" placeholder="Enter Password" class="form-control"
                                  value="${myUser.password}"/><br>
                <g:renderErrors bean="${myUser}" field="password"/>
            </div>
            <div>
                <g:submitButton name="Submit" class="btn btn-inverse btn-block"/>
            </div>
        </g:form>
    </div>
</content>
</body>
</html>