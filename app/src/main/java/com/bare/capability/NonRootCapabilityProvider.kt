package com.bare.capability

import android.content.Context
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream

class NonRootCapabilityProvider(private val context: Context) {
    fun probe(): NonRootProbeResult = NonRootProbeResult.Success("Android app-visible APIs")
    fun copyPackageApks(packageName: String, destinationDir: File): NonRootCopyResult {
        if (!packageName.matches(PACKAGE_REGEX)) return NonRootCopyResult.Failed("Invalid package name")
        val info = runCatching { context.packageManager.getApplicationInfo(packageName, 0) }.getOrElse {
            return NonRootCopyResult.Failed("Package not found: " + packageName)
        }
        if (!destinationDir.exists() && !destinationDir.mkdirs()) return NonRootCopyResult.Failed("Unable to create staging directory")
        val sources = buildList { add(info.sourceDir); info.splitSourceDirs?.let(::addAll) }
        return runCatching { sources.mapIndexed { index, source ->
            val destination = File(destinationDir, if (index == 0) "base.apk" else "split-" + index + ".apk")
            FileInputStream(source).use { input -> FileOutputStream(destination).use { output -> input.copyTo(output) } }
            check(destination.isFile && destination.length() > 0) { "APK copy produced an empty file" }; destination
        } }.fold({ NonRootCopyResult.Success(it) }, {
            destinationDir.deleteRecursively(); NonRootCopyResult.Failed(it.message ?: it::class.java.simpleName)
        })
    }
    companion object { private val PACKAGE_REGEX = Regex("[A-Za-z0-9_]+(?:\\\\.[A-Za-z0-9_]+)+") }
}

sealed interface NonRootProbeResult { data class Success(val identity: String) : NonRootProbeResult; data class Failed(val reason: String) : NonRootProbeResult }
sealed interface NonRootCopyResult { data class Success(val files: List<File>) : NonRootCopyResult; data class Failed(val reason: String) : NonRootCopyResult }