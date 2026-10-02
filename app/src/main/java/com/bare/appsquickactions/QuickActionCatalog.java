package com.bare.appsquickactions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
public final class QuickActionCatalog {
    public static final class Item {
        public final String id; public final String label; public final boolean available;
        public Item(String id,String label,boolean available){this.id=id;this.label=label;this.available=available;}
    }
    private final List<Item> items=new ArrayList<>();
    public void replace(List<Item> values){items.clear();if(values!=null)items.addAll(values);}
    public List<Item> snapshot(){return Collections.unmodifiableList(new ArrayList<>(items));}
}