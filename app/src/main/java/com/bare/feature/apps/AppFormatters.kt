package com.bare.feature.apps

import android.content.Context
import com.bare.R
import java.util.concurrent.TimeUnit

internal fun formatRelativeTime(context: Context, timestamp: Long): String {
    val normalizedTimestamp = normalizePackageTimestamp(timestamp)
    val now = System.currentTimeMillis()
    if (normalizedTimestamp <= 0L || normalizedTimestamp > now) {
        return context.getString(R.string.relative_time_unavailable)
    }

    val delta = now - normalizedTimestamp
    val minutes = TimeUnit.MILLISECONDS.toMinutes(delta)
    return when {
        minutes < 1L -> context.getString(R.string.relative_time_just_now)
        minutes < 60L -> context.getString(
            if (minutes == 1L) R.string.relative_time_minute else R.string.relative_time_minutes,
            minutes,
        )
        minutes < 1440L -> {
            val hours = minutes / 60L
            context.getString(
                if (hours == 1L) R.string.relative_time_hour else R.string.relative_time_hours,
                hours,
            )
        }
        minutes < 10080L -> {
            val days = minutes / 1440L
            context.getString(
                if (days == 1L) R.string.relative_time_day else R.string.relative_time_days,
                days,
            )
        }
        minutes < 43200L -> {
            val weeks = minutes / 10080L
            context.getString(
                if (weeks == 1L) R.string.relative_time_week else R.string.relative_time_weeks,
                weeks,
            )
        }
        minutes < 525600L -> {
            val months = minutes / 43200L
            context.getString(
                if (months == 1L) R.string.relative_time_month else R.string.relative_time_months,
                months,
            )
        }
        else -> {
            val years = minutes / 525600L
            context.getString(
                if (years == 1L) R.string.relative_time_year else R.string.relative_time_years,
                years,
            )
        }
    }
}


/**
 * PackageInfo timestamps are documented as System.currentTimeMillis() values.
 * Some device/runtime observations exposed a seconds-based value, which renders
 * as an approximately 56-year-old date when treated as milliseconds. Normalize
 * only values that are unambiguously in Unix-seconds range; normal Android
 * millisecond timestamps remain unchanged.
 */
private fun normalizePackageTimestamp(timestamp: Long): Long {
    return if (timestamp in 946_684_800L..99_999_999_999L) {
        timestamp * 1000L
    } else {
        timestamp
    }
}

internal fun formatAppSize(bytes: Long): String {
    if (bytes <= 0L) return "0 B"
    val units = arrayOf("B", "KB", "MB", "GB")
    var value = bytes.toDouble()
    var index = 0
    while (value >= 1024 && index < units.lastIndex) {
        value /= 1024
        index++
    }
    return if (index == 0) "${bytes} ${units[index]}" else "%.1f %s".format(value, units[index])
}
