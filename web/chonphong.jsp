<%-- 
    Document   : chonphong
    Created on : Dec 15, 2020, 1:41:03 PM
    Author     : thinh
--%>

<%@page import="dao.PhonghatDAO"%>
<%@page import="model.Phonghat"%>
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
        <h1 style="margin-bottom: 30px">GD Chọn phòng</h1>
        <div>
            <table class="table-bordered">
                <thead>
                <th>ID</th>
                <td>Tên</td>
                <td>Loại</td>
                <td>Giá</td>
                <td>Mô tả</td>
                <td></td>
                </thead>
                <tbody>
                    <%
                        PhonghatDAO phonghatDAO = new PhonghatDAO();
                        int id = Integer.parseInt(request.getParameter("idPhong"));
                        Phonghat p = phonghatDAO.findPhonghatById(id);
                        session.setAttribute("phongchon", p);
                    %>
                    <tr>
                        <td><%= p.getId()%></td>
                        <td><%= p.getTen()%></td>
                        <td><%= p.getLoai()%></td>
                        <td><%= p.getGia()%></td>
                        <td><%= p.getMota()%></td>
                        <td><a href="datphong.jsp">Chọn</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
