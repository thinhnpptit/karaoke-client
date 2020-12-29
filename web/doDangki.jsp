<%-- 
    Document   : doDangki
    Created on : Dec 14, 2020, 3:36:38 PM
    Author     : thinh
--%>

<%@page import="java.sql.Date"%>
<%@page import="dao.ThanhvienDAO"%>
<%@page import="model.Thanhvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body class="container" style="margin-top: 50px">
        <%--<%= request.getParameter("username") %>--%>

        <%
            Thanhvien tv = new Thanhvien();
//            tv.setId((Integer.parseInt(request.getParameter("id"))));
            tv.setUsername(request.getParameter("username"));
            tv.setPassword(request.getParameter("password"));
            tv.setHoten(request.getParameter("hoten"));
            tv.setNgaysinh(Date.valueOf(request.getParameter("ngaysinh")));
            tv.setSdt(request.getParameter("sdt"));
            tv.setDiachiId(Integer.parseInt(request.getParameter("idDiachi")));

            ThanhvienDAO tvdao = new ThanhvienDAO();
            boolean check = tvdao.ktraDK(tv);
            if (check) {
        %>
        <h2 style="color: green; margin-bottom: 30px">Signup Success</h2>
        <a href="index.html"><button>Go HomePage</button></a>
        <% } else { %>
        <h2 style="color: red">Signup Fail - username already exists</h3>
        <% }%>
    </body>
</html>
