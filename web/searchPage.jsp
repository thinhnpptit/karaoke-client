<%-- 
    Document   : doTimphong
    Created on : Dec 14, 2020, 9:51:49 PM
    Author     : thinh
--%>
<%--<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>--%>

<%@page import="model.Phonghat"%>
<%@page import="dao.PhonghatDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css.css" />
    </head>
    <body class="container" style="margin-top: 50px">
        <div><jsp:include page="timphong.jsp"/></div>
        <h1>Danh sách phòng hát</h1>
        <div >
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
                        int i = 1;
                        PhonghatDAO phonghatDAO = new PhonghatDAO();
//                        ArrayList<Phonghat> list = phonghatDAO.findPhonghat(request.getParameter("tenphong"));
                        ArrayList<Phonghat> list = phonghatDAO.getListPhonghat();
                        for (Phonghat p : list) {
                    %>
                <a href="#">
                    <tr class="clickable-row" data-href="#">
                    <td><%= p.getId()%></td>
                    <td><%= p.getTen()%></td>
                    <td><%= p.getLoai()%></td>
                    <td><%= p.getGia()%></td>
                    <td><%= p.getMota()%></td>
                    <td><a href="chonphong.jsp?idPhong=<%= p.getId()%>" >Chọn</a></td>
                    <% session.setAttribute("idChoosed", p.getId()); %>

                    </tr>
                </a>
                <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
