package com.bareapps.filesystem

import java.io.IOException
import java.io.InputStream

/**
 * Source mapping for defpackage.gp7. Drains stderr until the task marker,
 * preserving all preceding lines in the supplied list.
 */
internal class CommandStderrDrainer(
    input: InputStream,
    output: MutableList<String>?,
    marker: String
) {
    private val reader = CommandStreamLineReader(input, output, marker)

    @Throws(IOException::class)
    fun drain() {
        reader.readUntilMarker(returnFollowingLine = false)
    }
}
