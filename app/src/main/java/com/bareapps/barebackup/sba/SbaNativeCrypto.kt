package com.bareapps.barebackup.sba

class SbaNativeCrypto private constructor() {
    external fun deriveArgon2id(
        password: ByteArray,
        salt: ByteArray,
        iterations: Int,
        memoryKiB: Int,
        parallelism: Int,
        outputLength: Int,
    ): ByteArray

    companion object {
        @JvmField val a = SbaNativeCrypto()
        init { System.loadLibrary("sba_archive") }
    }
}
