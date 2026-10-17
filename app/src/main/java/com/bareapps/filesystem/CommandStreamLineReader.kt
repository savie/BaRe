package com.bareapps.filesystem

import java.io.BufferedReader
import java.io.IOException
import java.io.InputStream
import java.io.InputStreamReader
import java.nio.charset.StandardCharsets

/**
 * Source mapping for defpackage.ip7.
 *
 * Reads UTF-8 lines until a line ends with the 36-character task marker.
 * Non-marker lines are appended to the supplied output list. When
 * [returnFollowingLine] is true, the line after the marker is returned
 * (the stdout reader uses this for the process exit status).
 */
internal class CommandStreamLineReader(
    private val input: InputStream,
    private val output: MutableList<String>?,
    private val marker: String
) {
    @Throws(IOException::class)
    fun readUntilMarker(returnFollowingLine: Boolean): String? {
        val reader = BufferedReader(InputStreamReader(input, StandardCharsets.UTF_8))
        while (true) {
            val line = reader.readLine() ?: return null
            val markerStart = line.length - marker.length
            val isMarker = markerStart >= 0 && line.startsWith(marker, markerStart)
            if (!isMarker) {
                output?.add(line)
                continue
            }
            if (line.length != marker.length) {
                output?.add(line.substring(0, markerStart))
            }
            return if (returnFollowingLine) reader.readLine() else null
        }
    }
}
