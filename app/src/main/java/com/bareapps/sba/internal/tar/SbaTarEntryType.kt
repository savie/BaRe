package com.bareapps.sba.internal.tar

/**
 * Semantic port of the reference TAR entry type enum.
 * Numeric TAR type codes remain defined by SbaTarEntryInfo for JNI compatibility.
 */
enum class SbaTarEntryType {
    File,
    Directory,
    SymbolicLink,
    Hardlink,
    Fifo,
    CharacterDevice,
    BlockDevice,
    Other,
}
