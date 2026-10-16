package com.bareapps.filesystem

/**
 * Semantic migration target for reference source defpackage/m70.java.
 *
 * Reference behavior maps paths according to the requested access mode and rewrites
 * /storage/emulated/<user> to /data/media/<user> for the root-oriented modes, except user 0.
 *
 * The reference's m70.b also supplies a trash-directory resolver backed by a configured storage
 * root (the relevant lambda is in defpackage/g70.java).
 *
 * TODO(reference-port): migrate path-mode semantics and trash-root resolution together.
 */
internal object StoragePathMapperPortPlaceholder
