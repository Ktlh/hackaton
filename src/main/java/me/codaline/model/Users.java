package me.codaline.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Users {

    @Id
    @GeneratedValue
    int Id;
    String ip_user;
    String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        this.Id = id;
    }

    public String getIp_user() {
        return ip_user;
    }

    public void setIp_user(String ip_user) {
        this.ip_user = ip_user;
    }
}
