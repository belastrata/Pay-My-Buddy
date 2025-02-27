<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html lang="en">
<head>
     <title>accueil</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
            <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/pricing/">
            <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
            <link href="index2.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <div class="container-fluid">
    <a class="navbar-brand" href="">Pay My Buddy</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="addconnection">Connection</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register">Inscription</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="" tabindex="-1" aria-disabled="true">Accueil</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>



<div class="container">
    <div class="row">
 <div class="col-lg-offset-8 col-lg-4">
 <h1>Bienvenue sur Pay My Buddy</h1>
       </div>
    </div>

<div class="box">

            <div class="selected"><a href="connection"><button class="btn btn-lg btn-primary btn-block">add a connection</button></a></div>

          </div>


          <div class="flex">

            </br>
            <h4> Send money
            </h4>

            <div>
              <form:form action="transfer" method="post" class="needs-validation" modelAttribute="transferForm">
                <div class="row g-3">
                  <div class="col-md-5">
                    <label for="connection" class="form-label"></label>
                    <form:select path="to" class="form-select" id="connection" required="true">
                      <option value="">Select a connection</option>
                      <c:forEach items="${connections}" var="connection">
                        <option value="${connection}"> ${connection} </option>
                      </c:forEach>
                      </form:select>
                      <div class="invalid-feedback">
                        Please select a valid connection.
                      </div>
                  </div>

                  <div class="col-md-4">
                    <label for="amount" class="form-label"></label>
                    <form:input path="amount" type="number" step="0.01" class="form-control floatingInput" />
                    <div class="invalid-feedback">
                      Please provide a valid amount.
                    </div>
                  </div>

                  <div class="col-md-3">
                    </br>
                    <form:button class="btn btn-primary btn-lg btn-block" type="submit"> Pay </form:button>

                  </div>
                </div>

              </form:form>

              <main>
                </br>
                <h2 class="display-6 text-left mb-4">My transactions</h2>

                <div class="table-responsive">
                  <table class="table text-center">
                    <thead>
                      <tr >
                        <th>Connection</th>
                        <th>Connection Name</th>
                        <th>Amount</th>
                      </tr>
                    </thead>
                    <tbody>
                         <c:forEach items="${transfers}" var="transfer">
                         <tr>
                         <td>${transfer.to.email} </td>
                         <td> ${transfer.to.firstName} ${transfer.to.lastName}</td>
                         <td> ${transfer.amountBeforeFee} €</td>
                         </tr>
                          </c:forEach>
                    </tbody>
                  </table>
                </div>
              </main>

              <footer class="pt-4 my-md-5 pt-md-5 border-top">

              </footer>
            </div>
          </div>
        </div>




    <div class="row">
     <div class="col-lg-offset-5 col-lg-7">
     <h2>Transferer votre argent</h2>
     </div>
    <div class="row">
            <div class="col-lg-offset-6 col-lg-4">
            <img src="man-smiles2.png">
            </div>

                </div>

        </div>
</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


  </body>
</body>
</html>