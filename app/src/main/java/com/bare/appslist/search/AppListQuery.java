package com.bare.appslist.search;
public final class AppListQuery {
    private final String text;
    public AppListQuery(String text){this.text=text==null?"":text;}
    public String getText(){return text;}
    public boolean isEmpty(){return text.trim().isEmpty();}
}