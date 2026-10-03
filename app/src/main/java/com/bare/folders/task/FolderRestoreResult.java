package com.bare.folders.task;
public final class FolderRestoreResult {
 public enum Kind{FAILURE,SUCCESS}private final Kind kind;private final long restoredFiles,restoredBytes,durationMs;private final String message;
 public FolderRestoreResult(Kind k,long files,long bytes,long duration,String msg){if(k==null)throw new IllegalArgumentException("kind");kind=k;restoredFiles=Math.max(0,files);restoredBytes=Math.max(0,bytes);durationMs=Math.max(0,duration);message=msg;}
 public Kind getKind(){return kind;}public long getRestoredFiles(){return restoredFiles;}public long getRestoredBytes(){return restoredBytes;}public long getDurationMs(){return durationMs;}public String getMessage(){return message;}
}