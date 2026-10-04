package com.bare.appslist.data;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.List;

import com.bare.blacklist.repository.BlacklistRepository;

/** F04/F44 installed-app inventory assembly and measurement boundary. */
public final class AppInventoryLoader {
    private final Context context;
    public AppInventoryLoader(Context context){if(context==null)throw new NullPointerException("context");this.context=context.getApplicationContext();}
    public List<AppInventoryItem> load(){
        PackageManager pm=context.getPackageManager();List<PackageInfo> packages=pm.getInstalledPackages(0);List<AppInventoryItem> result=new ArrayList<>(); java.util.Map<String,java.util.List<String>> labelAssignments=new AppInventoryRepository.Labels(context).assignments();
        BlacklistRepository blacklist = new BlacklistRepository(context);
        for(PackageInfo info:packages){
            if(info==null||info.packageName==null||info.applicationInfo==null)continue;
            if (blacklist.isHidden(info.packageName)) continue;
            ApplicationInfo app=info.applicationInfo;
            CharSequence label=app.loadLabel(pm);boolean launchable=pm.getLaunchIntentForPackage(info.packageName)!=null;
            AppInventoryRepository.Measurement measured=AppInventoryRepository.measure(context,app);
            long updated=info.lastUpdateTime;long installed=0;
            long appSize=measured.measured&&measured.size!=null?measured.size.total():0;
            result.add(new AppInventoryItem(info.packageName,label==null?info.packageName:label.toString(),info.versionName,info.getLongVersionCode(),
                app.enabled,launchable,(app.flags&ApplicationInfo.FLAG_SYSTEM)!=0,true,false,false,false,installed,updated,0,0,appSize,0,labelAssignments.get(info.packageName)));
        }
        return result;
    }
}