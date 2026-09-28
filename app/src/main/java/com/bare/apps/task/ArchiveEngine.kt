package com.bare.apps.task
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import org.apache.commons.compress.archivers.sevenz.SevenZFile
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
  require(archive.exists()&&archive.length()>0){"Archive is missing or empty"}
  target.mkdirs()
  when(detect(archive)){
   ArchiveFormat.ZIP->unpackZip(archive,target,onProgress)
   ArchiveFormat.TAR->unpackTar(archive,target,onProgress)
   ArchiveFormat.SEVEN_ZIP->unpackSevenZip(archive,target,onProgress)
   ArchiveFormat.SBA->throw UnsupportedOperationException("Swift Backup Archive format requires SBA extractor")
  }
 }
 private fun detect(file:File):ArchiveFormat{
  val h=ByteArray(8);file.inputStream().use{it.read(h)}
  return when{
   h.copyOfRange(0,4).contentEquals(byteArrayOf(0x50,0x4b,0x03,0x04))->ArchiveFormat.ZIP
   h.copyOfRange(0,6).contentEquals(byteArrayOf(0x37,0x7a,0xbc,0xaf,0x27,0x1c))->ArchiveFormat.SEVEN_ZIP
   h.copyOfRange(0,5).toString(Charsets.US_ASCII)=="ustar"->ArchiveFormat.TAR
   else->ArchiveFormat.SBA
  }
 }
 private fun unpackZip(archive:File,target:File,onProgress:(Long)->Unit){
  ZipInputStream(archive.inputStream().buffered()).use{zip->while(true){val e=zip.nextEntry?:break;val out=safeTarget(target,e.name);if(e.isDirectory)out.mkdirs()else{out.parentFile?.mkdirs();out.outputStream().buffered().use{zip.copyTo(it);onProgress(out.length())}};zip.closeEntry()}}
 }
 private fun unpackTar(archive:File,target:File,onProgress:(Long)->Unit){
  TarArchiveInputStream(archive.inputStream().buffered()).use{tar->while(true){val e=tar.nextTarEntry?:break;val out=safeTarget(target,e.name);if(e.isDirectory)out.mkdirs()else{out.parentFile?.mkdirs();out.outputStream().buffered().use{tar.copyTo(it);onProgress(out.length())}}}}
 }
 private fun unpackSevenZip(archive:File,target:File,onProgress:(Long)->Unit){
  SevenZFile(archive).use{seven->while(true){val e=seven.nextEntry?:break;val out=safeTarget(target,e.name);if(e.isDirectory)out.mkdirs()else{out.parentFile?.mkdirs();out.outputStream().buffered().use{seven.getInputStream(e).copyTo(it);onProgress(out.length())}}}}
 }
 private fun safeTarget(target:File,name:String):File{
  val out=File(target,name);require(out.canonicalPath==target.canonicalPath||out.canonicalPath.startsWith(target.canonicalPath+File.separator)){"Unsafe archive entry"}
  return out
 }
 private enum class ArchiveFormat{ZIP,TAR,SEVEN_ZIP,SBA}
}
