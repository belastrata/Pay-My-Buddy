<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="index.css"/>
        <title>Connexion Pay My Buddy</title>
</head>
<body>
<form method="post" action="traitement.php">

    <fieldset>
        <legend>Pay My Buddy</legend> <!--titre de fieldset-->

        <p>


            <input type="email" name="email" id="email" autofocus required maxlength="30" placeholder="Email"/>


        </p>

        <p>

            <input type="password" autofocus required maxlength="16" placeholder="password"/>

        </p>

        <input type="submit" value="Login"/>

        <p>

            <input type="checkbox"/> Remember me



        </p>

        <p>
            <a href="Register.html">New member ?</a>
        </p>

    </fieldset>
</body>
</html>