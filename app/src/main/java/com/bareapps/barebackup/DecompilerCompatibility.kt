package com.bareapps.barebackup

import android.app.ActivityManager
import android.app.ApplicationStartInfo

/**
 * Kotlin compatibility extensions for Java-shaped calls emitted by the
 * decompiler in BareApp.kt. Kept separate so BareApp.kt remains untouched.
 */
@Suppress("EXTENSION_SHADOWED_BY_MEMBER")
fun Any.getClass(): Class<out Any> = javaClass

fun String.concat(other: String): String = this + other

@Suppress("NewApi")
fun ActivityManager.historicalProcessStartReasons(maxNum: Int): List<ApplicationStartInfo>? =
    getHistoricalProcessStartReasons(maxNum)
