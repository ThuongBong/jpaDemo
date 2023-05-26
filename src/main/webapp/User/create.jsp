<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create User</title>
</head>
<body>
<h1>Tạo mới người dùng</h1>
<form method="post" action="../createUser">
    <label for="name">Tên:</label>
    <input type="text" id="name" name="name">
    <br>
    <label for="age">Tuổi:</label>
    <input type="number" id="age" name="age">
    <br>
    <label for="address">Địa chỉ:</label>
    <input type="text" id="address" name="address">
    <br>
    <button type="submit">Add</button>
</form>

</body>
</html>