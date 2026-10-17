package com.bareapps.rootservice

import java.io.IOException

/**
 * Source mapping for defpackage.ee7.
 * The reference message is "Shell terminated unexpectedly".
 */
internal class ShellTerminatedException(
    cause: Throwable? = null
) : IOException("Shell terminated unexpectedly", cause)
