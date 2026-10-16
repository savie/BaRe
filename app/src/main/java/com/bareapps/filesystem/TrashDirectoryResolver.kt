package com.bareapps.filesystem

/**
 * Semantic migration target for the storage-root selection used by m70.b in reference
 * defpackage/m70.java and the corresponding resolver branch in defpackage/g70.java.
 *
 * Reference behavior selects the deepest configured storage root containing a path and returns
 * its .trash/atomic-delete directory.
 *
 * TODO(reference-port): port the root-selection rule and connect it to the migrated storage
 * volume registry; do not guess the active root from path prefixes alone.
 */
internal object TrashDirectoryResolverPortPlaceholder
