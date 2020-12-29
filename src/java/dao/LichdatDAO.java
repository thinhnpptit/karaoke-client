/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import model.Lichdat;

/**
 *
 * @author thinh
 */
public class LichdatDAO extends DAO {
    Connection con = null;
    
    public LichdatDAO() throws SQLException {
        super();
        con = new DAO().getConnection();
    }

    public int addLichdat(Date ngaydat, Time giodat, int idNhanvienQL, int idKhachhang) throws SQLException {
        String sql = "INSERT INTO tbllichdat(ngaydat, giodat, nhanvienQLid, khachhangid) VALUES (?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setDate(1, ngaydat);
        ps.setTime(2, giodat);
        ps.setInt(3, idNhanvienQL);
        ps.setInt(4, idKhachhang);

        int row = ps.executeUpdate();

        return row;
    }

    public Lichdat getLichdatById(int id) throws SQLException {
        Lichdat ld = null;
        String sql = "SELECT * FROM tbllichdat t WHERE t.id=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            ld = new Lichdat();
            ld.setId(rs.getInt("id"));
            ld.setNgaydat(rs.getDate("ngaydat"));
            ld.setGiodat(rs.getTime("giodat"));
            ld.setIdNhanvienQL(rs.getInt("nhanvienQLid"));
            ld.setIdKhachhang(rs.getInt("khachhangid"));
        }
        return ld;
    }
    
    public Lichdat getLichdatByTime(Date date, Time time) throws SQLException {
        Lichdat ld = null;
        String sql = "SELECT * FROM tbllichdat t WHERE t.ngaydat=? AND t.giodat=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setDate(1, date);
        ps.setTime(2, time);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            ld = new Lichdat();
            ld.setId(rs.getInt("id"));
            ld.setNgaydat(rs.getDate("ngaydat"));
            ld.setGiodat(rs.getTime("giodat"));
            ld.setIdNhanvienQL(rs.getInt("nhanvienQLid"));
            ld.setIdKhachhang(rs.getInt("khachhangid"));
        }
        return ld;
    }
}
