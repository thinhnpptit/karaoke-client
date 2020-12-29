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
import java.sql.Time;
import model.Phongdat;
import model.Phonghat;

/**
 *
 * @author thinh
 */
public class PhongdatDAO extends DAO {
    Connection con = null;
    public PhongdatDAO() throws SQLException {
        super();
        con = new DAO().getConnection();
    }

    public Phongdat findPhongdatById(int id) throws SQLException {
        Phongdat p = null;
        String sql = "SELECT * FROM tblphongdat p WHERE p.id =?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
//            Phonghat p = new Phonghat();
            Time giobatdau = rs.getTime("giobatdau");
            Time gioketthuc = rs.getTime("gioketthuc");
            int idPhonghat = rs.getInt("tblPhonghatid");
            int idHoadon = rs.getInt("tblHoadonid");
            int idLichdat = rs.getInt("tblLichdatid");

            p = new Phongdat(id, giobatdau, gioketthuc, idPhonghat, idLichdat);
        }
        return p;
    }

    public int addPhongdat(Phongdat p) throws SQLException {
        String sql = "INSERT INTO tblphongdat(giobatdau, gioketthuc, tblPhonghatid, tblLichdatid) VALUES (?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setTime(1, p.getGiobatdau());
        ps.setTime(2, p.getGioketthuc());
        ps.setInt(3, p.getIdPhonghat());
        ps.setInt(4, p.getIdLichdat());

        int row = ps.executeUpdate();

        return row;
    }
}
