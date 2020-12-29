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
public class Nhanvien extends Thanhvien{
    private String chucvu;
    public Nhanvien(){
        super();
    }

    public Nhanvien(String chucvu, int id, String username, String password, String hoten, Date ngaysinh, String sdt, int diachiId) {
        super(id, username, password, hoten, ngaysinh, sdt, diachiId);
        this.chucvu = chucvu;
    }

    public String getChucvu() {
        return chucvu;
    }

    public void setChucvu(String chucvu) {
        this.chucvu = chucvu;
    }
    
    
}
