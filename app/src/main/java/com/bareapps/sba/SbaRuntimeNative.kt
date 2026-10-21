package com.bareapps.sba

class SbaRuntimeNative private constructor() {
    external fun version(): String

    companion object {
        @JvmField val a = SbaRuntimeNative()
        init { System.loadLibrary("sba_archive") }
    }
}
