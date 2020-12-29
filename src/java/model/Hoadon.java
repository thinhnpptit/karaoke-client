/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author thinh
 */
public class Hoadon {
    private int id;
    private Date ngayTT;
    private Time gioTT;
    private String kieuTT;
    private int idPhongdat;
    private int idHangban;

    public Hoadon() {
    }

    public Hoadon(int id, Date ngayTT, Time gioTT, String kieuTT, int idPhongdat, int idHangban) {
        this.id = id;
        this.ngayTT = ngayTT;
        this.gioTT = gioTT;
        this.kieuTT = kieuTT;
        this.idPhongdat = idPhongdat;
        this.idHangban = idHangban;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgayTT() {
        return ngayTT;
    }

    public void setNgayTT(Date ngayTT) {
        this.ngayTT = ngayTT;
    }

    public Time getGioTT() {
        return gioTT;
    }

    public void setGioTT(Time gioTT) {
        this.gioTT = gioTT;
    }

    public String getKieuTT() {
        return kieuTT;
    }

    public void setKieuTT(String kieuTT) {
        this.kieuTT = kieuTT;
    }

    public int getIdPhongdat() {
        return idPhongdat;
    }

    public void setIdPhongdat(int idPhongdat) {
        this.idPhongdat = idPhongdat;
    }

    public int getIdHangban() {
        return idHangban;
    }

    public void setIdHangban(int idHangban) {
        this.idHangban = idHangban;
    }
    
    
}
