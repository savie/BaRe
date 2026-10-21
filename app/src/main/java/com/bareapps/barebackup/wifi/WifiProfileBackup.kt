package com.bareapps.barebackup.wifi

import android.content.Context
import android.net.wifi.WifiConfiguration
import android.net.wifi.WifiManager
import android.net.wifi.WifiNetworkSuggestion
import android.os.Build
import com.topjohnwu.superuser.Shell
import org.json.JSONArray
import org.json.JSONObject
import org.xmlpull.v1.XmlPullParser
import org.xmlpull.v1.XmlPullParserFactory
import java.io.StringReader
import java.io.InputStream
import java.io.OutputStream

/** Port of the reference Wi-Fi configuration readers/restorers (gt4, lq6 and vs8/ws8). */
internal data class WifiProfile(
    val ssid: String,
    val preSharedKey: String,
    val hiddenSsid: Boolean,
    val keyManagement: List<Int>,
    val protocols: List<Int>,
    val pairwiseCiphers: List<Int>,
    val groupCiphers: List<Int>
) {
    val isEnterprise: Boolean get() = keyManagement.contains(2)
    val isWpa3: Boolean get() = keyManagement.contains(8)
    val isOpen: Boolean get() = keyManagement.contains(0) && preSharedKey.isBlank()
}

internal object WifiProfileBackup {
    private const val WIFI_CONFIG_STORE_Q = "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml"
    private const val WIFI_CONFIG_STORE_LEGACY = "/data/misc/wifi/WifiConfigStore.xml"

    fun readConfiguredProfiles(context: Context): List<WifiProfile> {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
            val manager = context.applicationContext.getSystemService(WifiManager::class.java)
            val networks = manager.configuredNetworks
                ?: throw IllegalStateException("Android did not return saved Wi-Fi networks")
            return networks.map(::fromConfiguration)
                .filter { it.ssid.isNotBlank() && it.ssid != "<unknown ssid>" }
                .distinctBy { it.ssid }
                .sortedBy { it.ssid.lowercase() }
        }

        val shell = Shell.getShell()
        check(shell.isRoot) { "Root access is required to read saved Wi-Fi credentials on Android 10 and newer" }
        val result = Shell.cmd(
            "if [ -r $WIFI_CONFIG_STORE_Q ]; then cat $WIFI_CONFIG_STORE_Q; elif [ -r $WIFI_CONFIG_STORE_LEGACY ]; then cat $WIFI_CONFIG_STORE_LEGACY; else exit 4; fi"
        ).exec()
        check(result.isSuccess) { "Could not read the system Wi-Fi configuration" }
        return parseConfigStore(result.out.joinToString("\n"))
            .filter { it.ssid.isNotBlank() && it.ssid != "<unknown ssid>" }
            .distinctBy { it.ssid }
            .sortedBy { it.ssid.lowercase() }
    }

    fun writeProfile(output: OutputStream, profile: WifiProfile) {
        val root = JSONObject()
            .put("format", "bare-wifi-profile")
            .put("schemaVersion", 1)
            .put("createdAt", System.currentTimeMillis())
            .put("androidRelease", Build.VERSION.RELEASE)
            .put("buildFingerprint", Build.FINGERPRINT)
            .put("profile", profile.toJson())
        output.use { it.write((root.toString(2) + "\n").toByteArray(Charsets.UTF_8)) }
    }

    fun readProfile(input: InputStream): WifiProfile {
        val json = input.use { it.bufferedReader(Charsets.UTF_8).readText() }
        val root = JSONObject(json)
        check(root.optString("format") == "bare-wifi-profile") { "This is not a BΛR☰ Wi-Fi backup" }
        check(root.optInt("schemaVersion") == 1) { "Unsupported Wi-Fi backup format" }
        return fromJson(root.getJSONObject("profile"))
    }

    fun restoreProfile(context: Context, profile: WifiProfile): String {
        require(profile.ssid.isNotBlank()) { "Wi-Fi backup has no network name" }
        require(!profile.isEnterprise) { "Enterprise Wi-Fi profiles need manual setup on this Android version" }
        val manager = context.applicationContext.getSystemService(WifiManager::class.java)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val builder = WifiNetworkSuggestion.Builder()
                .setSsid(profile.ssid)
                .setIsHiddenSsid(profile.hiddenSsid)
                .setIsAppInteractionRequired(true)
            if (!profile.isOpen && profile.preSharedKey.isNotBlank()) {
                if (profile.isWpa3) builder.setWpa3Passphrase(profile.preSharedKey)
                else builder.setWpa2Passphrase(profile.preSharedKey)
            }
            val status = manager.addNetworkSuggestions(listOf(builder.build()))
            check(status == WifiManager.STATUS_NETWORK_SUGGESTIONS_SUCCESS) {
                "Android rejected the Wi-Fi suggestion (status $status)"
            }
            return "Added a Wi-Fi suggestion for ${profile.ssid}. Android may ask you to approve BΛR☰ before it can connect."
        }

        @Suppress("DEPRECATION")
        val config = WifiConfiguration().apply {
            SSID = quote(profile.ssid)
            hiddenSSID = profile.hiddenSsid
            if (!profile.isOpen && profile.preSharedKey.isNotBlank()) preSharedKey = quote(profile.preSharedKey)
            allowedKeyManagement = profile.keyManagement.toBitSet()
            allowedProtocols = profile.protocols.toBitSet()
            allowedPairwiseCiphers = profile.pairwiseCiphers.toBitSet()
            allowedGroupCiphers = profile.groupCiphers.toBitSet()
        }
        @Suppress("DEPRECATION")
        val networkId = manager.addNetwork(config)
        check(networkId >= 0) { "Android refused to add this Wi-Fi network" }
        @Suppress("DEPRECATION")
        val enabled = manager.enableNetwork(networkId, true)
        check(enabled) { "Network was added, but Android could not enable it" }
        @Suppress("DEPRECATION")
        manager.saveConfiguration()
        manager.reconnect()
        return "Restored Wi-Fi network ${profile.ssid}"
    }

    private fun fromConfiguration(config: WifiConfiguration) = WifiProfile(
        ssid = unquote(config.SSID.orEmpty()),
        preSharedKey = unquote(config.preSharedKey.orEmpty()).takeUnless { it == "*" }.orEmpty(),
        hiddenSsid = config.hiddenSSID,
        keyManagement = config.allowedKeyManagement.toIntList(),
        protocols = config.allowedProtocols.toIntList(),
        pairwiseCiphers = config.allowedPairwiseCiphers.toIntList(),
        groupCiphers = config.allowedGroupCiphers.toIntList()
    )

    private fun parseConfigStore(xml: String): List<WifiProfile> {
        val parser = XmlPullParserFactory.newInstance().newPullParser()
        parser.setInput(StringReader(xml))
        val profiles = mutableListOf<WifiProfile>()
        var fields: MutableMap<String, String>? = null
        var currentStringName: String? = null
        var currentString = StringBuilder()
        var bitSetName: String? = null
        var bitSetValues = mutableListOf<Int>()

        while (parser.eventType != XmlPullParser.END_DOCUMENT) {
            when (parser.eventType) {
                XmlPullParser.START_TAG -> when (parser.name) {
                    "WifiConfiguration" -> fields = mutableMapOf()
                    "string" -> if (fields != null) {
                        currentStringName = parser.getAttributeValue(null, "name")
                        currentString = StringBuilder()
                    }
                    "boolean" -> if (fields != null) {
                        val name = parser.getAttributeValue(null, "name")
                        val value = parser.getAttributeValue(null, "value")
                        if (name != null && value != null) fields[name] = value
                    }
                    "BitSet" -> if (fields != null) {
                        bitSetName = parser.getAttributeValue(null, "name")
                        bitSetValues = mutableListOf()
                    }
                    "int" -> if (fields != null && bitSetName != null) {
                        parser.getAttributeValue(null, "value")?.toIntOrNull()?.let(bitSetValues::add)
                    }
                }
                XmlPullParser.TEXT -> if (currentStringName != null) currentString.append(parser.text)
                XmlPullParser.END_TAG -> when (parser.name) {
                    "string" -> {
                        val name = currentStringName
                        if (name != null) fields?.set(name, currentString.toString())
                        currentStringName = null
                        currentString = StringBuilder()
                    }
                    "BitSet" -> {
                        val name = bitSetName
                        if (name != null) fields?.set(name, bitSetValues.joinToString(","))
                        bitSetName = null
                        bitSetValues = mutableListOf()
                    }
                    "WifiConfiguration" -> {
                        fields?.let { map -> profileFromFields(map)?.let(profiles::add) }
                        fields = null
                        currentStringName = null
                        bitSetName = null
                    }
                }
            }
            parser.next()
        }
        return profiles
    }

    private fun profileFromFields(fields: Map<String, String>): WifiProfile? {
        val ssid = unquote(fields["SSID"].orEmpty())
        if (ssid.isBlank()) return null
        return WifiProfile(
            ssid = ssid,
            preSharedKey = unquote(fields["PreSharedKey"].orEmpty()).takeUnless { it == "*" }.orEmpty(),
            hiddenSsid = fields["HiddenSSID"].toBoolean(),
            keyManagement = fields["AllowedKeyMgmt"].toIntList(),
            protocols = fields["AllowedProtocols"].toIntList(),
            pairwiseCiphers = fields["AllowedPairwiseCiphers"].toIntList(),
            groupCiphers = fields["AllowedGroupCiphers"].toIntList()
        )
    }

    private fun WifiProfile.toJson() = JSONObject()
        .put("ssid", ssid)
        .put("preSharedKey", preSharedKey)
        .put("hiddenSsid", hiddenSsid)
        .put("keyManagement", keyManagement.toJsonArray())
        .put("protocols", protocols.toJsonArray())
        .put("pairwiseCiphers", pairwiseCiphers.toJsonArray())
        .put("groupCiphers", groupCiphers.toJsonArray())

    private fun fromJson(json: JSONObject) = WifiProfile(
        ssid = json.getString("ssid"),
        preSharedKey = json.optString("preSharedKey"),
        hiddenSsid = json.optBoolean("hiddenSsid"),
        keyManagement = json.optJSONArray("keyManagement").toIntList(),
        protocols = json.optJSONArray("protocols").toIntList(),
        pairwiseCiphers = json.optJSONArray("pairwiseCiphers").toIntList(),
        groupCiphers = json.optJSONArray("groupCiphers").toIntList()
    )

    private fun List<Int>.toJsonArray() = JSONArray().also { array -> forEach(array::put) }

    private fun JSONArray?.toIntList(): List<Int> {
        if (this == null) return emptyList()
        return (0 until length()).mapNotNull { optInt(it, Int.MIN_VALUE).takeUnless { value -> value == Int.MIN_VALUE } }
    }

    private fun String?.toIntList(): List<Int> = this.orEmpty().split(',').mapNotNull(String::toIntOrNull)

    private fun java.util.BitSet.toIntList(): List<Int> = (0 until length()).filter(::get)

    private fun List<Int>.toBitSet() = java.util.BitSet().also { bits -> forEach(bits::set) }

    private fun quote(value: String) = "\"" + value.replace("\\", "\\\\").replace("\"", "\\\"") + "\""

    private fun unquote(value: String) = value.trim().removeSurrounding("\"").replace("\\\"", "\"")
}
