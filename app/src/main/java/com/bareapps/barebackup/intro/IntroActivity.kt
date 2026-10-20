package com.bareapps.barebackup.intro

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import android.text.Html
import android.text.method.LinkMovementMethod
import android.util.Log
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.credentials.CredentialManager
import androidx.credentials.CustomCredential
import androidx.credentials.GetCredentialRequest
import androidx.credentials.exceptions.GetCredentialCancellationException
import androidx.lifecycle.lifecycleScope
import com.bareapps.barebackup.BareApp
import com.bareapps.barebackup.R
import com.bareapps.barebackup.home.HomeActivity
import com.google.android.libraries.identity.googleid.GetGoogleIdOption
import com.google.android.libraries.identity.googleid.GoogleIdTokenCredential
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.FirebaseAuthUserCollisionException
import com.google.firebase.auth.GoogleAuthProvider
import com.google.android.material.button.MaterialButton
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import rikka.shizuku.Shizuku

class IntroActivity : AppCompatActivity() {
    private var navigatingHome = false
    private var authInProgress = false
    private var permissionGrantInProgress = false
    private var shizukuListenerRegistered = false

    private val notificationPermission = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) {
        refreshPermissionCards()
    }

    private val legacyStoragePermissions = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) {
        refreshPermissionCards()
    }

    private val shizukuPermissionResultListener =
        Shizuku.OnRequestPermissionResultListener { requestCode, grantResult ->
            if (requestCode == REQUEST_SHIZUKU_PERMISSION) {
                if (grantResult == PackageManager.PERMISSION_GRANTED) {
                    grantWithShizuku()
                } else {
                    finishPermissionGrant()
                    Toast.makeText(this, R.string.permission_error, Toast.LENGTH_SHORT).show()
                }
            }
        }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val preferences = getSharedPreferences("${packageName}_preferences", MODE_PRIVATE)
        if (!preferences.getBoolean(KEY_FIRST_START, true)) {
            openHome()
            return
        }

        setContentView(R.layout.intro_activity)

        findViewById<TextView>(R.id.tv_sign_in_subtitle)
            .setText(R.string.signin_intro_subtitle)

        findViewById<TextView>(R.id.tv_privacy_policy).apply {
            text = Html.fromHtml(
                getString(R.string.tos_privacy_agreement),
                Html.FROM_HTML_MODE_LEGACY,
            )
            movementMethod = LinkMovementMethod.getInstance()
        }

        findViewById<ImageView>(R.id.iv_menu).setOnClickListener { showIntroMenu(it) }
        findViewById<MaterialButton>(R.id.btn_google).setOnClickListener { signInWithGoogle() }
        findViewById<MaterialButton>(R.id.btn_anonymous).setOnClickListener { continueAnonymously() }

        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            .getActionButton().setOnClickListener { requestStorageAccess() }

        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            .getActionButton().setOnClickListener { requestNotificationAccess() }

        findViewById<IntroPermissionCardView>(R.id.container_xiaomi_installed_apps_perm)
            .getActionButton().setOnClickListener { openInstalledAppsSettings() }

        findViewById<MaterialButton>(R.id.btn_root_permissions)
            .setOnClickListener { grantAllPermissionsWithRootOrShizuku() }

        try {
            Shizuku.addRequestPermissionResultListener(shizukuPermissionResultListener)
            shizukuListenerRegistered = true
        } catch (error: Exception) {
            Log.w(TAG, "Unable to register Shizuku permission result listener", error)
        }

        updateDeviceSpecificCards()
        refreshPermissionCards()
    }

    override fun onResume() {
        super.onResume()
        if (findViewById<View>(R.id.container_permissions) != null) {
            updateDeviceSpecificCards()
            refreshPermissionCards()
        }
    }

    override fun onDestroy() {
        if (shizukuListenerRegistered) {
            try {
                Shizuku.removeRequestPermissionResultListener(shizukuPermissionResultListener)
            } catch (error: Exception) {
                Log.w(TAG, "Unable to remove Shizuku permission result listener", error)
            }
        }
        super.onDestroy()
    }

    private fun showIntroMenu(anchor: View) {
        androidx.appcompat.widget.PopupMenu(this, anchor).apply {
            menuInflater.inflate(R.menu.menu_intro, menu)
            setOnMenuItemClickListener { item ->
                when (item.itemId) {
                    R.id.action_language -> {
                        startActivity(
                            Intent().setClassName(
                                this@IntroActivity,
                                "$packageName.locale.LocaleActivity",
                            ),
                        )
                        true
                    }
                    R.id.action_barelogger -> {
                        startActivity(
                            Intent().setClassName(
                                this@IntroActivity,
                                "$packageName.slog.SLogActivity",
                            ),
                        )
                        true
                    }
                    R.id.action_restart -> {
                        recreate()
                        true
                    }
                    else -> false
                }
            }
            show()
        }
    }

    private fun signInWithGoogle() {
        if (authInProgress || navigatingHome) return
        authInProgress = true
        setAuthButtonsEnabled(false)

        lifecycleScope.launch {
            try {
                val webClientId = (application as BareApp).getGoogleAuthWebClientId()
                check(webClientId.isNotBlank()) { "Google OAuth Web Client ID is empty" }

                val googleOption = GetGoogleIdOption.Builder()
                    .setServerClientId(webClientId)
                    .setFilterByAuthorizedAccounts(false)
                    .setAutoSelectEnabled(false)
                    .build()
                val request = GetCredentialRequest.Builder()
                    .addCredentialOption(googleOption)
                    .build()
                val credential = CredentialManager.create(this@IntroActivity)
                    .getCredential(this@IntroActivity, request)
                    .credential

                val customCredential = credential as? CustomCredential
                    ?: error("Google ID token credential was not returned")
                check(
                    customCredential.type == GoogleIdTokenCredential.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL
                ) { "Google ID token credential was not returned" }

                val googleCredential = GoogleIdTokenCredential.createFrom(customCredential.data)
                val firebaseCredential = GoogleAuthProvider.getCredential(googleCredential.idToken, null)
                val auth = FirebaseAuth.getInstance()
                val currentUser = auth.currentUser

                try {
                    if (currentUser?.isAnonymous == true) {
                        currentUser.linkWithCredential(firebaseCredential).await()
                    } else {
                        auth.signInWithCredential(firebaseCredential).await()
                    }
                } catch (collision: FirebaseAuthUserCollisionException) {
                    auth.signInWithCredential(firebaseCredential).await()
                }

                continueToHome()
            } catch (cancelled: GetCredentialCancellationException) {
                Log.i(TAG, "Google sign-in was cancelled by the user")
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (error: Exception) {
                Log.e(TAG, "Google sign-in failed", error)
                Toast.makeText(this@IntroActivity, R.string.auth_failed, Toast.LENGTH_LONG).show()
            } finally {
                authInProgress = false
                if (!isFinishing && !navigatingHome) setAuthButtonsEnabled(true)
            }
        }
    }

    private fun continueAnonymously() {
        if (authInProgress || navigatingHome) return
        val auth = try {
            FirebaseAuth.getInstance()
        } catch (error: Exception) {
            Log.e(TAG, "Unable to initialize Firebase Auth for anonymous sign-in", error)
            showAnonymousSignInFailure()
            return
        }

        if (auth.currentUser != null) {
            continueToHome()
            return
        }

        authInProgress = true
        setAuthButtonsEnabled(false)
        lifecycleScope.launch {
            try {
                auth.signInAnonymously().await()
                continueToHome()
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (error: Exception) {
                Log.e(TAG, "Anonymous sign-in failed", error)
                showAnonymousSignInFailure()
            } finally {
                authInProgress = false
                if (!isFinishing && !navigatingHome) setAuthButtonsEnabled(true)
            }
        }
    }

    private fun showAnonymousSignInFailure() {
        if (isFinishing || navigatingHome) return
        AlertDialog.Builder(this)
            .setTitle(R.string.cloud_connection_failed)
            .setMessage(R.string.auth_failed)
            .setNegativeButton(android.R.string.cancel, null)
            .setPositiveButton(R.string.continue_anyway) { _, _ -> continueToHome() }
            .show()
    }

    private fun setAuthButtonsEnabled(enabled: Boolean) {
        findViewById<MaterialButton>(R.id.btn_google)?.isEnabled = enabled
        findViewById<MaterialButton>(R.id.btn_anonymous)?.isEnabled = enabled
    }

    private fun updateDeviceSpecificCards() {
        val manufacturer = Build.MANUFACTURER.orEmpty().lowercase()
        val isXiaomiFamily = manufacturer.contains("xiaomi") ||
            manufacturer.contains("redmi") ||
            manufacturer.contains("poco")
        findViewById<View>(R.id.container_xiaomi_installed_apps_perm)?.visibility =
            if (isXiaomiFamily) View.VISIBLE else View.GONE
    }

    private fun requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                startActivity(
                    Intent(
                        Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:$packageName"),
                    ),
                )
            } catch (_: Exception) {
                try {
                    startActivity(Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION))
                } catch (_: Exception) {
                    openAppSettings()
                }
            }
        } else {
            legacyStoragePermissions.launch(
                arrayOf(
                    Manifest.permission.READ_EXTERNAL_STORAGE,
                    Manifest.permission.WRITE_EXTERNAL_STORAGE,
                ),
            )
        }
    }

    private fun requestNotificationAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            notificationPermission.launch(Manifest.permission.POST_NOTIFICATIONS)
        } else {
            refreshPermissionCards()
        }
    }

    private fun openInstalledAppsSettings() {
        val manufacturerIntent = Intent("miui.intent.action.APP_PERM_EDITOR")
            .putExtra("extra_pkgname", packageName)
        try {
            startActivity(manufacturerIntent)
        } catch (_: Exception) {
            openAppSettings()
        }
    }

    private fun openAppSettings() {
        try {
            startActivity(
                Intent(
                    Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                    Uri.parse("package:$packageName"),
                ),
            )
        } catch (error: Exception) {
            Log.w(TAG, "Unable to open application settings", error)
            Toast.makeText(this, R.string.permission_error, Toast.LENGTH_SHORT).show()
        }
    }

    private fun refreshPermissionCards() {
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            EnvironmentCompat.hasAllFilesAccess()
        } else {
            checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) ==
                PackageManager.PERMISSION_GRANTED &&
                checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) ==
                PackageManager.PERMISSION_GRANTED
        }
        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            ?.getActionButton()?.isEnabled = !storageGranted

        val notificationsGranted = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) ==
            PackageManager.PERMISSION_GRANTED
        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            ?.getActionButton()?.isEnabled = !notificationsGranted

        val installedAppsGranted = try {
            checkSelfPermission("com.android.permission.GET_INSTALLED_APPS") ==
                PackageManager.PERMISSION_GRANTED
        } catch (_: RuntimeException) {
            false
        }
        findViewById<IntroPermissionCardView>(R.id.container_xiaomi_installed_apps_perm)
            ?.getActionButton()?.isEnabled = !installedAppsGranted
    }

    private fun grantAllPermissionsWithRootOrShizuku() {
        if (permissionGrantInProgress || navigatingHome) return
        permissionGrantInProgress = true
        findViewById<MaterialButton>(R.id.btn_root_permissions).isEnabled = false

        lifecycleScope.launch {
            val rootAttempt = withContext(Dispatchers.IO) {
                IntroPermissionGrantCoordinator.grantWithRoot(this@IntroActivity)
            }
            if (rootAttempt.available) {
                finishPermissionGrant(rootAttempt)
                return@launch
            }

            when {
                IntroPermissionGrantCoordinator.hasShizukuPermission() -> grantWithShizuku()
                IntroPermissionGrantCoordinator.isShizukuRunning() -> {
                    try {
                        Shizuku.requestPermission(REQUEST_SHIZUKU_PERMISSION)
                    } catch (error: Exception) {
                        Log.e(TAG, "Unable to request Shizuku permission", error)
                        finishPermissionGrant()
                        Toast.makeText(
                            this@IntroActivity,
                            R.string.permission_error,
                            Toast.LENGTH_LONG,
                        ).show()
                    }
                }
                else -> {
                    finishPermissionGrant()
                    if (IntroPermissionGrantCoordinator.launchShizukuManager(this@IntroActivity)) {
                        Toast.makeText(
                            this@IntroActivity,
                            R.string.apk_import_status_requesting_elevated_access,
                            Toast.LENGTH_LONG,
                        ).show()
                    } else {
                        Toast.makeText(
                            this@IntroActivity,
                            R.string.permission_error,
                            Toast.LENGTH_LONG,
                        ).show()
                    }
                }
            }
        }
    }

    private fun grantWithShizuku() {
        if (isFinishing || isDestroyed) return
        lifecycleScope.launch {
            val attempt = withContext(Dispatchers.IO) {
                IntroPermissionGrantCoordinator.grantWithShizuku(this@IntroActivity)
            }
            finishPermissionGrant(attempt)
        }
    }

    private fun finishPermissionGrant(attempt: IntroPermissionGrantCoordinator.Attempt? = null) {
        permissionGrantInProgress = false
        findViewById<MaterialButton>(R.id.btn_root_permissions)?.isEnabled = true
        refreshPermissionCards()

        if (attempt == null || !attempt.available || !attempt.succeeded) {
            if (attempt != null) {
                Log.w(
                    TAG,
                    "Root/Shizuku grant incomplete: attempted=${attempt.attempted}, failed=${attempt.failed}",
                )
            }
            Toast.makeText(this, R.string.permission_error, Toast.LENGTH_LONG).show()
        } else {
            Toast.makeText(this, R.string.all_permissions_granted, Toast.LENGTH_LONG).show()
        }
    }

    private fun continueToHome() {
        if (navigatingHome) return
        navigatingHome = true

        getSharedPreferences("${packageName}_preferences", MODE_PRIVATE).edit()
            .putBoolean(KEY_FIRST_START, false)
            .apply()

        openHome()
    }

    private fun openHome() {
        startActivity(Intent(this, HomeActivity::class.java))
        finish()
    }

    companion object {
        private const val TAG = "IntroActivity"
        private const val KEY_FIRST_START = "KEY_FIRST_START"
        private const val REQUEST_SHIZUKU_PERMISSION = 6417
    }
}
