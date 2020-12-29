<%-- 
    Document   : datphong
    Created on : Dec 15, 2020, 3:29:03 PM
    Author     : thinh
--%>

<%@page import="java.sql.Time"%>
<%@page import="java.sql.Date"%>
<%@page import="model.Lichdat"%>
<%@page import="dao.LichdatDAO"%>
<%@page import="model.Phonghat"%>
<%@page import="model.Thanhvien"%>
<%@page import="dao.ThanhvienDAO"%>
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
        <h1>Giao diện đặt phòng</h1>


        <table class="table-bordered">
            <thead>
            <th>Khách hàng</th>
            <th>Phòng đặt</td>
            <th>Giá</td>
            <th>Ngày đặt</td>
            <th>Giờ đặt</td>
                </thead>
            <tbody>
                <% ThanhvienDAO thanhvienDAO = new ThanhvienDAO();
                    Thanhvien nvql = thanhvienDAO.getThanhvienById(1);
                    Thanhvien kh = thanhvienDAO.getThanhvienById(2);
                    Phonghat phonghat = (Phonghat) session.getAttribute("phongchon");
                    LichdatDAO lichdatDAO = new LichdatDAO();

                    Date ngaydat = (Date) session.getAttribute("ngaydat");
                    Time giodat = (Time) session.getAttribute("giodat");

                    int checkAddLichdat = lichdatDAO.addLichdat(ngaydat, giodat, nvql.getId(), kh.getId());

                    Lichdat ld = lichdatDAO.getLichdatByTime(ngaydat, giodat);
                    session.setAttribute("lichdat", ld);
                %>
                <tr>
                    <td><%= kh.getHoten()%></td>
                    <td><%= phonghat.getTen()%></td>
                    <td><%= phonghat.getGia()%></td>
                    <td><%= ld.getNgaydat()%></td>
                    <td><%= ld.getGiodat()%></td>

                </tr>
            </tbody>
        </table>
        <% if (checkAddLichdat == 1) {

        %>
        <script type="text/javascript">

            alert("Dat phong success");
//            window.location = 'doDatphong.jsp';
        </script> 
        <%}%>
    </body>
</html>
