package com.bareapps.barebackup.home

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.bareapps.barebackup.R
import com.bareapps.barebackup.intro.IntroActivity
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.bottomnavigation.BottomNavigationView
import com.google.firebase.auth.FirebaseAuth

/**
 * Owns the Home shell and switches the existing tab layouts directly.
 * Keep tab content simple until the Home feature pass is explicitly in scope.
 */
class HomeActivity : AppCompatActivity() {
    private lateinit var content: FrameLayout
    private lateinit var navigation: BottomNavigationView
    private var selectedTabId: Int = R.id.nav_home

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.home_activity)

        val toolbar = findViewById<MaterialToolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayShowTitleEnabled(false)
        findViewById<TextView>(R.id.tv_barebackup).text =
            packageManager.getApplicationLabel(applicationInfo).toString()
        findViewById<ImageView>(R.id.iv_user).setImageResource(R.drawable.ic_user_default)

        content = findViewById(R.id.home_content_container)
        navigation = findViewById(R.id.primaryNavigation)

        navigation.setOnItemSelectedListener { item ->
            val layoutId = layoutForTab(item.itemId) ?: return@setOnItemSelectedListener false
            selectedTabId = item.itemId
            showTab(layoutId)
            true
        }
        navigation.setOnItemReselectedListener {
            content.requestFocus()
        }
        findViewById<ImageView>(R.id.iv_user).setOnClickListener {
            navigation.selectedItemId = R.id.nav_account
        }
        findViewById<View>(R.id.search_button).setOnClickListener {
            Toast.makeText(this, R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
        }

        val restoredId = savedInstanceState?.getInt(KEY_SELECTED_TAB) ?: R.id.nav_home
        navigation.selectedItemId =
            if (layoutForTab(restoredId) != null) restoredId else R.id.nav_home
    }

    private fun layoutForTab(itemId: Int): Int? = when (itemId) {
        R.id.nav_home -> R.layout.dash_fragment
        R.id.nav_cloud -> R.layout.cloud_info_fragment
        R.id.nav_schedule -> R.layout.schedule_fragment
        R.id.nav_account -> R.layout.account_fragment
        else -> null
    }

    private fun showTab(layoutId: Int) {
        content.removeAllViews()
        val tabView = layoutInflater.inflate(layoutId, content, false)
        content.addView(tabView)
        if (layoutId == R.layout.account_fragment) bindAccountScreen(tabView)
    }

    private fun bindAccountScreen(root: View) {
        val profile = root.findViewById<View>(R.id.profile_card_user)
        profile?.findViewById<View>(R.id.btn_sign_out)?.setOnClickListener {
            AlertDialog.Builder(this)
                .setTitle(R.string.sign_out)
                .setMessage(R.string.sign_out)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(R.string.sign_out) { _, _ -> signOut() }
                .show()
        }
        profile?.findViewById<TextView>(R.id.tv_user_name)?.text =
            FirebaseAuth.getInstance().currentUser?.displayName ?: getString(R.string.account)
        profile?.findViewById<TextView>(R.id.tv_user_email)?.text =
            FirebaseAuth.getInstance().currentUser?.email
                ?: getString(R.string.sign_in_required_for_full_features)
    }

    private fun signOut() {
        try {
            FirebaseAuth.getInstance().signOut()
            val prefs = getSharedPreferences(PREF_ACCOUNT, Context.MODE_PRIVATE)
            val localUid = prefs.getString(KEY_LOCAL_UID, null)
            val editor = prefs.edit()
                .remove(KEY_GOOGLE_UID)
                .putString(KEY_ACTIVE_KIND, KIND_LOCAL)
            if (localUid != null) editor.putString(KEY_ACTIVE_UID, localUid)
            else editor.remove(KEY_ACTIVE_UID)
            check(editor.commit()) { "Could not persist local account selection" }

            check(
                getSharedPreferences("${packageName}_preferences", Context.MODE_PRIVATE)
                    .edit().putBoolean(KEY_FIRST_START, true).commit()
            ) { "Could not persist onboarding state" }

            startActivity(Intent(this, IntroActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
            })
            finish()
        } catch (error: Exception) {
            Log.e(TAG, "Sign out failed", error)
            Toast.makeText(this, R.string.auth_failed, Toast.LENGTH_LONG).show()
        }
    }

    override fun onSaveInstanceState(outState: Bundle) {
        outState.putInt(KEY_SELECTED_TAB, selectedTabId)
        super.onSaveInstanceState(outState)
    }

    companion object {
        private const val TAG = "HomeActivity"
        private const val KEY_SELECTED_TAB = "saved_fragment"
        private const val KEY_FIRST_START = "KEY_FIRST_START"
        private const val PREF_ACCOUNT = "bare_local_account"
        private const val KEY_LOCAL_UID = "local_uid"
        private const val KEY_GOOGLE_UID = "google_uid"
        private const val KEY_ACTIVE_UID = "active_uid"
        private const val KEY_ACTIVE_KIND = "active_kind"
        private const val KIND_LOCAL = "local"
    }
}
