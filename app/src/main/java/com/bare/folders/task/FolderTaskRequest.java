package com.bare.folders.task;
public final class FolderTaskRequest {
 public enum Mode { BACKUP, RESTORE }
 private final Mode mode; private final String folderId;
 public FolderTaskRequest(Mode mode,String folderId){if(mode==null)throw new IllegalArgumentException("mode");this.mode=mode;this.folderId=folderId;}
 public Mode getMode(){return mode;} public String getFolderId(){return folderId;}
}