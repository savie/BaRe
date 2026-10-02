package com.bare.appslist.labels;
public final class AppLabel {
    private final String id; private String name;
    public AppLabel(String id,String name){if(id==null||id.isEmpty())throw new IllegalArgumentException("id");this.id=id;this.name=name;}
    public String getId(){return id;} public String getName(){return name;} public void setName(String name){this.name=name;}
}