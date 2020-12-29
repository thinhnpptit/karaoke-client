<%-- 
    Document   : doTimphong
    Created on : Dec 15, 2020, 1:52:32 PM
    Author     : thinh
--%>

<%@page import="dao.LichdatDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Time"%>
<%@page import="java.sql.Date"%>
<%@page import="model.Phonghat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PhonghatDAO"%>
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
        <h1>Danh sách phòng hát</h1>
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
//                        int i = 1;
                        PhonghatDAO phonghatDAO = new PhonghatDAO();
                        ArrayList<Phonghat> list = phonghatDAO.findPhonghat(request.getParameter("tenphong"));
//                        ArrayList<Phonghat> list = phonghatDAO.getListPhonghat();
                        DateFormat formatter = new SimpleDateFormat("HH:mm");

                        Date ngaydat = Date.valueOf(request.getParameter("ngaydat"));
                        // convert string to Time
                        java.util.Date d1 = (java.util.Date) formatter.parse(request.getParameter("giodat"));
                        Time giodat = new Time(d1.getTime());

                        session.setAttribute("ngaydat", ngaydat);
                        session.setAttribute("giodat", giodat);
                        
//                        LichdatDAO lichdatDAO = new LichdatDAO();
//                        
//                        int check = lichdatDAO.addLichdat(ngaydat, giodat, 1, 2);
                        
                        for (Phonghat p : list) {
                    %>
                <a href="#">
                    <tr class="clickable-row" data-href="#">
                        <% String url = "chonphong.jsp?idPhong=" + p.getId();%>
                        <td><%= p.getId()%></td>
                        <td><%= p.getTen()%></td>
                        <td><%= p.getLoai()%></td>
                        <td><%= p.getGia()%></td>
                        <td><%= p.getMota()%></td>
                        <td><a href="<%= url%> ">Chọn</a></td>
                        
                        <% // session.setAttribute("idChoosed", i); %>                       
                    </tr>
                </a>
                <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
