package com.bare.appslist.data;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class AppInventoryRepository {
    private final LinkedHashMap<String,AppInventoryItem> items=new LinkedHashMap<>();
    public synchronized void replace(List<AppInventoryItem> values){items.clear(); if(values!=null) for(AppInventoryItem v:values) if(v!=null) items.put(v.packageName,v);}
    public synchronized Map<String,AppInventoryItem> snapshot(){return new LinkedHashMap<>(items);}
    public synchronized List<AppInventoryItem> list(){return new ArrayList<>(items.values());}
    public synchronized AppInventoryItem get(String packageName){return items.get(packageName);}
}