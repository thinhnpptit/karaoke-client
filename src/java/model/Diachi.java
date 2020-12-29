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
public class Diachi {
    private int id;
    private String sonha;
    private String duong;
    private String xaphuong;
    private String quanhuyen;
    private String tinhthanh;

    public Diachi(int id, String sonha, String duong, String xaphuong, String quanhuyen, String tinhthanh) {
        this.id = id;
        this.sonha = sonha;
        this.duong = duong;
        this.xaphuong = xaphuong;
        this.quanhuyen = quanhuyen;
        this.tinhthanh = tinhthanh;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSonha() {
        return sonha;
    }

    public void setSonha(String sonha) {
        this.sonha = sonha;
    }

    public String getDuong() {
        return duong;
    }

    public void setDuong(String duong) {
        this.duong = duong;
    }

    public String getXaphuong() {
        return xaphuong;
    }

    public void setXaphuong(String xaphuong) {
        this.xaphuong = xaphuong;
    }

    public String getQuanhuyen() {
        return quanhuyen;
    }

    public void setQuanhuyen(String quanhuyen) {
        this.quanhuyen = quanhuyen;
    }

    public String getTinhthanh() {
        return tinhthanh;
    }

    public void setTinhthanh(String tinhthanh) {
        this.tinhthanh = tinhthanh;
    }
    
    
}
