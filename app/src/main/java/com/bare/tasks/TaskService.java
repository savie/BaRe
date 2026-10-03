package com.bare.tasks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

import com.bare.core.model.TaskState;

/**
 * Reference TaskService boundary.
 *
 * Execution, foreground-service handling, cancellation completion and feature
 * task dispatch remain downstream; state is exposed through TaskStateRegistry.
 */
public class TaskService extends Service {
    private final TaskStateRegistry stateRegistry = TaskStateRegistry.getInstance();

    public TaskStateRegistry getStateRegistry() {
        return stateRegistry;
    }

    public void publishState(TaskState state) {
        stateRegistry.publishServiceState(state);
    }

    @Override public IBinder onBind(Intent intent) { return null; }
    /** F70 per-task app workspace selection/cleanup contract. */
    public static final class AppsWorkingDir {
        public static final String DIR_NAME="app_tasks";
        public enum Access { INTERNAL, EXTERNAL, SHIZUKU }
        public static final class Result { public final java.io.File directory; public final Access access; public final boolean created; public final String error; Result(java.io.File d,Access a,boolean c,String e){directory=d;access=a;created=c;error=e;} }
        public Result open(java.io.File base,long taskId,boolean shizukuAvailable){return open(base,null,taskId,shizukuAvailable);}
        public Result open(java.io.File internalBase,java.io.File externalBase,long taskId,boolean shizukuAvailable){
            if(internalBase==null&&externalBase==null)return new Result(null,Access.INTERNAL,false,"missing base");
            java.io.File base=externalBase!=null?externalBase:internalBase;
            Access access=externalBase!=null?Access.EXTERNAL:Access.INTERNAL;
            java.io.File normal=new java.io.File(base,DIR_NAME+java.io.File.separator+taskId);
            try{if(!normal.exists()&&!normal.mkdirs())return new Result(null,Access.INTERNAL,false,"workspace creation failed");return new Result(normal,access,true,null);}
            catch(SecurityException e){if(shizukuAvailable)return new Result(normal,Access.SHIZUKU,false,e.getMessage());return new Result(null,Access.INTERNAL,false,e.getMessage());}
        }
        public boolean cleanup(java.io.File root){if(root==null||!root.exists())return true;java.io.File[] fs=root.listFiles();if(fs!=null)for(java.io.File f:fs)delete(f);return !root.exists();}
        private void delete(java.io.File f){if(f.isDirectory()){java.io.File[] xs=f.listFiles();if(xs!=null)for(java.io.File x:xs)delete(x);}f.delete();}
    }
    /** F71 SBA app-data metadata envelope. */
    public static final class SbaAppDataArchiveMetadata {
        public final String appId,kind,packageName,versionName,compressionLevel; public final int version; public final Long versionCode;
        public String toJson(){try{return new org.json.JSONObject().put("appId",appId).put("version",version).put("kind",kind).put("packageName",packageName).put("versionName",versionName).put("versionCode",versionCode==null?org.json.JSONObject.NULL:versionCode).put("backupCache",backupCache).put("encrypted",encrypted).put("compressionLevel",compressionLevel).put("includeDeviceProtectedData",includeDeviceProtectedData).put("dataSize",dataSize).put("deDataSize",deDataSize).put("entries",new org.json.JSONArray(entries)).toString();}catch(Exception e){throw new IllegalStateException(e);}}

        public final boolean backupCache,encrypted,includeDeviceProtectedData; public final long dataSize,deDataSize; public final java.util.List<String> entries;
        public SbaAppDataArchiveMetadata(String appId,int version,String kind,String packageName,String versionName,Long versionCode,
                boolean backupCache,boolean encrypted,String compressionLevel,boolean includeDeviceProtectedData,long dataSize,long deDataSize,java.util.List<String> entries){
            this.appId=appId;this.version=version;this.kind=kind;this.packageName=packageName;this.versionName=versionName;this.versionCode=versionCode;
            this.backupCache=backupCache;this.encrypted=encrypted;this.compressionLevel=compressionLevel;this.includeDeviceProtectedData=includeDeviceProtectedData;
            this.dataSize=Math.max(0,dataSize);this.deDataSize=Math.max(0,deDataSize);
            this.entries=java.util.Collections.unmodifiableList(entries==null?new java.util.ArrayList<>():new java.util.ArrayList<>(entries));
        }
    }

    /** F43 result aggregation with cancellation/restart reconciliation. */
    public static final class ResultAggregator {
        public static final class Unit { public final boolean success,cancelled,retryable; public Unit(boolean s,boolean c,boolean r){success=s;cancelled=c;retryable=r;} }
        private final java.util.List<Unit> units=new java.util.ArrayList<>(); private boolean cancel,forceStop,restarted;
        public void add(Unit u){if(u!=null)units.add(u);} public void requestCancel(){cancel=true;} public void requestForceStop(){forceStop=true;} public void markProcessDeath(){restarted=true;}
        public String terminal(){int ok=0,fail=0;for(Unit u:units){if(u.success)ok++;else fail++;}if(restarted)return "PROCESS_RESTARTED";if(ok==0&&(cancel||forceStop))return "CANCELLED";if(fail==0)return "COMPLETED";return ok>0?"PARTIAL_FAILURE":"ERROR";}
    }

}
