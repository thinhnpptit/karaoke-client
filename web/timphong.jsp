<%-- 
    Document   : timphong
    Created on : Dec 14, 2020, 9:41:41 PM
    Author     : thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body class="container" style="margin-top: 50px">
        <h1>Tìm phòng</h1><br/>
        <form action="doTimphong.jsp" method="get">
            <div>
                <label for="tenphong"><b>Tên phòng</b></label>
                <input type="text" name="tenphong" placeholder="Nhap ten phong"><br/><br/>
                <label for="ngaydat"><b>Ngày đặt</b></label>
                <input type="date" name="ngaydat" placeholder="Nhap ngay dat" required><br/><br/>
                <label for="giodat"><b>Giờ đặt</b></label>
                <input type="datetime" name="giodat" placeholder="Nhap gio dat" required><br/><br/>

                <div>
                    <input class="btn btn-primary" type="submit" value="Search"><br/>
                </div>
            </div>
        </form>
    </body>
</html>
