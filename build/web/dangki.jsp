<%-- 
    Document   : dangki
    Created on : Dec 14, 2020, 3:06:17 PM
    Author     : thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body class="container" style="margin-top: 50px">
        <h1>Signup</h1><br/>

        <form action="doDangki.jsp" method="post">

<!--            <label for="id"><b>Id</b></label>
            <input type="text" placeholder="Enter id" name="id" required><br/>-->

            <label for="username"><b>Username</b></label>
            <input al type="text" placeholder="Enter username" name="username" required><br/><br/>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required><br/><br/>

            <label for="hoten"><b>Họ tên</b></label>
            <input type="text" placeholder="Enter hoten" name="hoten" required><br/><br/>

            <label for="ngaysinh"><b>Ngày sinh</b></label>
            <input type="date" placeholder="Enter ngaysinh" name="ngaysinh" required><br/><br/>

            <label for="sdt"><b>Số điện thoại</b></label>
            <input type="text" placeholder="Enter sdt" name="sdt" required><br/><br/>

            <label for="idDiachi"><b>ID Địa chỉ</b></label>
            <input type="number" placeholder="Enter idDiachi" name="idDiachi" required><br/><br/>

            <div>
                <input class="btn btn-light" type="reset" value="Reset" style="margin-right: 20px">
                <a href="index.html"><button type="button" class="btn btn-secondary" style="margin-right: 20px">Cancel</button></a>
                <button type="submit" class="btn btn-success">Sign Up</button>
            </div>

        </form>

    </body>
</html>
