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
    <div>
        <g:form controller="Profile" action="edit" class="table-bordered">
            <div class="form-group">

                <label for="firstName"> Email:</label>
                <g:textField  name="firstName"  class="form-control"
                              /><br>

            </div>
            <div class="form-group ">
                <label for="lastName">Last Name:</label>
                <g:textField  name="lastName"  class="form-control"
                              /><br>
            </div>
            <div>
                <g:submitButton name="Submit" class="btn btn-inverse btn-block"/>
            </div>
        </g:form>
    </div>
</content>
</body>
</html>