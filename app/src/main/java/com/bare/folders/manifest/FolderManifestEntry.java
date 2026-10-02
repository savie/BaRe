package com.bare.folders.manifest;
public final class FolderManifestEntry {
 private final String path; private final long size; private final String baseId;
 public FolderManifestEntry(String path,long size,String baseId){this.path=path;this.size=Math.max(0,size);this.baseId=baseId;}
 public String getPath(){return path;} public long getSize(){return size;} public String getBaseId(){return baseId;}
}