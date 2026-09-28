package com.bare.auth

import android.content.Context
import android.content.Intent
import android.net.Uri
import java.net.HttpURLConnection
import java.net.URL
import java.util.concurrent.Executors
import org.json.JSONObject

data class BareSession(
    val accessToken: String,
    val refreshToken: String?,
    val userId: String?,
    val email: String?,
    val anonymous: Boolean
)

data class BareUser(
    val userId: String?,
    val email: String?,
    val anonymous: Boolean,
    val metadata: JSONObject
)

class SupabaseAuth(private val context: Context) {
    private val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
    private val executor = Executors.newSingleThreadExecutor()

    fun currentSession(): BareSession? {
        val access = prefs.getString(KEY_ACCESS_TOKEN, null) ?: return null
        return BareSession(access, prefs.getString(KEY_REFRESH_TOKEN, null), prefs.getString(KEY_USER_ID, null),
            prefs.getString(KEY_EMAIL, null), prefs.getBoolean(KEY_ANONYMOUS, false))
    }

    fun signInWithGoogle() {
        val uri = Uri.parse(
            SUPABASE_URL + "/auth/v1/authorize?provider=google&redirect_to=" +
                Uri.encode(REDIRECT_URI)
        )
        context.startActivity(Intent(Intent.ACTION_VIEW, uri))
    }

    fun signInAnonymously(onResult: (Result<BareSession>) -> Unit) {
        executor.execute {
            val result = runCatching {
                val connection = URL("$SUPABASE_URL/auth/v1/signup").openConnection() as HttpURLConnection
                try {
                    connection.requestMethod = "POST"
                    connection.setRequestProperty("apikey", SUPABASE_PUBLISHABLE_KEY)
                    connection.setRequestProperty("Content-Type", "application/json")
                    connection.doOutput = true
                    connection.outputStream.use { it.write("{}".toByteArray()) }
                    val code = connection.responseCode
                    val body = (if (code in 200..299) connection.inputStream else connection.errorStream)
                        .bufferedReader().use { it.readText() }
                    if (code !in 200..299) error("Supabase anonymous authentication failed: HTTP $code: $body")
                    parseSession(JSONObject(body))
                } finally {
                    connection.disconnect()
                }
            }
            android.os.Handler(android.os.Looper.getMainLooper()).post { onResult(result) }
        }
    }

    fun consumeCallback(uri: Uri): BareSession? {
        if (uri.scheme != "bare" || uri.host != "auth" || uri.path != "/callback") return null
        val fragment = uri.fragment ?: return null
        val values = fragment.split("&").mapNotNull {
            val p = it.split("=", limit = 2)
            if (p.size == 2) p[0] to Uri.decode(p[1]) else null
        }.toMap()
        val access = values["access_token"] ?: return null
        return BareSession(access, values["refresh_token"], values["user_id"], values["email"], false).also(::save)
    }

    fun fetchUser(onResult: (Result<BareUser>) -> Unit) {
        val session = currentSession()
        if (session == null) {
            onResult(Result.failure(IllegalStateException("No active BaRe session.")))
            return
        }
        executor.execute {
            val result = runCatching {
                val connection = URL("$SUPABASE_URL/auth/v1/user").openConnection() as HttpURLConnection
                try {
                    connection.requestMethod = "GET"
                    connection.setRequestProperty("apikey", SUPABASE_PUBLISHABLE_KEY)
                    connection.setRequestProperty("Authorization", "Bearer " + session.accessToken)
                    val code = connection.responseCode
                    val body = (if (code in 200..299) connection.inputStream else connection.errorStream)
                        .bufferedReader().use { it.readText() }
                    if (code !in 200..299) error("Supabase user lookup failed: HTTP $code: $body")
                    val json = JSONObject(body)
                    BareUser(
                        userId = json.optString("id").ifBlank { session.userId },
                        email = json.optString("email").ifBlank { session.email },
                        anonymous = json.optBoolean("is_anonymous", session.anonymous),
                        metadata = json.optJSONObject("user_metadata") ?: JSONObject()
                    )
                } finally {
                    connection.disconnect()
                }
            }
            android.os.Handler(android.os.Looper.getMainLooper()).post { onResult(result) }
        }
    }

    fun signOut(onResult: (Result<Unit>) -> Unit) {
        val session = currentSession()
        if (session == null) {
            clearSession()
            onResult(Result.success(Unit))
            return
        }
        executor.execute {
            val result = runCatching {
                val connection = URL("$SUPABASE_URL/auth/v1/logout").openConnection() as HttpURLConnection
                try {
                    connection.requestMethod = "POST"
                    connection.setRequestProperty("apikey", SUPABASE_PUBLISHABLE_KEY)
                    connection.setRequestProperty("Authorization", "Bearer " + session.accessToken)
                    connection.doOutput = true
                    connection.outputStream.use { }
                    val code = connection.responseCode
                    if (code !in 200..299) {
                        val body = (connection.errorStream ?: connection.inputStream).bufferedReader().use { it.readText() }
                        error("Supabase sign out failed: HTTP $code: $body")
                    }
                } finally {
                    connection.disconnect()
                }
                clearSession()
            }
            android.os.Handler(android.os.Looper.getMainLooper()).post { onResult(result) }
        }
    }

    fun clearSession() {
        prefs.edit().clear().apply()
    }

    fun save(session: BareSession) {
        prefs.edit().putString(KEY_ACCESS_TOKEN, session.accessToken)
            .putString(KEY_REFRESH_TOKEN, session.refreshToken)
            .putString(KEY_USER_ID, session.userId)
            .putString(KEY_EMAIL, session.email)
            .putBoolean(KEY_ANONYMOUS, session.anonymous).apply()
    }

    private fun parseSession(json: JSONObject): BareSession {
        val user = json.optJSONObject("user")
        return BareSession(
            json.getString("access_token"),
            json.optString("refresh_token").ifBlank { null },
            user?.optString("id")?.ifBlank { null },
            user?.optString("email")?.ifBlank { null },
            user?.optBoolean("is_anonymous", true) ?: true
        ).also(::save)
    }

    companion object {
        const val SUPABASE_URL = "https://fbiazqbrkwovzrirnzpb.supabase.co"
        const val REDIRECT_URI = "bare://auth/callback"
        const val SUPABASE_PUBLISHABLE_KEY = "sb_publishable_qTDGXWoCW79yAL0jyO27mw_MPJY_Ryi"
        private const val PREFS = "bare_auth"
        private const val KEY_ACCESS_TOKEN = "access_token"
        private const val KEY_REFRESH_TOKEN = "refresh_token"
        private const val KEY_USER_ID = "user_id"
        private const val KEY_EMAIL = "email"
        private const val KEY_ANONYMOUS = "anonymous"
    }
}