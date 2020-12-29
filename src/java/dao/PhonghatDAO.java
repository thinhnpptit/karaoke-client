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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Phonghat;

/**
 *
 * @author thinh
 */
public class PhonghatDAO extends DAO {

    Connection con = null;

    public PhonghatDAO() throws SQLException {
        super();
        con = new DAO().getConnection();

    }

    public ArrayList<Phonghat> getListPhonghat() throws SQLException {
        con = new DAO().getConnection();

        ArrayList<Phonghat> list = new ArrayList<>();
        String sql = "SELECT * FROM tblphonghat";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//            Phonghat p = new Phonghat();
                int id = rs.getInt("id");
                String ten = rs.getString("ten");
                String loai = rs.getString("loai");
                float gia = rs.getFloat("gia");
                String mota = rs.getString("mota");

                list.add(new Phonghat(id, ten, loai, gia, mota));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhonghatDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;

    }

    public ArrayList<Phonghat> findPhonghat(String key) throws SQLException {
        con = new DAO().getConnection();

        ArrayList<Phonghat> list = new ArrayList<>();
        String sql = "SELECT * FROM tblphonghat p WHERE p.ten LIKE '%" + key + "%'";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
//            Phonghat p = new Phonghat();

            int id = rs.getInt("id");
            String ten = rs.getString("ten");
            String loai = rs.getString("loai");
            float gia = rs.getFloat("gia");
            String mota = rs.getString("mota");

            list.add(new Phonghat(id, ten, loai, gia, mota));
        }
        return list;
    }

    public Phonghat findPhonghatById(int id) throws SQLException {
        Phonghat p = null;
        String sql = "SELECT * FROM tblphonghat p WHERE p.id =?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
//            Phonghat p = new Phonghat();
            String ten = rs.getString("ten");
            String loai = rs.getString("loai");
            float gia = rs.getFloat("gia");
            String mota = rs.getString("mota");

            p = new Phonghat(id, ten, loai, gia, mota);
        }
        return p;
    }
}
