package com.bare.appconfigs.data;

public final class AppConfig {
    public final String id;
    public final String packageName;
    public final String name;
    public final boolean valid;
    public AppConfig(String id,String packageName,String name,boolean valid){
        this.id=id; this.packageName=packageName; this.name=name==null?"":name; this.valid=valid;
    }
}