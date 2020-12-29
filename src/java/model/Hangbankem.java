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
public class Hangbankem {
    private int id;
    private String ten;
    private float gia;
    private int idDongmathang;

    public Hangbankem() {
    }

    public Hangbankem(int id, String ten, float gia, int idDongmathang) {
        this.id = id;
        this.ten = ten;
        this.gia = gia;
        this.idDongmathang = idDongmathang;
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

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

    public int getIdDongmathang() {
        return idDongmathang;
    }

    public void setIdDongmathang(int idDongmathang) {
        this.idDongmathang = idDongmathang;
    }
    
    
}
