package com.bareapps.barebackup.home

import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.bareapps.barebackup.intro.IntroActivity
import com.google.firebase.auth.FirebaseAuth

/** Account and settings tab. Existing strings are reused without editing resource files. */
class AccountFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View {
        val view = inflater.inflate(R.layout.account_fragment, container, false)
        val profile = view.findViewById<View>(R.id.profile_card_user)

        profile.findViewById<View>(R.id.btn_sign_out)?.setOnClickListener {
            AlertDialog.Builder(requireContext())
                .setTitle(R.string.sign_out)
                .setMessage(R.string.sign_out)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(R.string.sign_out) { _, _ -> signOut() }
                .show()
        }

        val user = FirebaseAuth.getInstance().currentUser
        profile.findViewById<TextView>(R.id.tv_user_name).text =
            user?.displayName ?: getString(R.string.account)
        profile.findViewById<TextView>(R.id.tv_user_email).text =
            user?.email ?: getString(R.string.sign_in_required_for_full_features)
        profile.findViewById<TextView>(R.id.tv_device).text = deviceLabel()
        // BΛR☰ has no premium paywall; reuse the existing neutral About label for this slot.
        profile.findViewById<View>(R.id.btn_upgrade)?.let { button ->
            (button as? com.google.android.material.button.MaterialButton)?.setText(R.string.about)
            button.setOnClickListener { }
        }

        view.findViewById<RecyclerView>(R.id.rv_more_items).apply {
            layoutManager = LinearLayoutManager(requireContext(), RecyclerView.VERTICAL, false)
            adapter = AccountSettingsPreviewAdapter(
                listOf(
                    PreviewSetting(R.string.app_backup_settings),
                    PreviewSetting(R.string.storage_and_security),
                    PreviewSetting(R.string.wifi),
                    PreviewSetting(R.string.wallpapers),
                    PreviewSetting(R.string.about)
                )
            )
            isNestedScrollingEnabled = false
        }
        return view
    }

    private fun deviceLabel(): String {
        val manufacturer = Build.MANUFACTURER.orEmpty().trim()
        val model = Build.MODEL.orEmpty().trim()
        return listOf(manufacturer, model)
            .filter { it.isNotBlank() }
            .distinct()
            .joinToString(" ")
            .ifBlank { getString(R.string.not_available) }
    }

    private fun signOut() {
        try {
            FirebaseAuth.getInstance().signOut()
            val prefs = requireContext().getSharedPreferences(PREF_ACCOUNT, Context.MODE_PRIVATE)
            val localUid = prefs.getString(KEY_LOCAL_UID, null)
            val editor = prefs.edit()
                .remove(KEY_GOOGLE_UID)
                .putString(KEY_ACTIVE_KIND, KIND_LOCAL)
            if (localUid != null) editor.putString(KEY_ACTIVE_UID, localUid)
            else editor.remove(KEY_ACTIVE_UID)
            check(editor.commit()) { "Could not persist local account selection" }

            check(
                requireContext().getSharedPreferences(
                    "${requireContext().packageName}_preferences", Context.MODE_PRIVATE
                ).edit().putBoolean(KEY_FIRST_START, true).commit()
            ) { "Could not persist onboarding state" }

            startActivity(Intent(requireContext(), IntroActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
            })
            requireActivity().finish()
        } catch (error: Exception) {
            Log.e(TAG, "Sign out failed", error)
            Toast.makeText(requireContext(), R.string.auth_failed, Toast.LENGTH_LONG).show()
        }
    }

    companion object {
        private const val TAG = "AccountFragment"
        private const val PREF_ACCOUNT = "bare_local_account"
        private const val KEY_LOCAL_UID = "local_uid"
        private const val KEY_GOOGLE_UID = "google_uid"
        private const val KEY_ACTIVE_UID = "active_uid"
        private const val KEY_ACTIVE_KIND = "active_kind"
        private const val KIND_LOCAL = "local"
        private const val KEY_FIRST_START = "KEY_FIRST_START"
    }
}
