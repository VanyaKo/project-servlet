<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tic-Tac-Toe</title>
    <link href="static/main.css" rel="stylesheet">
    <script>
        function redirect(index) {
            window.location='/logic?click=' + index
        }
    </script>
</head>
<body>
<h1>Tic-Tac-Toe</h1>

<table>
    <tr>
        <td onclick="redirect(0)">0</td>
        <td onclick="redirect(1)">1</td>
        <td onclick="redirect(2)">2</td>
    </tr>
    <tr>
        <td onclick="redirect(3)">3</td>
        <td onclick="redirect(4)">4</td>
        <td onclick="redirect(5)">5</td>
    </tr>
    <tr>
        <td onclick="redirect(6)">6</td>
        <td onclick="redirect(7)">7</td>
        <td onclick="redirect(8)">8</td>
    </tr>
</table>

<script>

</script>

</body>
</html>