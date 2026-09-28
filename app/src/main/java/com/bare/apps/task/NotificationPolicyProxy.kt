package com.bare.apps.task

import java.nio.charset.StandardCharsets
import java.util.regex.Pattern

class NotificationPolicyProxy(private val context: android.content.Context) {
    fun isAvailable(): Boolean = runCatching {
        val sm = Class.forName("android.os.ServiceManager")
        val getService = sm.getDeclaredMethod("getService", String::class.java)
        getService.invoke(null, "notification") != null
    }.getOrDefault(false)

    fun restore(xml: String?, packageName: String, userId: Int): Boolean {
        if (xml.isNullOrBlank() || !isAvailable()) return false
        if (xml.toByteArray(StandardCharsets.UTF_8).size > MAX_FULL_PAYLOAD_BYTES) return false
        if (!SAFE_PACKAGE.matcher(packageName).matches()) return false
        val payload = createPackagePayload(xml, packageName) ?: return false
        val bytes = payload.toByteArray(StandardCharsets.UTF_8)
        if (bytes.isEmpty() || bytes.size > MAX_PACKAGE_PAYLOAD_BYTES) return false
        return runCatching {
            val sm = Class.forName("android.os.ServiceManager")
            val getService = sm.getDeclaredMethod("getService", String::class.java)
            val service = getService.invoke(null, "notification") ?: return false
            val method = service.javaClass.getMethod(
                "applyRestore",
                ByteArray::class.java,
                Int::class.javaPrimitiveType!!
            )
            method.invoke(service, bytes, userId)
            true
        }.getOrDefault(false)
    }

    private fun createPackagePayload(xml: String, packageName: String): String? {
        if (!xml.contains("<notification-policy")) return null
        val ranking = Regex("<ranking\\b[^>]*>").find(xml)?.value ?: return null
        val escaped = Regex.escape(packageName)
        val block = Regex(
            "<package\\b[^>]*name=[\\\"']$escaped[\\\"'][^>]*>.*?</package>",
            setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE)
        ).find(xml)?.value ?: return null
        return "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>\n" +
            "<notification-policy version=\"1\">\n$ranking\n$block\n</ranking>\n</notification-policy>\n"
    }

    companion object {
        private const val MAX_FULL_PAYLOAD_BYTES = 4 * 1024 * 1024
        private const val MAX_PACKAGE_PAYLOAD_BYTES = 512 * 1024
        private val SAFE_PACKAGE = Pattern.compile("[A-Za-z0-9_.]+")
    }
}
