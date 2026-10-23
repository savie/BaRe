package com.bareapps.barebackup.common

/**
 * Marks failures that have already been handled by the application crash policy.
 */
class IgnoredException(cause: Throwable) : Exception(cause)
