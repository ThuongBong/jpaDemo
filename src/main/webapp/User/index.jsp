<%@ page import="com.example.jpademo.entity.UserEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jpademo.dao.UserDAO" %>
<%@ page import="com.example.jpademo.dao.UserDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List User</title>
</head>
<body>
<%
    UserDAO userDao = new UserDAO();
    List<UserEntity> userList;

    String name = request.getParameter("name");
    if (name != null) {
        userList = userDao.searchUsersByName(name);
    } else {
        userList = userDao.getAllUsers();
    }
%>
<h1>Danh sách người dùng:</h1>
<br>
<h3><a href="create.jsp">create</a></h3>
<form method="get" action="">
    <label for="name">Tên:</label>
    <input type="text" id="name" name="name">
    <button type="submit">Tìm kiếm</button>
</form>
<table border="1" cellpadding="10" cellspacing="0">
    <thead>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
    <% for (UserEntity user : userList) { %>
    <tr>
        <td><%=user.getName() != null ? user.getName() : "" %></td>
        <td><%=user.getAge()%></td>
        <td><%=user.getAddress()%></td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>