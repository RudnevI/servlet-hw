<%@ page import="com.example.servlet_project.entity.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Query Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">


</head>
<body>
    <div class="container-fluid">
        <form method="get">
            <div class="mb-3">
                <label class="form-label">ИИН: </label>
                <input type="text" class="form-control" placeholder="000000000000" name="iin" required>
                <button type="submit">SEND</button>
            </div>
        </form>
    </div>
        <%
            User user = (User) request.getSession().getAttribute("user");
            if(user != null) {
        %>
    <div class="container-fluid">
        <table class="table table-striped">
            <thead>
            <th>id</th>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Страна</th>
            <th>Город</th>
            <th>ИИН</th>
            </thead>
            <tbody>
            <tr>
                <td><%=user.getId()%></td>
                <td><%=user.getName()%></td>
                <td><%=user.getSurname()%></td>
                <td><%=user.getCountry()%></td>
                <td><%=user.getCity()%></td>
                <td><%=user.getIin()%></td>
            </tr>
            </tbody>
        </table>


    </div>
    <%
        }
    %>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</html>