package com.bare.apps.task
import android.content.Context
import java.io.File
class AppsWorkingDir(context:Context){
 val root=File(context.cacheDir,"apps-working").apply{mkdirs()}
 val splits=File(root,"splits").apply{mkdirs()}
 fun app(packageName:String)=File(root,packageName.replace('.','_')).apply{mkdirs()}
 fun clear(){root.listFiles()?.forEach{it.deleteRecursively()};splits.mkdirs()}
}