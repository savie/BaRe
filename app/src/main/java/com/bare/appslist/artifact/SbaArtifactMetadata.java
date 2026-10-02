package com.bare.appslist.artifact;
public final class SbaArtifactMetadata {
 private final String kind,version,packageName; private final long originalSize,compressedSize; private final int flags;
 public SbaArtifactMetadata(String kind,String version,String packageName,long originalSize,long compressedSize,int flags){this.kind=kind;this.version=version;this.packageName=packageName;this.originalSize=originalSize;this.compressedSize=compressedSize;this.flags=flags;}
 public String getKind(){return kind;} public String getVersion(){return version;} public String getPackageName(){return packageName;} public long getOriginalSize(){return originalSize;} public long getCompressedSize(){return compressedSize;} public int getFlags(){return flags;}
}