package com.bareapps.barebackup.common

import java.io.PushbackReader
import java.io.Reader

/** Small RFC-4180-compatible row helpers for the local SMS and call-log export formats. */
object CsvBackupUtils {
    fun row(values: List<String?>): String = values.joinToString(",") { value ->
        "\"" + value.orEmpty().replace("\"", "\"\"") + "\""
    }

    /** Streams CSV records and supports quoted fields containing commas or newlines. */
    fun forEachRow(reader: Reader, onRow: (List<String>) -> Unit) {
        val input = PushbackReader(reader, 1)
        val row = mutableListOf<String>()
        val field = StringBuilder()
        var quoted = false
        var touched = false
        while (true) {
            val code = input.read()
            if (code < 0) break
            val char = code.toChar()
            touched = true
            when {
                char == '"' && quoted -> {
                    val next = input.read()
                    if (next == '"'.code) field.append('"')
                    else {
                        quoted = false
                        if (next >= 0) input.unread(next)
                    }
                }
                char == '"' && !quoted -> quoted = true
                char == ',' && !quoted -> {
                    row += field.toString()
                    field.setLength(0)
                }
                (char == '\n' || char == '\r') && !quoted -> {
                    if (char == '\r') {
                        val next = input.read()
                        if (next >= 0 && next != '\n'.code) input.unread(next)
                    }
                    row += field.toString()
                    field.setLength(0)
                    onRow(row.toList())
                    row.clear()
                    touched = false
                }
                else -> field.append(char)
            }
        }
        if (touched || field.isNotEmpty() || row.isNotEmpty()) {
            row += field.toString()
            onRow(row.toList())
        }
    }

    fun parseRow(line: String): List<String> {
        val values = mutableListOf<String>()
        val field = StringBuilder()
        var quoted = false
        var index = 0
        while (index < line.length) {
            val char = line[index]
            when {
                char == '"' && quoted && index + 1 < line.length && line[index + 1] == '"' -> {
                    field.append('"')
                    index++
                }
                char == '"' -> quoted = !quoted
                char == ',' && !quoted -> {
                    values += field.toString()
                    field.setLength(0)
                }
                else -> field.append(char)
            }
            index++
        }
        values += field.toString()
        return values
    }
}
