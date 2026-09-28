package com.bare.home.pages

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.bare.R
import com.bare.auth.SupabaseAuth
import com.bare.intro.IntroActivity
import android.content.Intent
import android.os.Build

class AccountFragment : Fragment() {
    private lateinit var auth: SupabaseAuth
    private var userId: TextView? = null
    private var email: TextView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        auth = SupabaseAuth(requireContext())
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, state: Bundle?): View =
        inflater.inflate(R.layout.account_fragment, container, false)

    override fun onViewCreated(view: View, state: Bundle?) {
        super.onViewCreated(view, state)
        userId = view.findViewById(R.id.tv_user_name)
        email = view.findViewById(R.id.tv_user_email)
        view.findViewById<TextView>(R.id.tv_device).text =
            (Build.MANUFACTURER + " " + Build.MODEL).trim()

        view.findViewById<com.google.android.material.button.MaterialButton>(R.id.btn_upgrade).apply {
            text = getString(R.string.premium).uppercase(java.util.Locale.ENGLISH)
            isEnabled = false
            alpha = 0.65f
        }

        view.findViewById<com.google.android.material.button.MaterialButton>(R.id.btn_sign_out)
            .setOnClickListener { signOut() }

        loadUser()
    }

    override fun onDestroyView() {
        userId = null
        email = null
        super.onDestroyView()
    }

    private fun loadUser() {
        val session = auth.currentSession()
        userId?.text = session?.userId ?: getString(R.string.not_signed_in)
        email?.text = session?.email ?: getString(R.string.anonymous_account)
        auth.fetchUser { result ->
            result.onSuccess { user ->
                userId?.text = user.userId ?: getString(R.string.anonymous_account)
                email?.text = user.email ?: getString(R.string.anonymous_account)
            }.onFailure {
                if (isAdded) {
                    Toast.makeText(requireContext(), it.message ?: getString(R.string.error_generic), Toast.LENGTH_SHORT).show()
                }
            }
        }
    }

    private fun signOut() {
        view?.findViewById<com.google.android.material.button.MaterialButton>(R.id.btn_sign_out)?.isEnabled = false
        auth.signOut { result ->
            if (!isAdded) return@signOut
            result.onSuccess {
                startActivity(Intent(requireContext(), IntroActivity::class.java).apply {
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                })
                requireActivity().finish()
            }.onFailure {
                view?.findViewById<com.google.android.material.button.MaterialButton>(R.id.btn_sign_out)?.isEnabled = true
                Toast.makeText(requireContext(), it.message ?: getString(R.string.error_generic), Toast.LENGTH_LONG).show()
            }
        }
    }
}