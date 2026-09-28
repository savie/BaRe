package com.bare.apps.task
enum class ReferenceArchiveFormat(val code:Int){LEGACY_TAR(1),ENCRYPTED_ARCHIVE_2(2),EXPANSION_ARCHIVE_3(3),LEGACY_ARCHIVE_4(4),LEGACY_ARCHIVE_5(5),CURRENT_ARCHIVE_6(6)}
object ArchiveFormatSupport{fun isSupported(code:Int)=code in ReferenceArchiveFormat.entries.map{it.code}}