<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<form action="/welcome" method="post">
    <label for="name">Username:</label><br>
    <input type="text" name="name" id="name" /><br>

    <label for="password">Password:</label><br>
    <input type="password" name="password" id="password" /><br>

    <button type="submit" name="submit">Submit</button>
</form>
<%@ include file="common/footer.jspf" %>
