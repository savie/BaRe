package com.bare.tasks;

import android.app.IntentService;
import android.content.Intent;
import android.os.IBinder;
import android.os.Build;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.pm.ServiceInfo;

import com.bare.core.model.TaskErrorSummary;
import com.bare.core.model.TaskState;
import com.bare.core.model.TaskResult;

/**
 * Reference TaskService lifecycle boundary.
 *
 * The service owns FGS/task-manager lifecycle and consumes the provider
 * registry. It never reports success when no concrete feature provider exists.
 */
public final class TaskService extends IntentService {
    public static final String EXTRA_RUN_MODE = "schedule_run_mode";
    public static final String EXTRA_FORCED_RUN = "is_forced_run";
    public static final String EXTRA_SCHEDULE_ITEM_IDS = "schedule_item_ids";

    private final TaskStateRegistry stateRegistry = TaskStateRegistry.getInstance();
    private final TaskProviderRegistry providerRegistry = TaskProviderRegistry.getInstance();

    public TaskService() {
        super("TaskService");
    }

    public TaskStateRegistry getStateRegistry() {
        return stateRegistry;
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        stateRegistry.beginTask();
        boolean foregroundStarted = false;
        try {
            Notification notification = new Notification.Builder(this, "normal_channel")
                    .setSmallIcon(com.bare.R.drawable.ic_stat)
                    .setContentTitle("BΛR☰")
                    .setContentText("Running backup task")
                    .setOngoing(true)
                    .build();
            if (Build.VERSION.SDK_INT >= 29) {
                startForeground(
                        12,
                        notification,
                        ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC);
            } else {
                startForeground(12, notification);
            }
            foregroundStarted = true;
        } catch (RuntimeException error) {
            stateRegistry.publishErrorSummary(
                    new TaskErrorSummary(message(error), true));
            stateRegistry.publishServiceState(TaskState.COMPLETE);
            return;
        }

        if (stateRegistry.isCancelRequested() || stateRegistry.isForceStopRequested()) {
            stateRegistry.publishServiceState(TaskState.CANCELLED);
            if (foregroundStarted) stopForeground(STOP_FOREGROUND_REMOVE);
            return;
        }

        java.util.List<TaskManagerEngine.Provider> providers = providerRegistry.snapshot();
        if (providers.isEmpty()) {
            stateRegistry.publishErrorSummary(
                    new TaskErrorSummary("No registered task provider for this execution request.", true));
            stateRegistry.publishServiceState(TaskState.COMPLETE);
            if (foregroundStarted) stopForeground(STOP_FOREGROUND_REMOVE);
            return;
        }

        TaskManagerEngine manager = new TaskManagerEngine(stateRegistry, providers);
        if (!manager.register()) {
            stateRegistry.publishErrorSummary(
                    new TaskErrorSummary("Task execution overlap or cancellation prevented start.", true));
            stateRegistry.publishServiceState(TaskState.CANCELLED);
            return;
        }

        TaskManagerEngine.RunResult result;
        try {
            result = manager.execute();
        } catch (Throwable error) {
            stateRegistry.publishErrorSummary(
                    new TaskErrorSummary(message(error), true));
            stateRegistry.publishServiceState(TaskState.COMPLETE);
            return;
        }

        if (!result.errors.isEmpty()) {
            stateRegistry.publishErrorSummary(
                    new TaskErrorSummary(String.join("\n", result.errors), true));
        }
        if (result.result == TaskResult.CANCELLED) {
            stateRegistry.publishServiceState(TaskState.CANCELLED);
        } else {
            stateRegistry.publishServiceState(TaskState.COMPLETE);
        }
        if (foregroundStarted) stopForeground(STOP_FOREGROUND_REMOVE);
    }

    public void publishState(TaskState state) {
        stateRegistry.publishServiceState(state);
    }

    private static String message(Throwable error) {
        String value = error == null ? null : error.getMessage();
        return value == null || value.isEmpty()
                ? error == null ? "unknown" : error.getClass().getSimpleName()
                : value;
    }

    @Override public IBinder onBind(Intent intent) { return null; }

    public static final class AppsWorkingDir {
        public static final String DIR_NAME="app_tasks";
        public enum Access { INTERNAL, EXTERNAL, SHIZUKU }
        public static final class Result {
            public final java.io.File directory; public final Access access;
            public final boolean created; public final String error;
            Result(java.io.File d,Access a,boolean c,String e){directory=d;access=a;created=c;error=e;}
        }
        public Result open(java.io.File base,long taskId,boolean shizukuAvailable){return open(base,null,taskId,shizukuAvailable);}
        public Result open(java.io.File internalBase,java.io.File externalBase,long taskId,boolean shizukuAvailable){
            if(internalBase==null&&externalBase==null)return new Result(null,Access.INTERNAL,false,"missing base");
            java.io.File base=externalBase!=null?externalBase:internalBase;
            Access access=externalBase!=null?Access.EXTERNAL:Access.INTERNAL;
            java.io.File normal=new java.io.File(base,DIR_NAME+java.io.File.separator+taskId);
            try{if(!normal.exists()&&!normal.mkdirs())return new Result(null,access,false,"workspace creation failed");return new Result(normal,access,true,null);}
            catch(SecurityException e){if(shizukuAvailable)return new Result(normal,Access.SHIZUKU,false,e.getMessage());return new Result(null,access,false,e.getMessage());}
        }
        public boolean cleanup(java.io.File root){if(root==null||!root.exists())return true;java.io.File[] fs=root.listFiles();if(fs!=null)for(java.io.File f:fs)delete(f);return !root.exists();}
        private void delete(java.io.File f){if(f.isDirectory()){java.io.File[] xs=f.listFiles();if(xs!=null)for(java.io.File x:xs)delete(x);}f.delete();}
    }
    public static final class SbaAppDataArchiveMetadata {
        public final String appId,kind,packageName,versionName,compressionLevel; public final int version; public final Long versionCode;
        public final boolean backupCache,encrypted,includeDeviceProtectedData; public final long dataSize,deDataSize; public final java.util.List<String> entries;
        public SbaAppDataArchiveMetadata(String appId,int version,String kind,String packageName,String versionName,Long versionCode,
                boolean backupCache,boolean encrypted,String compressionLevel,boolean includeDeviceProtectedData,long dataSize,long deDataSize,java.util.List<String> entries){
            this.appId=appId;this.version=version;this.kind=kind;this.packageName=packageName;this.versionName=versionName;this.versionCode=versionCode;
            this.backupCache=backupCache;this.encrypted=encrypted;this.compressionLevel=compressionLevel;this.includeDeviceProtectedData=includeDeviceProtectedData;
            this.dataSize=Math.max(0,dataSize);this.deDataSize=Math.max(0,deDataSize);
            this.entries=java.util.Collections.unmodifiableList(entries==null?new java.util.ArrayList<>():new java.util.ArrayList<>(entries));
        }
        public String toJson(){try{return new org.json.JSONObject().put("appId",appId).put("version",version).put("kind",kind).put("packageName",packageName).put("versionName",versionName).put("versionCode",versionCode==null?org.json.JSONObject.NULL:versionCode).put("backupCache",backupCache).put("encrypted",encrypted).put("compressionLevel",compressionLevel).put("includeDeviceProtectedData",includeDeviceProtectedData).put("dataSize",dataSize).put("deDataSize",deDataSize).put("entries",new org.json.JSONArray(entries)).toString();}catch(Exception e){throw new IllegalStateException(e);}}
    }
    public static final class ResultAggregator {
        public static final class Unit { public final boolean success,cancelled,retryable; public Unit(boolean s,boolean c,boolean r){success=s;cancelled=c;retryable=r;} }
        private final java.util.List<Unit> units=new java.util.ArrayList<>(); private boolean cancel,forceStop,restarted;
        public void add(Unit u){if(u!=null)units.add(u);} public void requestCancel(){cancel=true;} public void requestForceStop(){forceStop=true;} public void markProcessDeath(){restarted=true;}
        public String terminal(){int ok=0,fail=0;for(Unit u:units){if(u.success)ok++;else fail++;}if(restarted)return "PROCESS_RESTARTED";if(ok==0&&(cancel||forceStop))return "CANCELLED";if(fail==0)return "COMPLETED";return ok>0?"PARTIAL_FAILURE":"ERROR";}
    }
}
