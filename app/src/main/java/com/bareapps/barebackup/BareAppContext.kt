package com.bareapps.barebackup

import android.app.Application

/** Process-wide application reference initialized by BareApp.onCreate(). */
object BareAppContext {
    @JvmField
    var application: Application? = null
}
