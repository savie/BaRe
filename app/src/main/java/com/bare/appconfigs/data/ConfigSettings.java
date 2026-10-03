package com.bare.appconfigs.data;

import com.bare.settings.MultipleBackupStrategy;
import com.bare.settings.appbackuplimits.AppBackupLimitItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/** Reference-shaped App configuration validation/normalization boundary. */
public final class ConfigSettings {
    private final int version;
    private final String id;
    private final ApplyData applyData;
    private final String appParts;
    private final String locations;
    private final String syncOption;
    private final List<AppBackupLimitItem> backupLimits;
    private final Integer archiveBackup;
    private final MultipleBackupStrategy multipleBackupStrategy;
    private final String restorePermissionsMode;
    private final Integer restoreSpecialPermissions;
    private final Integer restoreSsaid;
    private final Integer compressionLevel;
    private final Integer cacheBackup;
    private final Integer isForceRedo;
    private final Integer enabled;

    public ConfigSettings(int version, String id, ApplyData applyData, String appParts,
            String locations, String syncOption, List<AppBackupLimitItem> backupLimits,
            Integer archiveBackup, MultipleBackupStrategy multipleBackupStrategy,
            String restorePermissionsMode, Integer restoreSpecialPermissions,
            Integer restoreSsaid, Integer compressionLevel, Integer cacheBackup,
            Integer isForceRedo, Integer enabled) {
        if (id == null) throw new NullPointerException("id");
        this.version=version; this.id=id; this.applyData=applyData; this.appParts=appParts;
        this.locations=locations; this.syncOption=syncOption;
        this.backupLimits=backupLimits==null?null:new ArrayList<>(backupLimits);
        this.archiveBackup=archiveBackup; this.multipleBackupStrategy=multipleBackupStrategy;
        this.restorePermissionsMode=restorePermissionsMode;
        this.restoreSpecialPermissions=restoreSpecialPermissions; this.restoreSsaid=restoreSsaid;
        this.compressionLevel=compressionLevel; this.cacheBackup=cacheBackup;
        this.isForceRedo=isForceRedo; this.enabled=enabled;
    }

    public ApplyData getApplyData(){return applyData;}
    public String getId(){return id;}
    public String getAppParts(){return appParts;}
    public String getLocations(){return locations;}
    public String getSyncOption(){return syncOption;}
    public List<AppBackupLimitItem> getBackupLimits(){return backupLimits==null?null:Collections.unmodifiableList(backupLimits);}
    public Integer getArchiveBackup(){return archiveBackup;}
    public MultipleBackupStrategy getMultipleBackupStrategy(){return multipleBackupStrategy;}
    public String getRestorePermissionsMode(){return restorePermissionsMode;}
    public Integer getRestoreSpecialPermissions(){return restoreSpecialPermissions;}
    public Integer getRestoreSsaid(){return restoreSsaid;}
    public Integer getCompressionLevel(){return compressionLevel;}
    public Integer getCacheBackup(){return cacheBackup;}
    public Integer getIsForceRedo(){return isForceRedo;}
    public Integer getEnabled(){return enabled;}

    public boolean isValid(Set<String> existingLabelIds, boolean allowInvalidApplyData){
        return applyData!=null && applyData.isValid(existingLabelIds, allowInvalidApplyData);
    }
    public boolean isValid(Set<String> existingLabelIds){return isValid(existingLabelIds,false);}

    public ConfigSettings removeCloudLocation(){
        if(locations==null)return this;
        List<String> kept=new ArrayList<>();
        for(String token:locations.split(",\\s*")) if(!"CLOUD".equals(token)) kept.add(token);
        String normalized=String.join(", ",kept);
        return new ConfigSettings(version,id,applyData,appParts,normalized.isEmpty()?null:normalized,syncOption,
                backupLimits,archiveBackup,multipleBackupStrategy,restorePermissionsMode,
                restoreSpecialPermissions,restoreSsaid,compressionLevel,cacheBackup,isForceRedo,enabled);
    }

    public static final class ApplyData {
        private final String labels;
        public ApplyData(String labels){this.labels=labels;}
        public String getLabelsRaw(){return labels;}

        public List<String> getLabelIds(Set<String> existingLabelIds){
            if(labels==null||labels.trim().isEmpty())return null;
            List<String> result=new ArrayList<>();
            for(String raw:labels.split(",\\s*")){
                String id=raw.trim();
                if(id.isEmpty())continue;
                if(existingLabelIds==null||existingLabelIds.contains(id))result.add(id);
            }
            return result;
        }
        public boolean hasLabels(Set<String> existingLabelIds){
            List<String> ids=getLabelIds(existingLabelIds);
            return ids!=null&&!ids.isEmpty();
        }
        public boolean isValid(Set<String> existingLabelIds, boolean allowInvalid){
            if(hasLabels(existingLabelIds))return true;
            return allowInvalid&&labels!=null&&!labels.trim().isEmpty();
        }
    }

    /** F09/F62/F121 local configuration repository and task projection. */
    public static final class Repository {
        private final android.content.SharedPreferences prefs;
        public Repository(android.content.Context context){prefs=context.getApplicationContext().getSharedPreferences("app_configs_v1",android.content.Context.MODE_PRIVATE);}
        public synchronized void save(ConfigSettings value){
            if(value==null)throw new IllegalArgumentException("value");
            org.json.JSONObject o=new org.json.JSONObject();
            try{
                o.put("version",value.version).put("id",value.id).put("appParts",value.appParts).put("locations",value.locations)
                 .put("syncOption",value.syncOption).put("restorePermissionsMode",value.restorePermissionsMode)
                 .put("restoreSpecialPermissions",value.restoreSpecialPermissions==null?org.json.JSONObject.NULL:value.restoreSpecialPermissions)
                 .put("restoreSsaid",value.restoreSsaid==null?org.json.JSONObject.NULL:value.restoreSsaid)
                 .put("compressionLevel",value.compressionLevel==null?org.json.JSONObject.NULL:value.compressionLevel)
                 .put("cacheBackup",value.cacheBackup==null?org.json.JSONObject.NULL:value.cacheBackup)
                 .put("enabled",value.enabled==null?org.json.JSONObject.NULL:value.enabled);
                prefs.edit().putString(value.id,o.toString()).apply();
            }catch(Exception e){throw new IllegalStateException("config serialization failed",e);}
        }
        public synchronized ConfigSettings get(String id){
            String raw=prefs.getString(id,null);if(raw==null)return null;try{org.json.JSONObject o=new org.json.JSONObject(raw);
                return new ConfigSettings(o.optInt("version",1),o.optString("id",id),null,o.optString("appParts",null),
                    o.optString("locations",null),o.optString("syncOption",null),null,null,null,
                    o.optString("restorePermissionsMode",null),nullable(o,"restoreSpecialPermissions"),nullable(o,"restoreSsaid"),
                    nullable(o,"compressionLevel"),nullable(o,"cacheBackup"),null,nullable(o,"enabled"));
            }catch(Exception e){return null;}
        }
        private Integer nullable(org.json.JSONObject o,String k){return o.isNull(k)?null:o.optInt(k);}
        public synchronized void remove(String id){prefs.edit().remove(id).apply();}
    }
    public static final class TaskInput {
        public final String appId; public final List<String> parts,locations; public final String syncOption;
        public final MultipleBackupStrategy multipleBackupStrategy; public final List<AppBackupLimitItem> backupLimits;
        public final Integer restoreSpecialPermissions,restoreSsaid,compressionLevel,cacheBackup;
        public TaskInput(ConfigSettings c,java.util.Set<String> labels){
            if(c==null||!c.isValid(labels))throw new IllegalArgumentException("invalid config");
            appId=c.id;parts=split(c.appParts);locations=split(c.locations);syncOption=c.syncOption;
            multipleBackupStrategy=c.multipleBackupStrategy;backupLimits=c.backupLimits==null?java.util.Collections.emptyList():c.backupLimits;
            restoreSpecialPermissions=c.restoreSpecialPermissions;restoreSsaid=c.restoreSsaid;compressionLevel=c.compressionLevel;cacheBackup=c.cacheBackup;
        }
        private static List<String> split(String s){if(s==null||s.trim().isEmpty())return java.util.Collections.emptyList();List<String> o=new ArrayList<>();for(String x:s.split(",\\s*"))if(!x.trim().isEmpty())o.add(x.trim());return java.util.Collections.unmodifiableList(o);}
    }
    public static final class LimitPolicy {
        public boolean allowed(String part,long bytes,boolean local,boolean bypass,List<AppBackupLimitItem> limits){
            if(bypass)return true;if(limits==null)return true;for(AppBackupLimitItem x:limits)if(x!=null&&x.getPart().equalsIgnoreCase(part)){long max=local?x.getLocalLimitBytes():x.getCloudLimitBytes();return max<=0||bytes<=max;}return true;
        }
    }
    public static final class CachePolicy {
        public static final String KEY="backup_app_cache",LEGACY_KEY="KEY_BACKUP_APP_CACHE";
        public boolean enabled(android.content.SharedPreferences p){return p.getBoolean(KEY,p.getBoolean(LEGACY_KEY,false));}
        public boolean includePath(android.content.SharedPreferences p,String path){if(enabled(p))return true;return path==null||!path.toLowerCase(java.util.Locale.ROOT).contains("/cache/");}
        public String warning(){return "Backing up app cache may increase backup size and cache can be regenerated.";}
    }
    public static final class CompressionPolicy {
        public static final String KEY="compression_level_app_data";
        public int resolve(android.content.SharedPreferences p,int defaultValue,int min,int max){int v=p.getInt(KEY,defaultValue);return v<min||v>max?defaultValue:v;}
    }
    public static final class RestoreSpecialPolicy {
        public static final String KEY="restore_special_permissions";
        public boolean effective(android.content.SharedPreferences global,ConfigSettings config,boolean rootAvailable){
            if(config!=null&&config.restoreSpecialPermissions!=null)return config.restoreSpecialPermissions!=0;
            if(!rootAvailable)return false;return global.getBoolean(KEY,true);
        }
    }
    public static final class TransferCodec {
        public String encode(ConfigSettings c){
            if(c==null)throw new IllegalArgumentException("config");org.json.JSONObject o=new org.json.JSONObject();
            try{o.put("id",c.id).put("version",c.version).put("appParts",c.appParts).put("locations",c.locations).put("syncOption",c.syncOption)
                .put("archiveBackup",c.archiveBackup==null?org.json.JSONObject.NULL:c.archiveBackup)
                .put("restorePermissionsMode",c.restorePermissionsMode).put("restoreSpecialPermissions",c.restoreSpecialPermissions==null?org.json.JSONObject.NULL:c.restoreSpecialPermissions)
                .put("restoreSsaid",c.restoreSsaid==null?org.json.JSONObject.NULL:c.restoreSsaid).put("compressionLevel",c.compressionLevel==null?org.json.JSONObject.NULL:c.compressionLevel)
                .put("cacheBackup",c.cacheBackup==null?org.json.JSONObject.NULL:c.cacheBackup).put("isForceRedo",c.isForceRedo==null?org.json.JSONObject.NULL:c.isForceRedo)
                .put("enabled",c.enabled==null?org.json.JSONObject.NULL:c.enabled); return o.toString();
            }catch(Exception e){throw new IllegalStateException(e);}
        }
        public ConfigSettings decode(String raw){
            if(raw==null||raw.trim().isEmpty())return null;try{org.json.JSONObject o=new org.json.JSONObject(raw);String id=o.optString("id","");
                if(id.isEmpty())return null;Integer rs=nullable(o,"restoreSpecialPermissions"),ssa=nullable(o,"restoreSsaid"),cl=nullable(o,"compressionLevel"),cb=nullable(o,"cacheBackup"),fr=nullable(o,"isForceRedo"),en=nullable(o,"enabled");
                return new ConfigSettings(o.optInt("version",1),id,null,o.optString("appParts",null),o.optString("locations",null),o.optString("syncOption",null),null,nullable(o,"archiveBackup"),null,o.optString("restorePermissionsMode",null),rs,ssa,cl,cb,fr,en);
            }catch(Exception e){return null;}
        }
        private Integer nullable(org.json.JSONObject o,String k){return o.isNull(k)?null:o.optInt(k);}
        public boolean validate(ConfigSettings c,java.util.Set<String> labelIds){return c!=null&&c.isValid(labelIds);}
    }ge com.bare.appconfigs.data;

import com.bare.settings.MultipleBackupStrategy;
import com.bare.settings.appbackuplimits.AppBackupLimitItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/** Reference-shaped App configuration validation/normalization boundary. */
public final class ConfigSettings {
    private final int version;
    private final String id;
    private final ApplyData applyData;
    private final String appParts;
    private final String locations;
    private final String syncOption;
    private final List<AppBackupLimitItem> backupLimits;
    private final Integer archiveBackup;
    private final MultipleBackupStrategy multipleBackupStrategy;
    private final String restorePermissionsMode;
    private final Integer restoreSpecialPermissions;
    private final Integer restoreSsaid;
    private final Integer compressionLevel;
    private final Integer cacheBackup;
    private final Integer isForceRedo;
    private final Integer enabled;

    public ConfigSettings(int version, String id, ApplyData applyData, String appParts,
            String locations, String syncOption, List<AppBackupLimitItem> backupLimits,
            Integer archiveBackup, MultipleBackupStrategy multipleBackupStrategy,
            String restorePermissionsMode, Integer restoreSpecialPermissions,
            Integer restoreSsaid, Integer compressionLevel, Integer cacheBackup,
            Integer isForceRedo, Integer enabled) {
        if (id == null) throw new NullPointerException("id");
        this.version=version; this.id=id; this.applyData=applyData; this.appParts=appParts;
        this.locations=locations; this.syncOption=syncOption;
        this.backupLimits=backupLimits==null?null:new ArrayList<>(backupLimits);
        this.archiveBackup=archiveBackup; this.multipleBackupStrategy=multipleBackupStrategy;
        this.restorePermissionsMode=restorePermissionsMode;
        this.restoreSpecialPermissions=restoreSpecialPermissions; this.restoreSsaid=restoreSsaid;
        this.compressionLevel=compressionLevel; this.cacheBackup=cacheBackup;
        this.isForceRedo=isForceRedo; this.enabled=enabled;
    }

    public ApplyData getApplyData(){return applyData;}
    public String getId(){return id;}
    public String getAppParts(){return appParts;}
    public String getLocations(){return locations;}
    public String getSyncOption(){return syncOption;}
    public List<AppBackupLimitItem> getBackupLimits(){return backupLimits==null?null:Collections.unmodifiableList(backupLimits);}
    public Integer getArchiveBackup(){return archiveBackup;}
    public MultipleBackupStrategy getMultipleBackupStrategy(){return multipleBackupStrategy;}
    public String getRestorePermissionsMode(){return restorePermissionsMode;}
    public Integer getRestoreSpecialPermissions(){return restoreSpecialPermissions;}
    public Integer getRestoreSsaid(){return restoreSsaid;}
    public Integer getCompressionLevel(){return compressionLevel;}
    public Integer getCacheBackup(){return cacheBackup;}
    public Integer getIsForceRedo(){return isForceRedo;}
    public Integer getEnabled(){return enabled;}

    public boolean isValid(Set<String> existingLabelIds, boolean allowInvalidApplyData){
        return applyData!=null && applyData.isValid(existingLabelIds, allowInvalidApplyData);
    }
    public boolean isValid(Set<String> existingLabelIds){return isValid(existingLabelIds,false);}

    public ConfigSettings removeCloudLocation(){
        if(locations==null)return this;
        List<String> kept=new ArrayList<>();
        for(String token:locations.split(",\\s*")) if(!"CLOUD".equals(token)) kept.add(token);
        String normalized=String.join(", ",kept);
        return new ConfigSettings(version,id,applyData,appParts,normalized.isEmpty()?null:normalized,syncOption,
                backupLimits,archiveBackup,multipleBackupStrategy,restorePermissionsMode,
                restoreSpecialPermissions,restoreSsaid,compressionLevel,cacheBackup,isForceRedo,enabled);
    }

    public static final class ApplyData {
        private final String labels;
        public ApplyData(String labels){this.labels=labels;}
        public String getLabelsRaw(){return labels;}

        public List<String> getLabelIds(Set<String> existingLabelIds){
            if(labels==null||labels.trim().isEmpty())return null;
            List<String> result=new ArrayList<>();
            for(String raw:labels.split(",\\s*")){
                String id=raw.trim();
                if(id.isEmpty())continue;
                if(existingLabelIds==null||existingLabelIds.contains(id))result.add(id);
            }
            return result;
        }
        public boolean hasLabels(Set<String> existingLabelIds){
            List<String> ids=getLabelIds(existingLabelIds);
            return ids!=null&&!ids.isEmpty();
        }
        public boolean isValid(Set<String> existingLabelIds, boolean allowInvalid){
            if(hasLabels(existingLabelIds))return true;
            return allowInvalid&&labels!=null&&!labels.trim().isEmpty();
        }
    }

    /** F09/F62/F121 local configuration repository and task projection. */
    public static final class Repository {
        private final android.content.SharedPreferences prefs;
        public Repository(android.content.Context context){prefs=context.getApplicationContext().getSharedPreferences("app_configs_v1",android.content.Context.MODE_PRIVATE);}
        public synchronized void save(ConfigSettings value){
            if(value==null)throw new IllegalArgumentException("value");
            org.json.JSONObject o=new org.json.JSONObject();
            try{
                o.put("version",value.version).put("id",value.id).put("appParts",value.appParts).put("locations",value.locations)
                 .put("syncOption",value.syncOption).put("restorePermissionsMode",value.restorePermissionsMode)
                 .put("restoreSpecialPermissions",value.restoreSpecialPermissions==null?org.json.JSONObject.NULL:value.restoreSpecialPermissions)
                 .put("restoreSsaid",value.restoreSsaid==null?org.json.JSONObject.NULL:value.restoreSsaid)
                 .put("compressionLevel",value.compressionLevel==null?org.json.JSONObject.NULL:value.compressionLevel)
                 .put("cacheBackup",value.cacheBackup==null?org.json.JSONObject.NULL:value.cacheBackup)
                 .put("enabled",value.enabled==null?org.json.JSONObject.NULL:value.enabled);
                prefs.edit().putString(value.id,o.toString()).apply();
            }catch(Exception e){throw new IllegalStateException("config serialization failed",e);}
        }
        public synchronized ConfigSettings get(String id){
            String raw=prefs.getString(id,null);if(raw==null)return null;try{org.json.JSONObject o=new org.json.JSONObject(raw);
                return new ConfigSettings(o.optInt("version",1),o.optString("id",id),null,o.optString("appParts",null),
                    o.optString("locations",null),o.optString("syncOption",null),null,null,null,
                    o.optString("restorePermissionsMode",null),nullable(o,"restoreSpecialPermissions"),nullable(o,"restoreSsaid"),
                    nullable(o,"compressionLevel"),nullable(o,"cacheBackup"),null,nullable(o,"enabled"));
            }catch(Exception e){return null;}
        }
        private Integer nullable(org.json.JSONObject o,String k){return o.isNull(k)?null:o.optInt(k);}
        public synchronized void remove(String id){prefs.edit().remove(id).apply();}
    }
    public static final class TaskInput {
        public final String appId; public final List<String> parts,locations; public final String syncOption;
        public final MultipleBackupStrategy multipleBackupStrategy; public final List<AppBackupLimitItem> backupLimits;
        public final Integer restoreSpecialPermissions,restoreSsaid,compressionLevel,cacheBackup;
        public TaskInput(ConfigSettings c,java.util.Set<String> labels){
            if(c==null||!c.isValid(labels))throw new IllegalArgumentException("invalid config");
            appId=c.id;parts=split(c.appParts);locations=split(c.locations);syncOption=c.syncOption;
            multipleBackupStrategy=c.multipleBackupStrategy;backupLimits=c.backupLimits==null?java.util.Collections.emptyList():c.backupLimits;
            restoreSpecialPermissions=c.restoreSpecialPermissions;restoreSsaid=c.restoreSsaid;compressionLevel=c.compressionLevel;cacheBackup=c.cacheBackup;
        }
        private static List<String> split(String s){if(s==null||s.trim().isEmpty())return java.util.Collections.emptyList();List<String> o=new ArrayList<>();for(String x:s.split(",\\s*"))if(!x.trim().isEmpty())o.add(x.trim());return java.util.Collections.unmodifiableList(o);}
    }
    public static final class LimitPolicy {
        public boolean allowed(String part,long bytes,boolean local,boolean bypass,List<AppBackupLimitItem> limits){
            if(bypass)return true;if(limits==null)return true;for(AppBackupLimitItem x:limits)if(x!=null&&x.getPart().equalsIgnoreCase(part)){long max=local?x.getLocalLimitBytes():x.getCloudLimitBytes();return max<=0||bytes<=max;}return true;
        }
    }
    public static final class CachePolicy {
        public static final String KEY="backup_app_cache",LEGACY_KEY="KEY_BACKUP_APP_CACHE";
        public boolean enabled(android.content.SharedPreferences p){return p.getBoolean(KEY,p.getBoolean(LEGACY_KEY,false));}
        public boolean includePath(android.content.SharedPreferences p,String path){if(enabled(p))return true;return path==null||!path.toLowerCase(java.util.Locale.ROOT).contains("/cache/");}
        public String warning(){return "Backing up app cache may increase backup size and cache can be regenerated.";}
    }
    public static final class CompressionPolicy {
        public static final String KEY="compression_level_app_data";
        public int resolve(android.content.SharedPreferences p,int defaultValue,int min,int max){int v=p.getInt(KEY,defaultValue);return v<min||v>max?defaultValue:v;}
    }
    public static final class RestoreSpecialPolicy {
        public static final String KEY="restore_special_permissions";
        public boolean effective(android.content.SharedPreferences global,ConfigSettings config,boolean rootAvailable){
            if(config!=null&&config.restoreSpecialPermissions!=null)return config.restoreSpecialPermissions!=0;
            if(!rootAvailable)return false;return global.getBoolean(KEY,true);
        }
    }
    public static final class TransferCodec {
        public String encode(ConfigSettings c){if(c==null)throw new IllegalArgumentException("config");org.json.JSONObject o=new org.json.JSONObject();try{o.put("id",c.id).put("version",c.version).put("appParts",c.appParts).put("locations",c.locations).put("syncOption",c.syncOption);return o.toString();}catch(Exception e){throw new IllegalStateException(e);}}
        public ConfigSettings decode(String raw){if(raw==null||raw.trim().isEmpty())return null;try{org.json.JSONObject o=new org.json.JSONObject(raw);String id=o.optString("id","");if(id.isEmpty())return null;return new ConfigSettings(o.optInt("version",1),id,null,o.optString("appParts",null),o.optString("locations",null),o.optString("syncOption",null),null,null,null,null,null,null,null,null,null,1);}catch(Exception e){return null;}}
    }

}
