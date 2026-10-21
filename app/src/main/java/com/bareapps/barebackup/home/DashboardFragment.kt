package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R

/**
 * Inflate the dashboard resource without replacing its data/state with preview values.
 * Storage, root state and backup actions must be supplied by their real feature owners.
 */
class DashboardFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.dash_fragment, container, false)
}
