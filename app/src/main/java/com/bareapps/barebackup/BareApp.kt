package com.bareapps.barebackup

import android.app.Application
import android.util.Log

/**
 * Application-level entry point for BΛR☰.
 *
 * Keep this foundation intentionally small. Reference startup features will be
 * added in stages after their dependencies and behavior have been audited.
 */
class BareApp : Application() {

    override fun onCreate() {
        super.onCreate()

        instance = this
        Log.i(TAG, "BΛR☰ application process started")
    }

    companion object {
        private const val TAG = "BareApp"

        @Volatile
        private var instance: BareApp? = null

        @JvmStatic
        fun getInstance(): BareApp? = instance

        @JvmStatic
        fun appContext() = instance?.applicationContext
    }
}
