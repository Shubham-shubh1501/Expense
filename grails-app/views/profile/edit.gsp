<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 23/6/16
  Time: 1:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="ExpenseLayout">
</head>

<body>
<content tag="title">
    <h1>Edit Profile</h1>
</content>
<content tag="body">
    <div>
        <g:form method="post" controller="profile" action="save" class="table-bordered">
            <input type="hidden" name="id" value="${sendDetails.id}">
            <input type="hidden" name="password" value="${sendDetails.password}">


            <div class="form-group ${hasErrors(bean: myUser,field:'firstName','has-error')}">
                <label for="firstName"> First Name:</label>
                <g:textField name="firstName" placeholder="Enter FirstName" class="form-control"
                             value="${sendDetails.firstName}"/><br>
                <g:renderErrors bean="${myUser}" field="firstName"/>
            </div>
            <div class="form-group ${hasErrors(bean: myUser,field:'lastName','has-error')}">
                <label for="lastName"> Last Name:</label>
                <g:textField  name="lastName" placeholder="Enter LastName" class="form-control"
                              value="${sendDetails.lastName}"/><br>
                <g:renderErrors bean="${myUser}" field="lastName"/>
            </div>
            <div class="form-group ${hasErrors(bean: myUser,field:'email','has-error')}">

                <label for="Email"> Email:</label>
                <g:textField  name="Email" placeholder="Enter Email-id" class="form-control"
                              value="${sendDetails.email}"/><br>
                <g:renderErrors bean="${myUser}" field="email"/>
            </div>
            <div >
                <g:submitButton name="Edit" class="btn btn-primary"/>
            </div>
        </g:form>
    </div>
</content>
</body>
</html>