package com.bare.appslist.filter;
public final class AppListFilterState {
    public Boolean systemApps,favorites,labels,backedUp,cloud,installed,enabled;
    public AppListFilterState copy(){AppListFilterState x=new AppListFilterState();x.systemApps=systemApps;x.favorites=favorites;x.labels=labels;x.backedUp=backedUp;x.cloud=cloud;x.installed=installed;x.enabled=enabled;return x;}
}