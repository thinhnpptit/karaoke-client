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
public class Lichdat {
    private int id;
    private Date ngaydat;
    private Time giodat;
    private int idPhongdat;
    private int idNhanvienQL;
    private int idKhachhang;

    public Lichdat() {
    }
    
    public Lichdat(int id, Date ngaydat, Time giodat, int idPhongdat, int idNhanvienQL, int idKhachhang) {
        this.id = id;
        this.ngaydat = ngaydat;
        this.giodat = giodat;
        this.idPhongdat = idPhongdat;
        this.idNhanvienQL = idNhanvienQL;
        this.idKhachhang = idKhachhang;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(Date ngaydat) {
        this.ngaydat = ngaydat;
    }

    public Time getGiodat() {
        return giodat;
    }

    public void setGiodat(Time giodat) {
        this.giodat = giodat;
    }

    public int getIdPhongdat() {
        return idPhongdat;
    }

    public void setIdPhongdat(int idPhongdat) {
        this.idPhongdat = idPhongdat;
    }

    public int getIdNhanvienQL() {
        return idNhanvienQL;
    }

    public void setIdNhanvienQL(int idNhanvienQL) {
        this.idNhanvienQL = idNhanvienQL;
    }

    public int getIdKhachhang() {
        return idKhachhang;
    }

    public void setIdKhachhang(int idKhachhang) {
        this.idKhachhang = idKhachhang;
    }
    
    
}
