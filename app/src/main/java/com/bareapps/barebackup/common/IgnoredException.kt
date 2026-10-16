package com.bareapps.barebackup.common

/**
 * BΛR☰ counterpart of SwiftBackup's org.swiftapps.swiftbackup.common.IgnoredException.
 *
 * The wrapped cause is retained as the exception cause, matching the reference type's
 * constructor and getCause() behavior. This type is used by BareApp's crash filter.
 */
class IgnoredException(cause: Throwable) : Exception(cause) {
    private val wrappedCause: Throwable = cause

    override val cause: Throwable
        get() = wrappedCause
}
