package com.bare.apps.domain
import com.bare.apps.model.*
data class RestorePreconditionResult(val allowed:Boolean,val reason:String?=null)
object RestorePreconditions{
 fun check(request:RestoreRequest):RestorePreconditionResult{
  for(part in request.parts)if(!AppsCapability.isPossible(part))return RestorePreconditionResult(false,"Capability unavailable for "+part.id)
  if(request.parts.any{it!=AppPart.APP}&&!request.app.installed)return RestorePreconditionResult(false,"App is not installed")
  return RestorePreconditionResult(true)
 }
}