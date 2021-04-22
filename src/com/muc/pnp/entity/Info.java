package com.muc.pnp.entity;

import java.io.Serializable;

public class Info implements Serializable {

    private String name;
    private String content;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Info{" +
                "name='" + name + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
