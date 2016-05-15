package me.codaline.beans;

/**
 * Created by Peter on 14.05.2016.
 */
public class Result {
    private String key;
    private Integer value;

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    public Result(String key, Integer value) {
        this.key = key;
        this.value = value;
    }

    public Result(){

    }
}
