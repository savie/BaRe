package com.bareapps.barebackup.common

import org.junit.Assert.assertEquals
import org.junit.Test
import java.io.StringReader

class CsvBackupUtilsTest {
    @Test
    fun rowEscapesQuotesAndCommas() {
        assertEquals("\"a,b\",\"say \"\"hi\"\"\"", CsvBackupUtils.row(listOf("a,b", "say \"hi\"")))
    }

    @Test
    fun parserKeepsMultilineQuotedFieldsAndTrailingEmptyColumns() {
        val input = "address,body,date,type\n\"+15551212\",\"line one\nline two\",123,1\n\"+15550000\",,124,1\n"
        val rows = mutableListOf<List<String>>()
        CsvBackupUtils.forEachRow(StringReader(input)) { rows += it }
        assertEquals(listOf("address", "body", "date", "type"), rows[0])
        assertEquals(listOf("+15551212", "line one\nline two", "123", "1"), rows[1])
        assertEquals(listOf("+15550000", "", "124", "1"), rows[2])
    }
}
