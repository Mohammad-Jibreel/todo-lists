<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    input {
        padding: 10px;
        margin: 5px;
        font-size: 16px;
        font-weight: bold;
        width: 70%;
        height: 40px;
    }
    label {
        display: inline-block;
        margin: 5px 0;
        font-size: 16px;
    }
    button {
        padding: 10px 20px;
        margin: 10px 0;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
    }
</style>
</head>
<body>

<form action="/welcome" method="post">
    <label for="name">Username:</label><br>
    <input type="text" name="name" id="name" /><br>

    <label for="password">Password:</label><br>
    <input type="password" name="password" id="password" /><br>

    <button type="submit" name="submit">Submit</button>
</form>

</body>
</html>
