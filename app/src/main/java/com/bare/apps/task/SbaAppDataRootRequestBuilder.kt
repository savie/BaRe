package com.bare.apps.task
import java.io.File
class SbaAppDataRootRequestBuilder{fun build(packageName:String,target:File)=Request(packageName,target);data class Request(val packageName:String,val target:File)}