package com.bareapps.barebackup.intro

import android.app.Activity
import android.os.Bundle
import com.bareapps.barebackup.R

/**
 * Hosts the resource-defined onboarding screen.
 *
 * The layout and its included views remain the source of truth for the intro UI.
 * Authentication, restore, and permission workflows must be connected to their
 * respective application controllers when those controllers are available.
 */
class IntroActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)
    }
}
