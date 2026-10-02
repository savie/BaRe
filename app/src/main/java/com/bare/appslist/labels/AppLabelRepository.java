package com.bare.appslist.labels;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
public final class AppLabelRepository {
    private final Map<String,AppLabel> labels=new LinkedHashMap<>();
    private final Map<String,String> assignments=new LinkedHashMap<>();
    public synchronized void put(AppLabel label){if(label==null)throw new IllegalArgumentException("label");labels.put(label.getId(),label);}
    public synchronized void remove(String id){labels.remove(id);assignments.values().removeIf(x->x.equals(id));}
    public synchronized void assign(String packageName,String labelId){if(packageName!=null&&labels.containsKey(labelId))assignments.put(packageName,labelId);}
    public synchronized void unassign(String packageName){assignments.remove(packageName);}
    public synchronized List<AppLabel> list(){return new ArrayList<>(labels.values());}
    public synchronized String labelFor(String packageName){return assignments.get(packageName);}
}