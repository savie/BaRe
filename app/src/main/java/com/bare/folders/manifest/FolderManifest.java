package com.bare.folders.manifest;
import java.util.*;
public final class FolderManifest {
 public enum BackupType{BASE,INCREMENTAL}
 public final int version; public final String backupId,parentBackupId,sourcePath; public final BackupType backupType; public final long created; public final Map<String,FolderManifestEntry> files; public final List<String> directories; public final List<String> filesAdded,filesModified,filesDeleted,directoriesAdded,directoriesDeleted;
 public FolderManifest(int v,String id,BackupType type,String parent,long created,String source,Map<String,FolderManifestEntry> files,List<String> dirs,List<String> fa,List<String> fm,List<String> fd,List<String> da,List<String> dd){this.version=v;backupId=id;backupType=type;parentBackupId=parent;this.created=created;sourcePath=source;this.files=files==null?Collections.emptyMap():Collections.unmodifiableMap(new LinkedHashMap<>(files));directories=dirs==null?Collections.emptyList():Collections.unmodifiableList(new ArrayList<>(dirs));filesAdded=copy(fa);filesModified=copy(fm);filesDeleted=copy(fd);directoriesAdded=copy(da);directoriesDeleted=copy(dd);}
 private static List<String> copy(List<String>x){return x==null?Collections.emptyList():Collections.unmodifiableList(new ArrayList<>(x));}
 public boolean isBase(){return backupType==BackupType.BASE||parentBackupId==null||parentBackupId.isEmpty();}
 public boolean isValid(){return backupId!=null&&!backupId.isEmpty()&&backupType!=null&&sourcePath!=null&&!sourcePath.isEmpty()&&files!=null;}
 public long baseOriginalSize(){long n=0;for(FolderManifestEntry e:files.values())if(e!=null)n+=e.getSize();return n;}
}