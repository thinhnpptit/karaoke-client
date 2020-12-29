/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Thanhvien;

/**
 *
 * @author thinh
 */
public class ThanhvienDAO extends DAO {
    Connection con = null;
    public ThanhvienDAO() throws SQLException {
        super();
        con = new DAO().getConnection();
    }

    public List<Thanhvien> getAllThanhvien() throws SQLException {
        con = new DAO().getConnection();
        List<Thanhvien> listThanhvien = new ArrayList<>();
        String sql = "SELECT * FROM tblthanhvien";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Thanhvien tv = new Thanhvien();
            tv.setId(rs.getInt("id"));
            tv.setUsername(rs.getString("username"));
            tv.setPassword(rs.getString("password"));
            tv.setHoten(rs.getString("hoten"));
            tv.setNgaysinh(rs.getDate("ngaysinh"));
            tv.setSdt(rs.getString("sdt"));
            tv.setDiachiId(rs.getInt("tblDiachiid"));
            listThanhvien.add(tv);
        }
        return listThanhvien;
    }

    public boolean ktraDK(Thanhvien tv) throws SQLException {

        String sql = "SELECT * FROM tblthanhvien WHERE username=?";
        String sql1 = "INSERT INTO tblthanhvien(username, password, hoten, ngaysinh, sdt, tblDiachiid) VALUES (?,?,?,?,?,?)";

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, tv.getUsername());
        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return false;
        } else {
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ps1.setString(1, tv.getUsername());
            ps1.setString(2, tv.getPassword());
            ps1.setString(3, tv.getHoten());
            ps1.setDate(4, tv.getNgaysinh());
            ps1.setString(5, tv.getSdt());
            ps1.setInt(6, tv.getDiachiId());
            
            int row = ps1.executeUpdate();
            System.out.println("Signup success..." + row);
            return true;
        }
    }
    
    public Thanhvien getThanhvienById(int id) throws SQLException {
        Thanhvien tv = null;
        String sql = "SELECT * FROM tblthanhvien t WHERE t.id=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            tv = new Thanhvien();
            tv.setId(rs.getInt("id"));
            tv.setUsername(rs.getString("username"));
            tv.setPassword(rs.getString("password"));
            tv.setHoten(rs.getString("hoten"));
            tv.setNgaysinh(rs.getDate("ngaysinh"));
            tv.setSdt(rs.getString("sdt"));
            tv.setDiachiId(rs.getInt("tblDiachiid"));
        }
        return tv;
    }
}
