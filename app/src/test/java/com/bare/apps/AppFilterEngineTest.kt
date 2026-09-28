package com.bare.apps
import com.bare.apps.domain.*
import com.bare.apps.model.CanonicalApp
import org.junit.Assert.assertEquals
import org.junit.Test
class AppFilterEngineTest{
 @Test fun search_matches_name_and_package(){val a=CanonicalApp("com.example.alpha","Alpha");val b=CanonicalApp("com.example.beta","Beta");assertEquals(listOf(a),AppSearch.query("alpha",listOf(a,b)))}
 @Test fun backed_up_filter(){val a=CanonicalApp("a","A",localMetadata=com.bare.apps.model.LocalMetadata("a").apply{updatePart(com.bare.apps.model.AppPart.APP,10)});val b=CanonicalApp("b","B");val s=AppFilterState(backup=BackupFilter.BACKED_UP);assertEquals(listOf(a),AppFilterEngine.apply(listOf(a,b),false,s))}
 @Test fun multiple_backups_filter(){val a=CanonicalApp("a","A",localBackupCount=2);val b=CanonicalApp("b","B",localBackupCount=1);val s=AppFilterState(misc=MiscFilter.MULTIPLE_BACKUPS);assertEquals(listOf(a),AppFilterEngine.apply(listOf(a,b),false,s))}
 @Test fun protected_and_noted_filters(){val a=CanonicalApp("a","A",localMetadata=com.bare.apps.model.LocalMetadata("a").apply{protectedBackup=true;note="note"});val b=CanonicalApp("b","B");assertEquals(listOf(a),AppFilterEngine.apply(listOf(a,b),false,AppFilterState(misc=MiscFilter.PROTECTED_BACKUPS)));assertEquals(listOf(a),AppFilterEngine.apply(listOf(a,b),false,AppFilterState(misc=MiscFilter.BACKUPS_WITH_NOTES)))}
 @Test fun backup_version_filters(){val old=CanonicalApp("old","Old",versionCode=5,localMetadata=com.bare.apps.model.LocalMetadata("old").apply{versionCode=4});val newer=CanonicalApp("new","New",versionCode=5,localMetadata=com.bare.apps.model.LocalMetadata("new").apply{versionCode=6});assertEquals(listOf(old),AppFilterEngine.apply(listOf(old,newer),false,AppFilterState(misc=MiscFilter.BACKUP_OLD)));assertEquals(listOf(newer),AppFilterEngine.apply(listOf(old,newer),false,AppFilterState(misc=MiscFilter.BACKUP_NEW)))}
 @Test fun google_play_installer_filter(){val gp=CanonicalApp("gp","GP",installerPackage="com.android.vending");val other=CanonicalApp("other","Other",installerPackage="other.installer");assertEquals(listOf(gp),AppFilterEngine.apply(listOf(gp,other),false,AppFilterState(misc=MiscFilter.INSTALLED_FROM_GOOGLE_PLAY)));assertEquals(listOf(other),AppFilterEngine.apply(listOf(gp,other),false,AppFilterState(misc=MiscFilter.NOT_INSTALLED_FROM_GOOGLE_PLAY)))}

}