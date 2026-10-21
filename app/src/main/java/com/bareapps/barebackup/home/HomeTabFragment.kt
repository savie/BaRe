package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import android.content.Intent
import com.bareapps.barebackup.intro.IntroActivity
import com.google.firebase.auth.FirebaseAuth
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R

class HomeTabFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View {
        val layoutId = requireArguments().getInt(ARG_LAYOUT)
        val view = inflater.inflate(layoutId, container, false)
        if (layoutId == R.layout.account_fragment) {
            val profile = view.findViewById<View>(R.id.profile_card_user)
            profile?.findViewById<View>(R.id.btn_sign_out)?.setOnClickListener {
                AlertDialog.Builder(requireContext())
                    .setTitle(R.string.sign_out)
                    .setMessage(R.string.sign_out)
                    .setNegativeButton(android.R.string.cancel, null)
                    .setPositiveButton(R.string.sign_out) { _, _ -> signOut() }
                    .show()
            }
            profile?.findViewById<TextView>(R.id.tv_user_name)?.text =
                FirebaseAuth.getInstance().currentUser?.displayName ?: getString(R.string.account)
            profile?.findViewById<TextView>(R.id.tv_user_email)?.text =
                FirebaseAuth.getInstance().currentUser?.email ?: getString(R.string.sign_in_required_for_full_features)
        }
        return view
    }

    private fun signOut() {
        try {
            FirebaseAuth.getInstance().signOut()
            val prefs = requireContext().getSharedPreferences("bare_local_account", android.content.Context.MODE_PRIVATE)
            val localUid = prefs.getString("local_uid", null)
            prefs.edit()
                .remove("google_uid")
                .putString("active_kind", "local")
                .apply {
                    if (localUid != null) putString("active_uid", localUid)
                    else remove("active_uid")
                }
                .commit()
            requireContext().getSharedPreferences("${requireContext().packageName}_preferences", android.content.Context.MODE_PRIVATE)
                .edit().putBoolean("KEY_FIRST_START", true).commit()
            startActivity(Intent(requireContext(), IntroActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
            })
            requireActivity().finish()
        } catch (error: Exception) {
            android.util.Log.e("AccountFragment", "Sign out failed", error)
            Toast.makeText(requireContext(), R.string.auth_failed, Toast.LENGTH_LONG).show()
        }
    }

    companion object {
        private const val ARG_LAYOUT = "layout_id"
        fun newInstance(layoutId: Int) = HomeTabFragment().apply {
            arguments = Bundle().apply { putInt(ARG_LAYOUT, layoutId) }
        }
    }
}
