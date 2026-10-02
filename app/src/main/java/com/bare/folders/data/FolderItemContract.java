package com.bare.folders.data;
public final class FolderItemContract {
 private final String id,name,path; private final boolean local,cloud;
 public FolderItemContract(String id,String name,String path,boolean local,boolean cloud){this.id=id;this.name=name;this.path=path;this.local=local;this.cloud=cloud;}
 public String getId(){return id;} public String getName(){return name;} public String getPath(){return path;} public boolean isLocal(){return local;} public boolean isCloud(){return cloud;}
}