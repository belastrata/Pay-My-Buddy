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
        <title>login</title>
</head>
<body>
<div class="container">

<form class="form-signin" method="post" action="login" name = "f">

        <h2 class="form-signin-heading">Pay My Buddy</h2>
        <p>
                            <label for="username" class="sr-only">Username</label>
                            <input type="text" id="username" name="username" class="form-control" placeholder="Username"
                              required="" autofocus=""/>
                          </p>
                          <p>
                            <label for="password" class="sr-only">Password</label>
                            <input type="password" id="password" name="password" class="form-control" placeholder="Password"
                              required=""/>

                          </p>
                          <p>
                            Remember me ?
                            <input type="checkbox" id="remember-me" name="remember-me" class="checkbox" />

                          </p>

                          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                          </br>

                          <a class="py-2 text-dark text-decoration-none" href="/paymybuddy/register">New Member ?</a>
                        </form>


</div>
</body>
</html>