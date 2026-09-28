package com.bare.apps
import com.bare.apps.domain.*
import com.bare.apps.model.CanonicalApp
import org.junit.Assert.assertEquals
import org.junit.Test
class AppFilterEngineTest{
 @Test fun search_matches_name_and_package(){val a=CanonicalApp("com.example.alpha","Alpha");val b=CanonicalApp("com.example.beta","Beta");assertEquals(listOf(a),AppSearch.query("alpha",listOf(a,b)))}
 @Test fun backed_up_filter(){val a=CanonicalApp("a","A",localMetadata=com.bare.apps.model.LocalMetadata("a").apply{updatePart(com.bare.apps.model.AppPart.APP,10)});val b=CanonicalApp("b","B");val s=AppFilterState(backup=BackupFilter.BACKED_UP);assertEquals(listOf(a),AppFilterEngine.apply(listOf(a,b),false,s))}
}