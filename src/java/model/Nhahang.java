/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author thinh
 */
public class Nhahang {
    private int id;
    private String ten;
    private String sdt;
    private int diachiId;
    private String mota;

    public Nhahang(int id, String ten, String sdt, int diachiId, String mota) {
        this.id = id;
        this.ten = ten;
        this.sdt = sdt;
        this.diachiId = diachiId;
        this.mota = mota;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
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

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }
    
    
}
