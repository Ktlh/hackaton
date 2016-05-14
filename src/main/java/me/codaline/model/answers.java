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
    boolean develop;
    boolean design;
    boolean economy;
    boolean marketing;
    boolean bo;

    boolean comp;

    public boolean isComp() {
        return comp;
    }

    public void setComp(boolean comp) {
        this.comp = comp;
    }

    public boolean isBo() {
        return bo;
    }

    public void setBo(boolean bo) {
        this.bo = bo;
    }

    public boolean isMarketing() {
        return marketing;
    }

    public void setMarketing(boolean marketing) {
        this.marketing = marketing;
    }

    public boolean isEconomy() {
        return economy;
    }

    public void setEconomy(boolean economy) {
        this.economy = economy;
    }

    public boolean isDesign() {
        return design;
    }

    public void setDesign(boolean design) {
        this.design = design;
    }

    public boolean isDevelop() {
        return develop;
    }

    public void setDevelop(boolean develop) {
        this.develop = develop;
    }

    public int getId_question() {
        return id_question;
    }

    public void setId_question(int id_question) {
        this.id_question = id_question;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }
}
