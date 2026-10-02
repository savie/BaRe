package com.bare.appslist.settings;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
public final class AppSwipeActions {
    private final AppSwipeAction primary, secondary;
    public AppSwipeActions(AppSwipeAction primary, AppSwipeAction secondary){this.primary=primary;this.secondary=secondary;}
    public AppSwipeAction getPrimary(){return primary;}
    public AppSwipeAction getSecondary(){return secondary;}
    public List<AppSwipeAction> asList(){LinkedHashSet<AppSwipeAction>s=new LinkedHashSet<>();if(primary!=null)s.add(primary);if(secondary!=null)s.add(secondary);return new ArrayList<>(s);}
}