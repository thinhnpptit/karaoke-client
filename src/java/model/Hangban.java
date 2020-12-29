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
public class Hangban {
    private int id;
    private int soluong;
    private String ghichu;
    private int idHangbankem;

    public Hangban() {
    }

    public Hangban(int id, int soluong, String ghichu, int idHangbankem) {
        this.id = id;
        this.soluong = soluong;
        this.ghichu = ghichu;
        this.idHangbankem = idHangbankem;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public int getIdHangbankem() {
        return idHangbankem;
    }

    public void setIdHangbankem(int idHangbankem) {
        this.idHangbankem = idHangbankem;
    }
    
    
}
