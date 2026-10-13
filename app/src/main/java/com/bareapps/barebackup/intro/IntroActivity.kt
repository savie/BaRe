package com.bareapps.barebackup.intro

import android.app.Activity
import android.os.Bundle
import com.bareapps.barebackup.R

/**
 * Kotlin entry point for the existing XML-based introduction UI.
 * Screen content is kept in res/layout/intro_activity.xml.
 */
class IntroActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)
    }
}
