<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
</head>
<body>
    <h2>You Have Request To reset your Passowrd </h2>
    <hr>
    <p>We wll send you unique link  to reset your Password</p>

    <h3><a href="http:/127.0.0.1.3000/api/user/reset/{{$token}}">
        Click here to password reset
    </a></h3>
</body>
</html>