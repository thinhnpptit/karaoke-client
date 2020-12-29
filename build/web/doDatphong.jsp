<%-- 
    Document   : doDatphong
    Created on : Dec 16, 2020, 8:27:33 AM
    Author     : thinh
--%>

<%@page import="model.Phongdat"%>
<%@page import="model.Lichdat"%>
<%@page import="model.Phonghat"%>
<%@page import="java.sql.Time"%>
<%@page import="dao.PhongdatDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css.css" />

    </head>
    <body class="container" style="margin-top: 50px">
        <h1>Thông tin phòng đã đặt</h1>
        <% PhongdatDAO phongdatDAO = new PhongdatDAO();
            Time giodat = (Time) session.getAttribute("giodat");
            Phonghat p = (Phonghat) session.getAttribute("phongchon");
            Lichdat ld = (Lichdat) session.getAttribute("lichdat");
            Phongdat pd = new Phongdat(0, giodat, null, p.getId(), ld.getId());
            int ok = phongdatDAO.addPhongdat(pd);
        %>
        <table class="table-bordered">
            <thead>
            <th>ID</th>
            <th>Giờ bắt đầu</th>
            <th>Giờ kết thúc</th>
            <th>ID Phong hat</th>
            <th>ID Lich dat</th>
        </thead>
        <tbody>
            <tr>
                <td><%= p.getId()%></td>
                <td><%=pd.getGiobatdau()%></td>
                <td><%=pd.getGioketthuc()%></td>
                <td><%=pd.getIdPhonghat()%></td>
                <td><%=pd.getIdLichdat()%></td>
            </tr>
        </tbody>
    </table>
    
</body>
</html>
