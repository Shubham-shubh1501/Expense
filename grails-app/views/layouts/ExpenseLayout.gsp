<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 22/6/16
  Time: 5:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <style>
    .container-fluid {
        padding-left: 0px;
        padding-right: 0px;
    }
    .navbar-inverse .navbar-nav>.active>a{
        background-color: sandybrown;
    }
    </style>
</head>

<body>
<div class="container-fluid">
    <nav class="navbar navbar-inverse">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header ">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Expense</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

        <g:if test="${!session.loggedInUserID}">
            <ul class="nav navbar-nav navbar-right">
                <li class="${controllerName.equals("Register")?'active':''}"><a href="/Register/index/">Register</a></li>
                <li class="${controllerName.equals("Login")?'active':''}"><a href="/Login/index/">Login</a></li>
            </ul>
        </g:if>

        <g:if test="${session.loggedInUserID}">
            <ul class="nav navbar-nav navbar-right">
                <li class="${controllerName.equals("Profile")?'active':''}"><a href="/Profile/index/">Profile</a></li>
                <li class="${controllerName.equals("Logout")?'active':''}"><a href="/Logout/index/">Logout</a></li>
            </ul>
        </g:if>
        </div><!-- /.navbar-collapse -->
    </nav>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12  table-bordered">

            <div class="page-header" >
                <g:pageProperty name="page.title"/>
            </div>
            <div>
                <g:pageProperty name="page.body"/>
            </div>
        </div>
    </div>
</div>

</body>
</html>