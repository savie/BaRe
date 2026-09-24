package com.bare.feature.apps

import android.content.Context
import android.text.format.DateUtils

internal fun formatRelativeTime(context: Context, timestamp: Long): String =
    DateUtils.getRelativeTimeSpanString(
        timestamp,
        System.currentTimeMillis(),
        60_000L,
    ).toString()

internal fun formatAppSize(bytes: Long): String {
    if (bytes <= 0L) return "0 B"
    val units = arrayOf("B", "KB", "MB", "GB")
    var value = bytes.toDouble()
    var index = 0
    while (value >= 1024 && index < units.lastIndex) {
        value /= 1024
        index++
    }
    return if (index == 0) bytes.toString() + " " + units[index] else "%.1f %s".format(value, units[index])
}
