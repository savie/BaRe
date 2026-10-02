package com.bare.folders.batch;
public final class FolderBatchRequest {
 public enum Mode { BACKUP, RESTORE }
 private final Mode mode; private final boolean all;
 public FolderBatchRequest(Mode mode,boolean all){if(mode==null)throw new IllegalArgumentException("mode");this.mode=mode;this.all=all;}
 public Mode getMode(){return mode;} public boolean isAll(){return all;}
}