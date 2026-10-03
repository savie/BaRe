package com.bare.folders.manifest;
import java.util.*;
public final class FolderManifestChain {
 public enum Result{VALID,NO_BASE,MISSING_PARENT,CYCLE,INVALID}
 public Result validate(Map<String,FolderManifest> manifests,String latestId){if(manifests==null||latestId==null)return Result.NO_BASE;Set<String> seen=new HashSet<>();String id=latestId;boolean base=false;while(id!=null&&!id.isEmpty()){if(!seen.add(id))return Result.CYCLE;FolderManifest m=manifests.get(id);if(m==null)return Result.MISSING_PARENT;if(!m.isValid())return Result.INVALID;if(m.isBase()){base=true;break;}id=m.parentBackupId;}return base?Result.VALID:Result.NO_BASE;}
 public List<FolderManifest> chain(Map<String,FolderManifest> manifests,String latestId){List<FolderManifest> out=new ArrayList<>();Set<String> seen=new HashSet<>();String id=latestId;while(id!=null&&!id.isEmpty()&&seen.add(id)){FolderManifest m=manifests==null?null:manifests.get(id);if(m==null)break;out.add(m);if(m.isBase())break;id=m.parentBackupId;}Collections.reverse(out);return Collections.unmodifiableList(out);}
}