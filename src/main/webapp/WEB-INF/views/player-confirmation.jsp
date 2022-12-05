<jsp:useBean id="athlete" scope="request" type="com.example.springmvc.model.Athlete"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Player Confirmation</title>
</head>
<body>

<h2>Player Confirmation</h2>
<hr>

<br><br>
The player has been added.

<br><br>

<b>Name</b> : ${athlete.firstName}
${athlete.lastName}

<br><br>
Country: ${athlete.country}

<br><br>
Handedness: ${athlete.handedness}

<br><br>

Grand Slam Titles:
<ul>
    <c:forEach items="${athlete.grandSlams}" var="title">
        <li>${title}</li>
    </c:forEach>
</ul>

<b>Current Rank</b> : ${athlete.rank}

<b>Last Won</b> : <ftm:formatDate value="${athlete.lastWon}" type="date" pattern="dd-MM-YYYY"/>

<b>Prize Money</b> : ${athlete.prizeMoney}

</body>
</html>
