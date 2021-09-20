<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="index.css"/>
  <title>registration</title>
</head>
<body>
 <div class="container">
        <main class="form-signin">
        <div id="addUser">
<form:form action="registration" method="post" modelAttribute="registrationForm">


  <legend>Pay My Buddy</legend>

  <div class="form-floating">
                  <form:input path="firstName" type="firstName" class="form-control floatingInput" />
                  <label for="floatingInput">First Name</label>
                </div>
                <div class="form-floating">
                  <form:input path="lastName" type="lastName" class="form-control floatingInput" />
                  <label for="floatingInput">Last Name</label>
                </div>
                <div class="form-floating">
                  <form:input path="email" type="email" class="form-control floatingInput" />
                  <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating">
                  <form:input path="password" type="password" class="form-control floatingPassword" />
                  <label for="floatingPassword">Password</label>
                </div>
                <div class="form-floating">
                  <form:input path="confirmPassword" type="password" class="form-control floatingPassword" />
                  <label for="floatingPassword">Confirm Password</label>
                </div>

                <div class="checkbox mb-3">
                  <label>
                    <input type="checkbox" value="remember-me"> Remember me
                  </label>
                </div>
                <form:button class="w-100 btn btn-lg btn-primary" type="submit">Register</form:button>
                <p class="mt-5 mb-3 text-muted"></p>


</form:form>
</div>
</main>
</div>
</body>
</html>