/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author thinh
 */
public class Thanhvien {
    private int id;
    private String username;
    private String password;
    private String hoten;
    private Date ngaysinh;
    private String sdt;
    private int diachiId;

    public Thanhvien() {
    }

    public Thanhvien(int id, String username, String password, String hoten, Date ngaysinh, String sdt, int diachiId) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.hoten = hoten;
        this.ngaysinh = ngaysinh;
        this.sdt = sdt;
        this.diachiId = diachiId;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public int getDiachiId() {
        return diachiId;
    }

    public void setDiachiId(int diachiId) {
        this.diachiId = diachiId;
    }
    
    
}
