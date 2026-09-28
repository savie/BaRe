package com.bare.apps.cloud
import com.bare.apps.model.*
import java.io.File
object CloudArtifactManager{
 fun descriptors(metadata:CloudMetadata,targetRoot:File):List<CloudArtifactDescriptor>{
  val out=mutableListOf<CloudArtifactDescriptor>()
  fun add(part:AppPart,link:String?,size:Long,type:Int){if(!link.isNullOrBlank())out+=CloudArtifactDescriptor(part,link,File(targetRoot,part.id.lowercase()+".artifact").absolutePath,size,type)}
  add(AppPart.APP,metadata.apkLink,metadata.apkSize,1);add(AppPart.SPLITS,metadata.splitsLink,metadata.splitsSize,2);add(AppPart.SHARED_LIBS,metadata.sharedLibsLink,metadata.sharedLibsSize,3);add(AppPart.DATA,metadata.dataLink,metadata.dataSize,4);add(AppPart.EXTDATA,metadata.extDataLink,metadata.extDataSize,5);add(AppPart.MEDIA,metadata.mediaLink,metadata.mediaSize,6);add(AppPart.EXPANSION,metadata.expansionLink,metadata.expansionSize,7)
  if(!metadata.specialDataLink.isNullOrBlank())out+=CloudArtifactDescriptor(AppPart.DATA,metadata.specialDataLink!!,File(targetRoot,"special-data.artifact").absolutePath,metadata.specialDataSize,8)
  return out
 }
 fun canReuse(local:File,expectedSize:Long)=local.exists()&&local.length()==expectedSize
}