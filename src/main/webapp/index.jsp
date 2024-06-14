<%@ page import="com.tictactoe.Sign" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tic-Tac-Toe</title>
    <link href="static/main.css" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="<c:url value="/static/jquery-3.6.0.min.js"/>"></script>
    <script>
        function redirect(index) {
            window.location = '/logic?click=' + index
        }

        function restart() {
            $.ajax({
                url: '/restart',
                type: 'POST',
                contentType: 'application/json;charset=UTF-8',
                async: false,
                success: function () {
                    location.reload();
                }
            });
        }
    </script>
</head>
<body>
<h1>Tic-Tac-Toe</h1>

<table>
    <tr>
        <td onclick="redirect(0)">${data.get(0).getSign()}</td>
        <td onclick="redirect(1)">${data.get(1).getSign()}</td>
        <td onclick="redirect(2)">${data.get(2).getSign()}</td>
    </tr>
    <tr>
        <td onclick="redirect(3)">${data.get(3).getSign()}</td>
        <td onclick="redirect(4)">${data.get(4).getSign()}</td>
        <td onclick="redirect(5)">${data.get(5).getSign()}</td>
    </tr>
    <tr>
        <td onclick="redirect(6)">${data.get(6).getSign()}</td>
        <td onclick="redirect(7)">${data.get(7).getSign()}</td>
        <td onclick="redirect(8)">${data.get(8).getSign()}</td>
    </tr>
</table>
<hr>
<c:set var="CROSSES" value="${Sign.CROSS}"/>
<c:set var="NOUGHTS" value="${Sign.NOUGHT}"/>

<c:if test="${winner == CROSSES}">
    <h1>CROSSES WIN!</h1>
    <button onclick="restart()">Start again</button>
</c:if>
<c:if test="${winner == NOUGHTS}">
    <h1>NOUGHTS WIN!</h1>
    <button onclick="restart()">Start again</button>
</c:if>
<c:if test="${draw}">
    <h1>IT'S A DRAW</h1>
    <br>
    <button onclick="restart()">Start again</button>
</c:if>
</body>
</html>