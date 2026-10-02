package com.bare.blacklist.data;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
public final class BlacklistManagementState {
    public static final int MAX_ITEMS=100;
    private final List<BlacklistApp> items=new ArrayList<>();
    public synchronized void add(BlacklistApp app){if(app==null)throw new IllegalArgumentException("app");if(!contains(app.getPackageName())&&items.size()<MAX_ITEMS)items.add(app);}
    public synchronized void remove(String packageName){items.removeIf(x->x.getPackageName().equals(packageName));}
    public synchronized void clear(){items.clear();}
    public synchronized boolean contains(String packageName){for(BlacklistApp x:items)if(x.getPackageName().equals(packageName))return true;return false;}
    public synchronized List<BlacklistApp> snapshot(){return Collections.unmodifiableList(new ArrayList<>(items));}
    public static final class BlacklistApp {
        private final String name,packageName; private BlacklistMode mode;
        public BlacklistApp(String name,String packageName,BlacklistMode mode){this.name=name;this.packageName=packageName;this.mode=mode==null?BlacklistMode.Hide:mode;}
        public String getName(){return name;} public String getPackageName(){return packageName;} public BlacklistMode getMode(){return mode;} public void setMode(BlacklistMode mode){this.mode=mode;}
    }
}