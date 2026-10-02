package com.bare.manage;
public final class ManageSpaceProjection {
    public final long apps,messages,calls,folders,wallpapers,wifi;
    public ManageSpaceProjection(long apps,long messages,long calls,long folders,long wallpapers,long wifi){this.apps=apps;this.messages=messages;this.calls=calls;this.folders=folders;this.wallpapers=wallpapers;this.wifi=wifi;}
    public long getTotal(){return apps+messages+calls+folders+wallpapers+wifi;}
}