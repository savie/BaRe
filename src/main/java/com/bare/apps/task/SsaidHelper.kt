package com.bare.apps.task

import android.content.Context
import android.os.UserHandle
import android.util.Base64

class SsaidHelper(
    private val context: Context,
    private val privileged: PrivilegedCommandExecutor
) {
    fun read(packageName: String): String? {
        val path = "/data/system/users/${UserHandle.myUserId()}/settings_ssaid.xml"
        val output = privileged.run("cat '$path'")
        if (output.code != 0) return null
        val line = Regex(
            "<setting\\b[^>]*\\bpackage=[\\\"']" +
                Regex.escape(packageName) +
                "[\\\"'][^>]*/?>",
            setOf(RegexOption.IGNORE_CASE)
        ).find(output.output)?.value ?: return null
        return attribute(line, "value")
    }

    fun restore(packageName: String, ssaid: String): Boolean {
        if (!HEX_16.matches(ssaid)) return false

        val path = "/data/system/users/${UserHandle.myUserId()}/settings_ssaid.xml"
        val read = privileged.run("cat '$path'")
        if (read.code != 0 || read.output.isBlank()) return false

        val current = read.output
        val packagePattern = Regex(
            "<setting\\b[^>]*\\bpackage=[\\\"']" +
                Regex.escape(packageName) +
                "[\\\"'][^>]*/?>",
            setOf(RegexOption.IGNORE_CASE)
        )
        val existing = packagePattern.find(current)

        val updated = if (existing != null) {
            val replaced = replaceAttribute(
                replaceAttribute(existing.value, "value", ssaid),
                "defaultValue",
                ssaid
            )
            current.replaceRange(existing.range, replaced)
        } else {
            val ids = Regex("""\bid=["'](\d+)["']""")
                .findAll(current)
                .mapNotNull { it.groupValues[1].toIntOrNull() }
                .toList()
            val nextId = (ids.maxOrNull() ?: 0) + 1
            val uid = context.packageManager
                .getPackageInfo(packageName, 0)
                .applicationInfo?.uid ?: return false

            val entry =
                """    <setting id="$nextId" name="$uid" package="$packageName" value="$ssaid" defaultValue="$ssaid" />"""
            val close = Regex("""</settings>\s*$""", RegexOption.IGNORE_CASE)
                .find(current) ?: return false
            current.substring(0, close.range.first) + entry + "\n" +
                current.substring(close.range.first)
        }

        if (updated == current) return verify(path, packageName, ssaid)

        val encoded = Base64.encodeToString(
            updated.toByteArray(Charsets.UTF_8),
            Base64.NO_WRAP
        )
        val write = privileged.run(
            "printf '%s' '$encoded' | base64 -d > '$path'"
        )
        if (write.code != 0) return false

        return verify(path, packageName, ssaid)
    }

    private fun verify(path: String, packageName: String, ssaid: String): Boolean {
        val read = privileged.run("cat '$path'")
        if (read.code != 0) return false
        val line = Regex(
            "<setting\\b[^>]*\\bpackage=[\\\"']" +
                Regex.escape(packageName) +
                "[\\\"'][^>]*/?>",
            setOf(RegexOption.IGNORE_CASE)
        ).find(read.output)?.value ?: return false

        return attribute(line, "value") == ssaid &&
            attribute(line, "defaultValue") == ssaid
    }

    private fun replaceAttribute(line: String, name: String, value: String): String {
        val pattern = Regex(
            "(\\b" + Regex.escape(name) + "\\s*=\\s*[\\\"'])[^\\\"']*([\\\"'])",
            RegexOption.IGNORE_CASE
        )
        return if (pattern.containsMatchIn(line)) {
            line.replace(pattern, "$1$value$2")
        } else {
            val insertAt = line.lastIndexOf("/>")
                .takeIf { it >= 0 }
                ?: line.lastIndexOf(">").takeIf { it >= 0 }
                ?: return line
            val prefix = line.substring(0, insertAt).trimEnd()
            val suffix = line.substring(insertAt)
            "$prefix $name=\"$value\" $suffix"
        }
    }

    private fun attribute(line: String, name: String): String? =
        Regex(
            "\\b" + Regex.escape(name) + "\\s*=\\s*[\\\"']([^\\\"']*)[\\\"']",
            RegexOption.IGNORE_CASE
        ).find(line)?.groupValues?.getOrNull(1)

    companion object {
        private val HEX_16 = Regex("^[0-9a-fA-F]{16}$")
    }
}
