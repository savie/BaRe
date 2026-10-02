package com.bare.settings.appbackuplimits;
import java.util.ArrayList;
import java.util.List;
public final class AppBackupLimits {
    private final List<AppBackupLimitItem> items=new ArrayList<>();
    public synchronized void replace(List<AppBackupLimitItem> values){items.clear();if(values!=null)for(AppBackupLimitItem v:values)if(v!=null&&v.hasLimits())items.add(v);}
    public synchronized List<AppBackupLimitItem> snapshot(){return new ArrayList<>(items);}
}