package com.bareapps.filesystem

import java.io.IOException
import java.io.InputStream

/**
 * Source mapping for defpackage.hp7. It reads stdout through the marker and
 * parses the following line as an integer; missing or malformed values map
 * to 1 in the reference implementation.
 */
internal class CommandExitCodeReader(
    input: InputStream,
    output: MutableList<String>?,
    marker: String
) {
    private val reader = CommandStreamLineReader(input, output, marker)

    @Throws(IOException::class)
    fun readExitCode(): Int {
        val value = reader.readUntilMarker(returnFollowingLine = true) ?: return 1
        return value.toIntOrNull() ?: 1
    }
}
