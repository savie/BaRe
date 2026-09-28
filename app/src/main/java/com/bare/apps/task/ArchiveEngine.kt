package com.bare.apps.task
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream
object ArchiveEngine{
 fun pack(source:File,target:File,onProgress:(Long)->Unit={}){
  target.parentFile?.mkdirs();var done=0L
  ZipOutputStream(target.outputStream().buffered()).use{zip->
   if(source.isDirectory)source.walkTopDown().filter{it.isFile}.forEach{file->
    val rel=source.toPath().relativize(file.toPath()).toString();zip.putNextEntry(ZipEntry(rel))
    file.inputStream().buffered().use{input->input.copyTo(zip);done+=file.length();onProgress(done)};zip.closeEntry()
   }else{zip.putNextEntry(ZipEntry(source.name));source.inputStream().buffered().use{input->input.copyTo(zip);done+=source.length();onProgress(done)};zip.closeEntry()}
  }
 }
 fun unpack(archive:File,target:File,onProgress:(Long)->Unit={}){
  target.mkdirs();var done=0L
  ZipInputStream(archive.inputStream().buffered()).use{zip->
   while(true){val e=zip.nextEntry?:break;val out=File(target,e.name);require(out.canonicalPath.startsWith(target.canonicalPath+File.separator)||out.canonicalPath==target.canonicalPath)
    if(e.isDirectory)out.mkdirs()else{out.parentFile?.mkdirs();out.outputStream().buffered().use{zip.copyTo(it)};done+=out.length();onProgress(done)};zip.closeEntry()
   }
  }
 }
}