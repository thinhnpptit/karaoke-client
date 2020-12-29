/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Time;

/**
 *
 * @author thinh
 */
public class Phongdat {
    private int id;
    private Time giobatdau;
    private Time gioketthuc;
    private int idPhonghat;
    private int idLichdat;

    public Phongdat() {
    }

    public Phongdat(int id, Time giobatdau, Time gioketthuc, int idPhonghat, int idLichdat) {
        this.id = id;
        this.giobatdau = giobatdau;
        this.gioketthuc = gioketthuc;
        this.idPhonghat = idPhonghat;
        this.idLichdat = idLichdat;
    }

    public int getIdLichdat() {
        return idLichdat;
    }

    public void setIdLichdat(int idLichdat) {
        this.idLichdat = idLichdat;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Time getGiobatdau() {
        return giobatdau;
    }

    public void setGiobatdau(Time giobatdau) {
        this.giobatdau = giobatdau;
    }

    public Time getGioketthuc() {
        return gioketthuc;
    }

    public void setGioketthuc(Time gioketthuc) {
        this.gioketthuc = gioketthuc;
    }

    public int getIdPhonghat() {
        return idPhonghat;
    }

    public void setIdPhonghat(int idPhonghat) {
        this.idPhonghat = idPhonghat;
    }
    
    
}
