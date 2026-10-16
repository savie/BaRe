package com.bareapps.barebackup.storage

/**
 * Migration target for the filesystem-related methods b()/c() in reference source
 * defpackage/bs4.java.
 *
 * Reference behavior reads the "use_saf" preference (default false), logs the setting, and
 * assigns q63.e to control SAF/removable-storage behavior. bs4.a() is unrelated to this component:
 * it resolves the OneDrive AuthorizationAgent and must be migrated with the cloud/auth lifecycle.
 *
 * TODO(reference-port): port the preference initialization and q63.e interaction after the
 * filesystem abstraction exists. Do not conflate this flag with SAF URI permission grants.
 */
internal object SafAccessConfigPortPlaceholder
