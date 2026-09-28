package com.bare.apps.task

import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.pm.PackageInfo
import android.content.pm.PackageInstaller
import android.content.pm.PackageManager
import android.os.Build
import java.io.File

class InstallerSourceProxy(private val context: Context) {
    fun install(apk: File, packageName: String): Boolean {
        val expected = archivePackageInfo(apk) ?: return false
        if (expected.packageName != packageName || expected.splitName != null) return false
        return installSession(
            packageName = packageName,
            apks = listOf(apk),
            inheritExisting = false,
            expectedVersionCode = expected.longVersionCode,
            expectedSplitNames = emptySet()
        )
    }

    fun installSplits(packageName: String, apks: List<File>): Boolean {
        val installed = runCatching {
            context.packageManager.getPackageInfo(packageName, PackageManager.GET_META_DATA)
        }.getOrNull() ?: return false

        val versionCode = installed.longVersionCode
        val compatible = apks.filter { apk ->
            archivePackageInfo(apk)?.let {
                it.packageName == packageName &&
                    it.longVersionCode == versionCode &&
                    it.splitName != null
            } == true
        }

        if (compatible.isEmpty()) return false
        val splitNames = compatible.mapNotNull {
            archivePackageInfo(it)?.splitName
        }.toSet()

        return installSession(
            packageName = packageName,
            apks = compatible,
            inheritExisting = true,
            expectedVersionCode = versionCode,
            expectedSplitNames = splitNames
        ) || installSession(
            packageName = packageName,
            apks = compatible,
            inheritExisting = true,
            expectedVersionCode = versionCode,
            expectedSplitNames = splitNames
        )
    }

    fun installSharedLibraries(apks: List<File>): Boolean {
        var installedAny = false
        apks.forEach { apk ->
            val info = archivePackageInfo(apk) ?: return@forEach
            if (
                installSession(
                    packageName = info.packageName,
                    apks = listOf(apk),
                    inheritExisting = false,
                    expectedVersionCode = info.longVersionCode,
                    expectedSplitNames = emptySet()
                )
            ) {
                installedAny = true
            }
        }
        return installedAny
    }

    private fun archivePackageInfo(apk: File): PackageInfo? {
        if (!apk.exists() || apk.length() <= 0L) return null
        return runCatching {
            context.packageManager.getPackageArchiveInfo(
                apk.absolutePath,
                PackageManager.GET_META_DATA
            )
        }.getOrNull()
    }

    private fun installSession(
        packageName: String,
        apks: List<File>,
        inheritExisting: Boolean,
        expectedVersionCode: Long,
        expectedSplitNames: Set<String>
    ): Boolean {
        if (apks.isEmpty() || apks.any { !it.exists() || it.length() <= 0L }) return false

        val installer = context.packageManager.packageInstaller
        val mode = if (
            inheritExisting &&
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP
        ) {
            PackageInstaller.SessionParams.MODE_INHERIT_EXISTING
        } else {
            PackageInstaller.SessionParams.MODE_FULL_INSTALL
        }

        val params = PackageInstaller.SessionParams(mode).apply {
            setAppPackageName(packageName)
            if (Build.VERSION.SDK_INT >= 31) {
                setRequireUserAction(PackageInstaller.SessionParams.USER_ACTION_NOT_REQUIRED)
                setInstallReason(PackageManager.INSTALL_REASON_USER)
                runCatching { setInstallerPackageName(context.packageName) }
                runCatching {
                    setPackageSource(PackageInstaller.SessionParams.PACKAGE_SOURCE_LOCAL)
                }
            }
            setSize(apks.sumOf { it.length() })
        }

        val id = runCatching { installer.createSession(params) }.getOrElse { return false }
        val session = runCatching { installer.openSession(id) }.getOrElse {
            installer.abandonSession(id)
            return false
        }

        return try {
            apks.forEachIndexed { index, apk ->
                val name = if (index == 0 && !inheritExisting) "base.apk" else apk.name
                session.openWrite(name, 0, apk.length()).use { out ->
                    apk.inputStream().use { input -> input.copyTo(out) }
                    out.fsync()
                }
            }

            val intent = Intent(context, InstallResultReceiver::class.java)
                .setPackage(context.packageName)
            val pi = PendingIntent.getBroadcast(
                context,
                id,
                intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE
            )
            session.commit(pi.intentSender)
            waitForInstall(
                packageName,
                expectedVersionCode,
                expectedSplitNames,
                120_000L
            )
        } catch (_: Exception) {
            runCatching { session.abandon() }
            false
        } finally {
            session.close()
        }
    }

    private fun waitForInstall(
        packageName: String,
        expectedVersionCode: Long,
        expectedSplitNames: Set<String>,
        timeoutMs: Long
    ): Boolean {
        val deadline = System.currentTimeMillis() + timeoutMs
        while (System.currentTimeMillis() < deadline) {
            val installed = runCatching {
                context.packageManager.getPackageInfo(
                    packageName,
                    PackageManager.GET_META_DATA
                )
            }.getOrNull()

            if (
                installed != null &&
                installed.longVersionCode == expectedVersionCode
            ) {
                val actualSplitNames = installed.applicationInfo?.splitNames?.toSet().orEmpty()
                if (actualSplitNames.containsAll(expectedSplitNames)) {
                    val source = if (Build.VERSION.SDK_INT >= 30) {
                        runCatching {
                            context.packageManager
                                .getInstallSourceInfo(packageName)
                                .initiatingPackageName
                        }.getOrNull()
                    } else {
                        runCatching {
                            context.packageManager.getInstallerPackageName(packageName)
                        }.getOrNull()
                    }
                    if (source == null || source == context.packageName) return true
                }
            }
            Thread.sleep(250L)
        }
        return false
    }
}
