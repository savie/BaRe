package com.bare.appslist.data;

import java.util.ArrayList;
import java.util.List;

public final class AppInventoryFilter {
    private AppInventoryFilter(){}
    public static List<AppInventoryItem> query(List<AppInventoryItem> source,String query){
        List<AppInventoryItem> out=new ArrayList<>();
        String q=query==null?"":query.trim().toLowerCase();
        if(source==null)return out;
        for(AppInventoryItem item:source){
            if(item==null)continue;
            if(q.isEmpty()||item.name.toLowerCase().contains(q)||item.packageName.toLowerCase().contains(q))out.add(item);
        }
        return out;
    }
}