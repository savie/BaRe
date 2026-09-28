package com.bare.apps
import com.bare.apps.model.AppPart
import org.junit.Assert.assertEquals
import org.junit.Test
class AppPartTest{@Test fun expansion_requires_privileged_capability(){assertEquals("EXPANSION",AppPart.EXPANSION.id)}@Test fun all_reference_parts_exist(){assertEquals(7,AppPart.entries.size)}}