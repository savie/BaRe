package com.bare.appslist.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/** Canonical local Apps inventory owner for R-B. */
public final class AppInventoryRepository {
    private final LinkedHashMap<String,AppInventoryItem> items=new LinkedHashMap<>();
    public synchronized void replace(List<AppInventoryItem> values){items.clear();if(values!=null)for(AppInventoryItem v:values)if(v!=null)items.put(v.packageName,v);}
    public synchronized Map<String,AppInventoryItem> snapshot(){return new LinkedHashMap<>(items);}
    public synchronized List<AppInventoryItem> list(){return new ArrayList<>(items.values());}
    public synchronized AppInventoryItem get(String packageName){return items.get(packageName);}

    public static final class Measurement {
        public final AppSize size; public final boolean measured; public final String error;
        public Measurement(AppSize s,boolean m,String e){size=s;measured=m;error=e;}
    }
    public static final class AppSize {
        public final long apk,splitApks,sharedLibs,data,cache,deData,deDataCache,externalData,externalCache,media,obb;
        public AppSize(long apk,long split,long libs,long data,long cache,long de,long deCache,long ext,long extCache,long media,long obb){
            this.apk=Math.max(0,apk);this.splitApks=Math.max(0,split);this.sharedLibs=Math.max(0,libs);this.data=Math.max(0,data);this.cache=Math.max(0,cache);
            this.deData=Math.max(0,de);this.deDataCache=Math.max(0,deCache);this.externalData=Math.max(0,ext);this.externalCache=Math.max(0,extCache);
            this.media=Math.max(0,media);this.obb=Math.max(0,obb);
        }
        public long totalApk(){return apk+splitApks+sharedLibs;}
        public long totalData(boolean includeCache){return includeCache?data+deData:data-cache+deData-deDataCache;}
        public long totalCache(){return cache+deDataCache+externalCache;}
        public long total(){return totalApk()+data+deData+externalData+media+obb;}
    }
    public static Measurement measure(Context context,ApplicationInfo app){
        if(context==null||app==null)return new Measurement(null,false,"missing application");
        try{
            long apk=size(new File(app.sourceDir)),split=0;
            if(app.splitSourceDirs!=null)for(String p:app.splitSourceDirs)if(p!=null&&!p.isEmpty())split+=size(new File(p));
            long data=size(new File(app.dataDir)),cache=size(new File(app.dataDir==null?"":app.dataDir,"cache"));
            java.io.File extRoot=new java.io.File(android.os.Environment.getExternalStorageDirectory(),"Android/data/"+app.packageName);
            java.io.File mediaRoot=new java.io.File(android.os.Environment.getExternalStorageDirectory(),"Android/media/"+app.packageName);
            java.io.File obbRoot=new java.io.File(android.os.Environment.getExternalStorageDirectory(),"Android/obb/"+app.packageName);
            long ext=size(extRoot),extCache=size(new File(extRoot,"cache")),media=size(mediaRoot),obb=size(obbRoot);
            boolean accessible=(!extRoot.exists()||extRoot.canRead())&&(!mediaRoot.exists()||mediaRoot.canRead())&&(!obbRoot.exists()||obbRoot.canRead());
            return new Measurement(new AppSize(apk,split,0,data,cache,0,0,ext,extCache,media,obb),accessible,accessible?null:"external app-data path is not readable");
        }catch(Exception e){return new Measurement(null,false,e.getClass().getSimpleName()+": "+String.valueOf(e.getMessage()));}
    }
    private static long size(File f){if(f==null||!f.exists())return 0;if(f.isFile())return Math.max(0,f.length());File[] fs=f.listFiles();if(fs==null)return 0;long n=0;for(File x:fs)n+=size(x);return n;}

    public enum Sort { NAME, INSTALL_DATE, UPDATE_DATE, BACKUP_DATE, APP_SIZE, BACKUP_SIZE, DATE_USED }
    public static List<AppInventoryItem> sort(List<AppInventoryItem> source,Sort c,boolean ascending){
        List<AppInventoryItem> out=new ArrayList<>();if(source!=null)out.addAll(source);Comparator<AppInventoryItem> cmp;
        switch(c){
            case INSTALL_DATE:cmp=Comparator.comparingLong(a->a.dateInstalled);break;
            case UPDATE_DATE:cmp=Comparator.comparingLong(a->a.dateUpdated);break;
            case BACKUP_DATE:cmp=Comparator.comparingLong(a->a.dateBackup);break;
            case APP_SIZE:cmp=Comparator.comparingLong(a->a.appSizeBytes);break;
            case BACKUP_SIZE:cmp=Comparator.comparingLong(a->a.backupSizeBytes);break;
            case DATE_USED:cmp=Comparator.comparingLong(a->a.dateUsed);break;
            default:cmp=Comparator.comparing(a->a.name,String.CASE_INSENSITIVE_ORDER);
        }
        out.sort(ascending?cmp:cmp.reversed());return out;
    }

    public static final class Filters {
        public boolean includeSystem=true,favoritesOnly=false,installedOnly=false,enabledOnly=false;
        public Boolean hasBackup,cloudOnly; public String labelId;
        public List<AppInventoryItem> apply(List<AppInventoryItem> source){
            List<AppInventoryItem> out=new ArrayList<>();if(source==null)return out;
            for(AppInventoryItem a:source){
                if(a==null)continue;if(!includeSystem&&a.bundled)continue;if(favoritesOnly&&!a.favorite)continue;
                if(installedOnly&&!a.installed)continue;if(enabledOnly&&!a.enabled)continue;
                if(hasBackup!=null&&hasBackup.booleanValue()!=a.hasBackup)continue;if(cloudOnly!=null&&cloudOnly.booleanValue()!=a.cloudApp)continue;
                if(labelId!=null&&!a.labelIds.contains(labelId))continue;out.add(a);
            }return out;
        }
    }

    public static final class Labels {
        private final SharedPreferences prefs;
        public static final class Label {public final String id;public String name;public int color;public Label(String i,String n,int c){id=i;name=n;color=c;}}
        public Labels(Context c){prefs=c.getApplicationContext().getSharedPreferences("apps_labels_v1",Context.MODE_PRIVATE);}
        private JSONObject root(){try{return new JSONObject(prefs.getString("data","{}"));}catch(Exception e){return new JSONObject();}}
        public synchronized List<Label> list(){List<Label> out=new ArrayList<>();JSONArray a=root().optJSONArray("labels");if(a==null)return out;for(int i=0;i<a.length();i++){JSONObject o=a.optJSONObject(i);if(o!=null)out.add(new Label(o.optString("id"),o.optString("name"),o.optInt("color")));}return out;}
        public synchronized Map<String,List<String>> assignments(){Map<String,List<String>> out=new LinkedHashMap<>();JSONObject a=root().optJSONObject("apps");if(a==null)return out;for(String k:a.keySet()){JSONArray x=a.optJSONArray(k);List<String> ids=new ArrayList<>();if(x!=null)for(int i=0;i<x.length();i++)ids.add(x.optString(i));out.put(k,ids);}return out;}
        public synchronized void save(List<Label> labels,Map<String,List<String>> assignments){try{JSONObject r=new JSONObject();JSONArray a=new JSONArray();if(labels!=null)for(Label l:labels)a.put(new JSONObject().put("id",l.id).put("name",l.name).put("color",l.color));r.put("labels",a);JSONObject apps=new JSONObject();if(assignments!=null)for(Map.Entry<String,List<String>> e:assignments.entrySet()){JSONArray x=new JSONArray();for(String id:e.getValue())x.put(id);apps.put(e.getKey(),x);}r.put("apps",apps);prefs.edit().putString("data",r.toString()).apply();}catch(Exception e){throw new IllegalStateException("label persistence failed",e);}}
    }

    public enum BackupDecision { BACKUP, UPDATE_LATEST, SKIP_IDENTICAL, SKIP_UNCHANGED, BLOCKED }
    public static final class BackupPlan {public final BackupDecision decision;public final List<String> parts;public final String reason;public BackupPlan(BackupDecision d,List<String>p,String r){decision=d;parts=Collections.unmodifiableList(new ArrayList<>(p));reason=r;}}
    public BackupPlan planBackup(boolean identicalApk,boolean anyChanged,boolean apkChanged,boolean conditionalNewBackup,boolean protectedLatest,List<String> changedParts){
        if(identicalApk&&!anyChanged&&!protectedLatest)return new BackupPlan(BackupDecision.SKIP_IDENTICAL,Collections.emptyList(),"identical APK and no changed parts");
        if(!anyChanged)return new BackupPlan(conditionalNewBackup?BackupDecision.UPDATE_LATEST:BackupDecision.SKIP_UNCHANGED,Collections.emptyList(),"no changed parts");
        return new BackupPlan(conditionalNewBackup?BackupDecision.BACKUP:BackupDecision.UPDATE_LATEST,changedParts==null?Collections.emptyList():changedParts,apkChanged?"APK changed":"changed parts");
    }

    public enum RestoreDecision { INSTALL, RESTORE_DATA, DOWNGRADE_REQUIRED, RETRY_SPLITS, BLOCKED }
    public static final class RestorePlan {public final RestoreDecision decision;public final List<String> parts;public final String reason;public RestorePlan(RestoreDecision d,List<String>p,String r){decision=d;parts=Collections.unmodifiableList(new ArrayList<>(p));reason=r;}}
    public RestorePlan planRestore(List<String> selected,boolean installed,long installedVersion,long backupVersion,boolean splitsValid,boolean canDowngrade){
        List<String> p=selected==null?Collections.emptyList():selected;if(!splitsValid)return new RestorePlan(RestoreDecision.RETRY_SPLITS,p,"split extraction/validation requires retry");
        if(installed&&backupVersion<installedVersion){if(!canDowngrade)return new RestorePlan(RestoreDecision.BLOCKED,p,"downgrade unavailable");return new RestorePlan(RestoreDecision.DOWNGRADE_REQUIRED,p,"target version is lower than installed version");}
        return new RestorePlan(p.contains("APK")?RestoreDecision.INSTALL:RestoreDecision.RESTORE_DATA,p,"selected restore parts");
    }

    public static final class MetadataPolicy {
        public enum Operation { READ,WRITE,UPDATE,REMOVE,CLOUD_INDEX_RECONCILE,PROTECTED_CLEANUP }
        public boolean allowed(Operation op,boolean protectedBackup){return !(protectedBackup&&(op==Operation.REMOVE||op==Operation.PROTECTED_CLEANUP));}
        public Map<String,Object> reconcile(Map<String,Object> local,Map<String,Object> cloud){Map<String,Object> out=new LinkedHashMap<>();if(local!=null)out.putAll(local);if(cloud!=null)for(Map.Entry<String,Object> e:cloud.entrySet())out.putIfAbsent(e.getKey(),e.getValue());return out;}
    }

    public static final class UnitResult {public final boolean success,cancelled,retryable;public UnitResult(boolean s,boolean c,boolean r){success=s;cancelled=c;retryable=r;}}
    public static final class TaskAggregation {private final List<UnitResult> units=new ArrayList<>();private boolean cancel,forceStop,restarted;
        public void add(UnitResult r){if(r!=null)units.add(r);}public void cancel(){cancel=true;}public void forceStop(){forceStop=true;}public void restarted(){restarted=true;}
        public String terminalState(){int ok=0,fail=0;for(UnitResult r:units){if(r.success)ok++;else fail++;}if(restarted)return "FAILURE";if(ok==0&&(cancel||forceStop))return "CANCELLED";if(fail==0)return "SUCCESS";return ok>0?"PARTIAL_FAILURE":"FAILURE";}
    }

    public static final class InstallerPlan {
        public static final class Entry{public final String name,path;public final long size;public Entry(String n,String p,long s){name=n;path=p;size=s;}}
        public final String packageName,installerPackage;public final List<Entry> entries;public final long totalSize;
        public InstallerPlan(String p,String i,List<Entry> e){packageName=p;installerPackage=i;entries=Collections.unmodifiableList(new ArrayList<>(e));long n=0;for(Entry x:e)n+=Math.max(0,x.size);totalSize=n;}
        public boolean verifySource(String installer,String initiating,String installing){return installerPackage!=null&&installerPackage.equals(installer)&&installerPackage.equals(initiating)&&installerPackage.equals(installing);}
    }
}