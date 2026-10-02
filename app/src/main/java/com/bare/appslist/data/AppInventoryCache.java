package com.bare.appslist.data;

import java.util.ArrayList;
import java.util.List;

public final class AppInventoryCache {
    private final AppInventoryRepository repository=new AppInventoryRepository();
    public synchronized void refresh(List<AppInventoryItem> items){repository.replace(items);}
    public synchronized List<AppInventoryItem> read(){return new ArrayList<>(repository.list());}
    public synchronized void replaceFromPackageManager(List<AppInventoryItem> items){refresh(items);}
}