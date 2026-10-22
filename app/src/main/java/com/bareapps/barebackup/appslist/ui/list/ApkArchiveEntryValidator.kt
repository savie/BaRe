package com.bareapps.barebackup.appslist.ui.list

/**
 * Validates the small set of archive layouts emitted by BΛR☰:
 * - one APK or split set at the ZIP root;
 * - bulk archives with one package directory per application;
 * - the optional root manifest.csv.
 *
 * Arbitrary nested paths are rejected before files are created in the restore cache.
 */
internal object ApkArchiveEntryValidator {
    enum class Kind { MANIFEST, APK }

    data class Entry(
        val kind: Kind,
        val packageKey: String,
        val fileName: String
    )

    private val packagePattern = Regex("[A-Za-z0-9_]+(\\.[A-Za-z0-9_]+)+")
    private val splitPattern = Regex("split_[1-9][0-9]*\\.apk")

    fun validate(name: String): Entry {
        require(name.isNotBlank() && name.length <= 4096) { "APK archive contains an invalid path" }
        require(!name.startsWith("/") && name.indexOf(92.toChar()) < 0 && !name.contains(':')) {
            "APK archive contains an absolute or platform-specific path"
        }
        val segments = name.split('/')
        require(segments.none { it.isEmpty() || it == "." || it == ".." }) {
            "APK archive contains a traversal path"
        }
        if (segments.size == 1 && segments[0] == "manifest.csv") {
            return Entry(Kind.MANIFEST, "", segments[0])
        }
        val packageKey: String
        val fileName: String
        when (segments.size) {
            1 -> {
                packageKey = "single"
                fileName = segments[0]
            }
            2 -> {
                packageKey = segments[0]
                require(packagePattern.matches(packageKey)) { "APK archive contains an invalid package name" }
                fileName = segments[1]
            }
            else -> throw IllegalArgumentException("APK archive contains an unexpected nested path")
        }
        require(fileName == "base.apk" || splitPattern.matches(fileName)) {
            "APK archive contains an unexpected APK entry name"
        }
        return Entry(Kind.APK, packageKey, fileName)
    }
}
