<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="index.css"/>
  <title>registration</title>
</head>
<body>
<form:form action="registration" method="post" modelAttribute="registrationForm">

<fieldset>
  <legend>REGISTER Pay My Buddy</legend>

  <p>
    <form: input type="firstName" name="firstName" id="firstName" autofocus required maxlength="30" placeholder="firstName"/>
    <label for="floatingInput">First Name</label>
  </p>

  <p>
    <form: input type="lastName" name="lastName" id="lastName" autofocus required maxlength="30" placeholder="lastName"/>
    <label for="floatingInput">Last Name</label>
  </p>

  <p>
    <form: input type="email" name="email" id="email" autofocus required maxlength="30" placeholder="Email"/>
    <label for="floatingInput">Email address</label>
  </p>

  <p>
    <form: input type="password" autofocus required maxlength="16" placeholder="password"/>
    <label for="floatingPassword">Password</label>
  </p>

  <p>
    <form: input type="confirmPassword" autofocus required maxlength="16" placeholder="confirmPassword"/>
    <label for="floatingPassword">Confirm Password</label>
  </p>

  <label>
  <input type="submit" value="REGISTER"/>
  </label>

  <form:button class="w-100 btn btn-lg btn-primary" type="submit">Register</form:button>
                <p class="mt-5 mb-3 text-muted"></p>

</fieldset>
</form:form>
</body>
</html>