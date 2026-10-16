package com.bareapps.filesystem

/**
 * Migration target for reference source:
 * org/swiftapps/filesystem/File$FileType.java
 *
 * Reference behavior:
 * - JavaFile wraps java.io.File directly.
 * - LibsuFile wraps the same path through the reference's libsu-backed File implementation.
 *
 * TODO(reference-port): migrate the complete type and preserve both variants' runtime behavior.
 * Do not substitute a normal File for LibsuFile until the libsu wrapper mapping is verified.
 */
internal object FileTypePortPlaceholder
