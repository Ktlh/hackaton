package me.codaline.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class answers {
    @Id
    @GeneratedValue
    int Id;
    int id_question;
    int develop;
    int desing;
    int economy;
    int marketing;
    int bo;

    int comp;


    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public int getId_question() {
        return id_question;
    }

    public void setId_question(int id_question) {
        this.id_question = id_question;
    }

    public int getDevelop() {
        return develop;
    }

    public void setDevelop(int develop) {
        this.develop = develop;
    }

    public int getDesign() {
        return desing;
    }

    public void setDesign(int desing) {
        this.desing = desing;
    }

    public int getEconomy() {
        return economy;
    }

    public void setEconomy(int economy) {
        this.economy = economy;
    }

    public int getMarketing() {
        return marketing;
    }

    public void setMarketing(int marketing) {
        this.marketing = marketing;
    }

    public int getBo() {
        return bo;
    }

    public void setBo(int bo) {
        this.bo = bo;
    }

    public int getComp() {
        return comp;
    }

    public void setComp(int comp) {
        this.comp = comp;
    }
}
