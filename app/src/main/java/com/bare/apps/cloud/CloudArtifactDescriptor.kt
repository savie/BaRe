package com.bare.apps.cloud
import com.bare.apps.model.AppPart
data class CloudArtifactDescriptor(val part:AppPart,val remoteLink:String,val targetPath:String,val size:Long,val type:Int)