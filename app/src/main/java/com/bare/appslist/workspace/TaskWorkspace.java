package com.bare.appslist.workspace;
public final class TaskWorkspace {
 private final String path; private final boolean accessible;
 public TaskWorkspace(String path,boolean accessible){this.path=path;this.accessible=accessible;}
 public String getPath(){return path;} public boolean isAccessible(){return accessible;}
}