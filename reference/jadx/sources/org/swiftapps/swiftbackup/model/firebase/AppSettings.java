package org.swiftapps.swiftbackup.model.firebase;

import android.content.SharedPreferences;
import android.os.Parcelable;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.cz4;
import defpackage.el1;
import defpackage.f28;
import defpackage.gv7;
import defpackage.h28;
import defpackage.ho6;
import defpackage.is4;
import defpackage.kx2;
import defpackage.ly8;
import defpackage.oi5;
import defpackage.ok;
import defpackage.pe4;
import defpackage.qb1;
import defpackage.tb1;
import defpackage.ux5;
import defpackage.wp1;
import defpackage.wu;
import defpackage.x50;
import defpackage.xp1;
import defpackage.xs1;
import defpackage.xx3;
import defpackage.xy;
import defpackage.yc6;
import defpackage.yu;
import defpackage.z85;
import defpackage.zc6;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppSettings {
    public static final a Companion = new a(null);
    private List<AppBackupLimitItem> appBackupLimits;
    private String appListLeftSwipeActions;
    private String appListRightSwipeActions;
    private Integer appsCompressionLevel;
    private MultipleBackupStrategy appsMultipleBackupStrategy;
    private Boolean backupMms;
    private Integer callsCompressionLevel;
    private String cloudConnection;
    private Integer dropboxChunkSize;
    private Integer foldersCompressionLevel;
    private Boolean isAppBackupArchivingEnabled;
    private Boolean isAppCacheBackupReq;
    private Boolean isDynamicColors;
    private Boolean isInPlaceApkDowngradeEnabled;
    private Boolean isMultithreadedDownloads;
    private Boolean isParallelCloudTransfers;
    private Boolean isPlayNotificationSounds;
    private Boolean isRestoreSsaids;
    private Boolean isShowSystemApps;
    private String language;
    private Integer maxCallBackups;
    private Integer maxSmsBackups;
    private Integer msgsCompressionLevel;
    private Integer multiThreadChunksCount;
    private Integer nextCloudChunkSize;
    private Boolean nextCloudForcedChunking;
    private Integer oneDriveChunkSize;
    private Integer passwordStrategy;
    private String pinnedQuickActions;
    private Integer restorePermissionsMode;
    private Boolean restoreSpecialAppPerms;
    private Integer s3ChunkSize;
    private Integer themeModeId;
    private Boolean useAmoledTheme;

    public /* synthetic */ AppSettings(Integer num, Boolean bool, String str, Integer num2, Boolean bool2, Integer num3, Integer num4, MultipleBackupStrategy multipleBackupStrategy, Boolean bool3, Boolean bool4, List list, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, String str2, Integer num5, Integer num6, Boolean bool9, Integer num7, Integer num8, Boolean bool10, String str3, String str4, Integer num9, String str5, Boolean bool11, Boolean bool12, Integer num10, Integer num11, Integer num12, Integer num13, Boolean bool13, Integer num14, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : num2, (i & 16) != 0 ? null : bool2, (i & 32) != 0 ? null : num3, (i & 64) != 0 ? null : num4, (i & 128) != 0 ? null : multipleBackupStrategy, (i & 256) != 0 ? null : bool3, (i & 512) != 0 ? null : bool4, (i & 1024) != 0 ? null : list, (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : bool5, (i & 4096) != 0 ? null : bool6, (i & 8192) != 0 ? null : bool7, (i & 16384) != 0 ? null : bool8, (i & 32768) != 0 ? null : str2, (i & 65536) != 0 ? null : num5, (i & 131072) != 0 ? null : num6, (i & 262144) != 0 ? null : bool9, (i & 524288) != 0 ? null : num7, (i & 1048576) != 0 ? null : num8, (i & 2097152) != 0 ? null : bool10, (i & 4194304) != 0 ? null : str3, (i & 8388608) != 0 ? null : str4, (i & 16777216) != 0 ? null : num9, (i & 33554432) != 0 ? null : str5, (i & 67108864) != 0 ? null : bool11, (i & 134217728) != 0 ? null : bool12, (i & 268435456) != 0 ? null : num10, (i & 536870912) != 0 ? null : num11, (i & 1073741824) != 0 ? null : num12, (i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? null : num13, (i2 & 1) != 0 ? null : bool13, (i2 & 2) != 0 ? null : num14);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AppSettings copy$default(AppSettings appSettings, Integer num, Boolean bool, String str, Integer num2, Boolean bool2, Integer num3, Integer num4, MultipleBackupStrategy multipleBackupStrategy, Boolean bool3, Boolean bool4, List list, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, String str2, Integer num5, Integer num6, Boolean bool9, Integer num7, Integer num8, Boolean bool10, String str3, String str4, Integer num9, String str5, Boolean bool11, Boolean bool12, Integer num10, Integer num11, Integer num12, Integer num13, Boolean bool13, Integer num14, int i, int i2, Object obj) {
        Integer num15;
        Boolean bool14;
        Integer num16 = (i & 1) != 0 ? appSettings.themeModeId : num;
        Boolean bool15 = (i & 2) != 0 ? appSettings.useAmoledTheme : bool;
        String str6 = (i & 4) != 0 ? appSettings.pinnedQuickActions : str;
        Integer num17 = (i & 8) != 0 ? appSettings.restorePermissionsMode : num2;
        Boolean bool16 = (i & 16) != 0 ? appSettings.restoreSpecialAppPerms : bool2;
        Integer num18 = (i & 32) != 0 ? appSettings.passwordStrategy : num3;
        Integer num19 = (i & 64) != 0 ? appSettings.appsCompressionLevel : num4;
        MultipleBackupStrategy multipleBackupStrategy2 = (i & 128) != 0 ? appSettings.appsMultipleBackupStrategy : multipleBackupStrategy;
        Boolean bool17 = (i & 256) != 0 ? appSettings.isAppCacheBackupReq : bool3;
        Boolean bool18 = (i & 512) != 0 ? appSettings.isAppBackupArchivingEnabled : bool4;
        List list2 = (i & 1024) != 0 ? appSettings.appBackupLimits : list;
        Boolean bool19 = (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? appSettings.isRestoreSsaids : bool5;
        Boolean bool20 = (i & 4096) != 0 ? appSettings.isInPlaceApkDowngradeEnabled : bool6;
        Boolean bool21 = (i & 8192) != 0 ? appSettings.isPlayNotificationSounds : bool7;
        Integer num20 = num16;
        Boolean bool22 = (i & 16384) != 0 ? appSettings.isDynamicColors : bool8;
        String str7 = (i & 32768) != 0 ? appSettings.language : str2;
        Integer num21 = (i & 65536) != 0 ? appSettings.maxSmsBackups : num5;
        Integer num22 = (i & 131072) != 0 ? appSettings.msgsCompressionLevel : num6;
        Boolean bool23 = (i & 262144) != 0 ? appSettings.backupMms : bool9;
        Integer num23 = (i & 524288) != 0 ? appSettings.maxCallBackups : num7;
        Integer num24 = (i & 1048576) != 0 ? appSettings.callsCompressionLevel : num8;
        Boolean bool24 = (i & 2097152) != 0 ? appSettings.isShowSystemApps : bool10;
        String str8 = (i & 4194304) != 0 ? appSettings.appListRightSwipeActions : str3;
        String str9 = (i & 8388608) != 0 ? appSettings.appListLeftSwipeActions : str4;
        Integer num25 = (i & 16777216) != 0 ? appSettings.foldersCompressionLevel : num9;
        String str10 = (i & 33554432) != 0 ? appSettings.cloudConnection : str5;
        Boolean bool25 = (i & 67108864) != 0 ? appSettings.isParallelCloudTransfers : bool11;
        Boolean bool26 = (i & 134217728) != 0 ? appSettings.isMultithreadedDownloads : bool12;
        Integer num26 = (i & 268435456) != 0 ? appSettings.multiThreadChunksCount : num10;
        Integer num27 = (i & 536870912) != 0 ? appSettings.dropboxChunkSize : num11;
        Integer num28 = (i & 1073741824) != 0 ? appSettings.oneDriveChunkSize : num12;
        Integer num29 = (i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? appSettings.nextCloudChunkSize : num13;
        Boolean bool27 = (i2 & 1) != 0 ? appSettings.nextCloudForcedChunking : bool13;
        if ((i2 & 2) != 0) {
            bool14 = bool27;
            num15 = appSettings.s3ChunkSize;
        } else {
            num15 = num14;
            bool14 = bool27;
        }
        return appSettings.copy(num20, bool15, str6, num17, bool16, num18, num19, multipleBackupStrategy2, bool17, bool18, list2, bool19, bool20, bool21, bool22, str7, num21, num22, bool23, num23, num24, bool24, str8, str9, num25, str10, bool25, bool26, num26, num27, num28, num29, bool14, num15);
    }

    public final Integer component1() {
        return this.themeModeId;
    }

    public final Boolean component10() {
        return this.isAppBackupArchivingEnabled;
    }

    public final List<AppBackupLimitItem> component11() {
        return this.appBackupLimits;
    }

    public final Boolean component12() {
        return this.isRestoreSsaids;
    }

    public final Boolean component13() {
        return this.isInPlaceApkDowngradeEnabled;
    }

    public final Boolean component14() {
        return this.isPlayNotificationSounds;
    }

    public final Boolean component15() {
        return this.isDynamicColors;
    }

    public final String component16() {
        return this.language;
    }

    public final Integer component17() {
        return this.maxSmsBackups;
    }

    public final Integer component18() {
        return this.msgsCompressionLevel;
    }

    public final Boolean component19() {
        return this.backupMms;
    }

    public final Boolean component2() {
        return this.useAmoledTheme;
    }

    public final Integer component20() {
        return this.maxCallBackups;
    }

    public final Integer component21() {
        return this.callsCompressionLevel;
    }

    public final Boolean component22() {
        return this.isShowSystemApps;
    }

    public final String component23() {
        return this.appListRightSwipeActions;
    }

    public final String component24() {
        return this.appListLeftSwipeActions;
    }

    public final Integer component25() {
        return this.foldersCompressionLevel;
    }

    public final String component26() {
        return this.cloudConnection;
    }

    public final Boolean component27() {
        return this.isParallelCloudTransfers;
    }

    public final Boolean component28() {
        return this.isMultithreadedDownloads;
    }

    public final Integer component29() {
        return this.multiThreadChunksCount;
    }

    public final String component3() {
        return this.pinnedQuickActions;
    }

    public final Integer component30() {
        return this.dropboxChunkSize;
    }

    public final Integer component31() {
        return this.oneDriveChunkSize;
    }

    public final Integer component32() {
        return this.nextCloudChunkSize;
    }

    public final Boolean component33() {
        return this.nextCloudForcedChunking;
    }

    public final Integer component34() {
        return this.s3ChunkSize;
    }

    public final Integer component4() {
        return this.restorePermissionsMode;
    }

    public final Boolean component5() {
        return this.restoreSpecialAppPerms;
    }

    public final Integer component6() {
        return this.passwordStrategy;
    }

    public final Integer component7() {
        return this.appsCompressionLevel;
    }

    public final MultipleBackupStrategy component8() {
        return this.appsMultipleBackupStrategy;
    }

    public final Boolean component9() {
        return this.isAppCacheBackupReq;
    }

    public final AppSettings copy(Integer num, Boolean bool, String str, Integer num2, Boolean bool2, Integer num3, Integer num4, MultipleBackupStrategy multipleBackupStrategy, Boolean bool3, Boolean bool4, List<AppBackupLimitItem> list, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, String str2, Integer num5, Integer num6, Boolean bool9, Integer num7, Integer num8, Boolean bool10, String str3, String str4, Integer num9, String str5, Boolean bool11, Boolean bool12, Integer num10, Integer num11, Integer num12, Integer num13, Boolean bool13, Integer num14) {
        return new AppSettings(num, bool, str, num2, bool2, num3, num4, multipleBackupStrategy, bool3, bool4, list, bool5, bool6, bool7, bool8, str2, num5, num6, bool9, num7, num8, bool10, str3, str4, num9, str5, bool11, bool12, num10, num11, num12, num13, bool13, num14);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSettings)) {
            return false;
        }
        AppSettings appSettings = (AppSettings) obj;
        return pe4.d(this.themeModeId, appSettings.themeModeId) && pe4.d(this.useAmoledTheme, appSettings.useAmoledTheme) && pe4.d(this.pinnedQuickActions, appSettings.pinnedQuickActions) && pe4.d(this.restorePermissionsMode, appSettings.restorePermissionsMode) && pe4.d(this.restoreSpecialAppPerms, appSettings.restoreSpecialAppPerms) && pe4.d(this.passwordStrategy, appSettings.passwordStrategy) && pe4.d(this.appsCompressionLevel, appSettings.appsCompressionLevel) && pe4.d(this.appsMultipleBackupStrategy, appSettings.appsMultipleBackupStrategy) && pe4.d(this.isAppCacheBackupReq, appSettings.isAppCacheBackupReq) && pe4.d(this.isAppBackupArchivingEnabled, appSettings.isAppBackupArchivingEnabled) && pe4.d(this.appBackupLimits, appSettings.appBackupLimits) && pe4.d(this.isRestoreSsaids, appSettings.isRestoreSsaids) && pe4.d(this.isInPlaceApkDowngradeEnabled, appSettings.isInPlaceApkDowngradeEnabled) && pe4.d(this.isPlayNotificationSounds, appSettings.isPlayNotificationSounds) && pe4.d(this.isDynamicColors, appSettings.isDynamicColors) && pe4.d(this.language, appSettings.language) && pe4.d(this.maxSmsBackups, appSettings.maxSmsBackups) && pe4.d(this.msgsCompressionLevel, appSettings.msgsCompressionLevel) && pe4.d(this.backupMms, appSettings.backupMms) && pe4.d(this.maxCallBackups, appSettings.maxCallBackups) && pe4.d(this.callsCompressionLevel, appSettings.callsCompressionLevel) && pe4.d(this.isShowSystemApps, appSettings.isShowSystemApps) && pe4.d(this.appListRightSwipeActions, appSettings.appListRightSwipeActions) && pe4.d(this.appListLeftSwipeActions, appSettings.appListLeftSwipeActions) && pe4.d(this.foldersCompressionLevel, appSettings.foldersCompressionLevel) && pe4.d(this.cloudConnection, appSettings.cloudConnection) && pe4.d(this.isParallelCloudTransfers, appSettings.isParallelCloudTransfers) && pe4.d(this.isMultithreadedDownloads, appSettings.isMultithreadedDownloads) && pe4.d(this.multiThreadChunksCount, appSettings.multiThreadChunksCount) && pe4.d(this.dropboxChunkSize, appSettings.dropboxChunkSize) && pe4.d(this.oneDriveChunkSize, appSettings.oneDriveChunkSize) && pe4.d(this.nextCloudChunkSize, appSettings.nextCloudChunkSize) && pe4.d(this.nextCloudForcedChunking, appSettings.nextCloudForcedChunking) && pe4.d(this.s3ChunkSize, appSettings.s3ChunkSize);
    }

    public final List<AppBackupLimitItem> getAppBackupLimits() {
        return this.appBackupLimits;
    }

    public final String getAppListLeftSwipeActions() {
        return this.appListLeftSwipeActions;
    }

    public final String getAppListRightSwipeActions() {
        return this.appListRightSwipeActions;
    }

    public final Integer getAppsCompressionLevel() {
        return this.appsCompressionLevel;
    }

    public final MultipleBackupStrategy getAppsMultipleBackupStrategy() {
        return this.appsMultipleBackupStrategy;
    }

    public final Boolean getBackupMms() {
        return this.backupMms;
    }

    public final Integer getCallsCompressionLevel() {
        return this.callsCompressionLevel;
    }

    public final String getCloudConnection() {
        return this.cloudConnection;
    }

    public final Integer getDropboxChunkSize() {
        return this.dropboxChunkSize;
    }

    public final Integer getFoldersCompressionLevel() {
        return this.foldersCompressionLevel;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final Integer getMaxCallBackups() {
        return this.maxCallBackups;
    }

    public final Integer getMaxSmsBackups() {
        return this.maxSmsBackups;
    }

    public final Integer getMsgsCompressionLevel() {
        return this.msgsCompressionLevel;
    }

    public final Integer getMultiThreadChunksCount() {
        return this.multiThreadChunksCount;
    }

    public final Integer getNextCloudChunkSize() {
        return this.nextCloudChunkSize;
    }

    public final Boolean getNextCloudForcedChunking() {
        return this.nextCloudForcedChunking;
    }

    public final Integer getOneDriveChunkSize() {
        return this.oneDriveChunkSize;
    }

    public final Integer getPasswordStrategy() {
        return this.passwordStrategy;
    }

    public final String getPinnedQuickActions() {
        return this.pinnedQuickActions;
    }

    public final Integer getRestorePermissionsMode() {
        return this.restorePermissionsMode;
    }

    public final Boolean getRestoreSpecialAppPerms() {
        return this.restoreSpecialAppPerms;
    }

    public final Integer getS3ChunkSize() {
        return this.s3ChunkSize;
    }

    public final Integer getThemeModeId() {
        return this.themeModeId;
    }

    public final Boolean getUseAmoledTheme() {
        return this.useAmoledTheme;
    }

    public int hashCode() {
        Integer num = this.themeModeId;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Boolean bool = this.useAmoledTheme;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.pinnedQuickActions;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.restorePermissionsMode;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool2 = this.restoreSpecialAppPerms;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num3 = this.passwordStrategy;
        int iHashCode6 = (iHashCode5 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.appsCompressionLevel;
        int iHashCode7 = (iHashCode6 + (num4 == null ? 0 : num4.hashCode())) * 31;
        MultipleBackupStrategy multipleBackupStrategy = this.appsMultipleBackupStrategy;
        int iHashCode8 = (iHashCode7 + (multipleBackupStrategy == null ? 0 : multipleBackupStrategy.hashCode())) * 31;
        Boolean bool3 = this.isAppCacheBackupReq;
        int iHashCode9 = (iHashCode8 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.isAppBackupArchivingEnabled;
        int iHashCode10 = (iHashCode9 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        List<AppBackupLimitItem> list = this.appBackupLimits;
        int iHashCode11 = (iHashCode10 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool5 = this.isRestoreSsaids;
        int iHashCode12 = (iHashCode11 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.isInPlaceApkDowngradeEnabled;
        int iHashCode13 = (iHashCode12 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.isPlayNotificationSounds;
        int iHashCode14 = (iHashCode13 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        Boolean bool8 = this.isDynamicColors;
        int iHashCode15 = (iHashCode14 + (bool8 == null ? 0 : bool8.hashCode())) * 31;
        String str2 = this.language;
        int iHashCode16 = (iHashCode15 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num5 = this.maxSmsBackups;
        int iHashCode17 = (iHashCode16 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.msgsCompressionLevel;
        int iHashCode18 = (iHashCode17 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Boolean bool9 = this.backupMms;
        int iHashCode19 = (iHashCode18 + (bool9 == null ? 0 : bool9.hashCode())) * 31;
        Integer num7 = this.maxCallBackups;
        int iHashCode20 = (iHashCode19 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.callsCompressionLevel;
        int iHashCode21 = (iHashCode20 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Boolean bool10 = this.isShowSystemApps;
        int iHashCode22 = (iHashCode21 + (bool10 == null ? 0 : bool10.hashCode())) * 31;
        String str3 = this.appListRightSwipeActions;
        int iHashCode23 = (iHashCode22 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.appListLeftSwipeActions;
        int iHashCode24 = (iHashCode23 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num9 = this.foldersCompressionLevel;
        int iHashCode25 = (iHashCode24 + (num9 == null ? 0 : num9.hashCode())) * 31;
        String str5 = this.cloudConnection;
        int iHashCode26 = (iHashCode25 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool11 = this.isParallelCloudTransfers;
        int iHashCode27 = (iHashCode26 + (bool11 == null ? 0 : bool11.hashCode())) * 31;
        Boolean bool12 = this.isMultithreadedDownloads;
        int iHashCode28 = (iHashCode27 + (bool12 == null ? 0 : bool12.hashCode())) * 31;
        Integer num10 = this.multiThreadChunksCount;
        int iHashCode29 = (iHashCode28 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.dropboxChunkSize;
        int iHashCode30 = (iHashCode29 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.oneDriveChunkSize;
        int iHashCode31 = (iHashCode30 + (num12 == null ? 0 : num12.hashCode())) * 31;
        Integer num13 = this.nextCloudChunkSize;
        int iHashCode32 = (iHashCode31 + (num13 == null ? 0 : num13.hashCode())) * 31;
        Boolean bool13 = this.nextCloudForcedChunking;
        int iHashCode33 = (iHashCode32 + (bool13 == null ? 0 : bool13.hashCode())) * 31;
        Integer num14 = this.s3ChunkSize;
        return iHashCode33 + (num14 != null ? num14.hashCode() : 0);
    }

    public final Boolean isAppBackupArchivingEnabled() {
        return this.isAppBackupArchivingEnabled;
    }

    public final Boolean isAppCacheBackupReq() {
        return this.isAppCacheBackupReq;
    }

    public final Boolean isDynamicColors() {
        return this.isDynamicColors;
    }

    public final Boolean isInPlaceApkDowngradeEnabled() {
        return this.isInPlaceApkDowngradeEnabled;
    }

    public final Boolean isMultithreadedDownloads() {
        return this.isMultithreadedDownloads;
    }

    public final Boolean isParallelCloudTransfers() {
        return this.isParallelCloudTransfers;
    }

    public final Boolean isPlayNotificationSounds() {
        return this.isPlayNotificationSounds;
    }

    public final Boolean isRestoreSsaids() {
        return this.isRestoreSsaids;
    }

    public final Boolean isShowSystemApps() {
        return this.isShowSystemApps;
    }

    public final void setAppBackupArchivingEnabled(Boolean bool) {
        this.isAppBackupArchivingEnabled = bool;
    }

    public final void setAppBackupLimits(List<AppBackupLimitItem> list) {
        this.appBackupLimits = list;
    }

    public final void setAppCacheBackupReq(Boolean bool) {
        this.isAppCacheBackupReq = bool;
    }

    public final void setAppListLeftSwipeActions(String str) {
        this.appListLeftSwipeActions = str;
    }

    public final void setAppListRightSwipeActions(String str) {
        this.appListRightSwipeActions = str;
    }

    public final void setAppsCompressionLevel(Integer num) {
        this.appsCompressionLevel = num;
    }

    public final void setAppsMultipleBackupStrategy(MultipleBackupStrategy multipleBackupStrategy) {
        this.appsMultipleBackupStrategy = multipleBackupStrategy;
    }

    public final void setBackupMms(Boolean bool) {
        this.backupMms = bool;
    }

    public final void setCallsCompressionLevel(Integer num) {
        this.callsCompressionLevel = num;
    }

    public final void setCloudConnection(String str) {
        this.cloudConnection = str;
    }

    public final void setDropboxChunkSize(Integer num) {
        this.dropboxChunkSize = num;
    }

    public final void setDynamicColors(Boolean bool) {
        this.isDynamicColors = bool;
    }

    public final void setFoldersCompressionLevel(Integer num) {
        this.foldersCompressionLevel = num;
    }

    public final void setInPlaceApkDowngradeEnabled(Boolean bool) {
        this.isInPlaceApkDowngradeEnabled = bool;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setMaxCallBackups(Integer num) {
        this.maxCallBackups = num;
    }

    public final void setMaxSmsBackups(Integer num) {
        this.maxSmsBackups = num;
    }

    public final void setMsgsCompressionLevel(Integer num) {
        this.msgsCompressionLevel = num;
    }

    public final void setMultiThreadChunksCount(Integer num) {
        this.multiThreadChunksCount = num;
    }

    public final void setMultithreadedDownloads(Boolean bool) {
        this.isMultithreadedDownloads = bool;
    }

    public final void setNextCloudChunkSize(Integer num) {
        this.nextCloudChunkSize = num;
    }

    public final void setNextCloudForcedChunking(Boolean bool) {
        this.nextCloudForcedChunking = bool;
    }

    public final void setOneDriveChunkSize(Integer num) {
        this.oneDriveChunkSize = num;
    }

    public final void setParallelCloudTransfers(Boolean bool) {
        this.isParallelCloudTransfers = bool;
    }

    public final void setPasswordStrategy(Integer num) {
        this.passwordStrategy = num;
    }

    public final void setPinnedQuickActions(String str) {
        this.pinnedQuickActions = str;
    }

    public final void setPlayNotificationSounds(Boolean bool) {
        this.isPlayNotificationSounds = bool;
    }

    public final void setRestorePermissionsMode(Integer num) {
        this.restorePermissionsMode = num;
    }

    public final void setRestoreSpecialAppPerms(Boolean bool) {
        this.restoreSpecialAppPerms = bool;
    }

    public final void setRestoreSsaids(Boolean bool) {
        this.isRestoreSsaids = bool;
    }

    public final void setS3ChunkSize(Integer num) {
        this.s3ChunkSize = num;
    }

    public final void setShowSystemApps(Boolean bool) {
        this.isShowSystemApps = bool;
    }

    public final void setThemeModeId(Integer num) {
        this.themeModeId = num;
    }

    public final void setUseAmoledTheme(Boolean bool) {
        this.useAmoledTheme = bool;
    }

    public String toString() {
        Integer num = this.themeModeId;
        Boolean bool = this.useAmoledTheme;
        String str = this.pinnedQuickActions;
        Integer num2 = this.restorePermissionsMode;
        Boolean bool2 = this.restoreSpecialAppPerms;
        Integer num3 = this.passwordStrategy;
        Integer num4 = this.appsCompressionLevel;
        MultipleBackupStrategy multipleBackupStrategy = this.appsMultipleBackupStrategy;
        Boolean bool3 = this.isAppCacheBackupReq;
        Boolean bool4 = this.isAppBackupArchivingEnabled;
        List<AppBackupLimitItem> list = this.appBackupLimits;
        Boolean bool5 = this.isRestoreSsaids;
        Boolean bool6 = this.isInPlaceApkDowngradeEnabled;
        Boolean bool7 = this.isPlayNotificationSounds;
        Boolean bool8 = this.isDynamicColors;
        String str2 = this.language;
        Integer num5 = this.maxSmsBackups;
        Integer num6 = this.msgsCompressionLevel;
        Boolean bool9 = this.backupMms;
        Integer num7 = this.maxCallBackups;
        Integer num8 = this.callsCompressionLevel;
        Boolean bool10 = this.isShowSystemApps;
        String str3 = this.appListRightSwipeActions;
        String str4 = this.appListLeftSwipeActions;
        Integer num9 = this.foldersCompressionLevel;
        String str5 = this.cloudConnection;
        Boolean bool11 = this.isParallelCloudTransfers;
        Boolean bool12 = this.isMultithreadedDownloads;
        Integer num10 = this.multiThreadChunksCount;
        Integer num11 = this.dropboxChunkSize;
        Integer num12 = this.oneDriveChunkSize;
        Integer num13 = this.nextCloudChunkSize;
        Boolean bool13 = this.nextCloudForcedChunking;
        Integer num14 = this.s3ChunkSize;
        StringBuilder sb = new StringBuilder("AppSettings(themeModeId=");
        sb.append(num);
        sb.append(", useAmoledTheme=");
        sb.append(bool);
        sb.append(", pinnedQuickActions=");
        sb.append(str);
        sb.append(", restorePermissionsMode=");
        sb.append(num2);
        sb.append(", restoreSpecialAppPerms=");
        sb.append(bool2);
        sb.append(", passwordStrategy=");
        sb.append(num3);
        sb.append(", appsCompressionLevel=");
        sb.append(num4);
        sb.append(", appsMultipleBackupStrategy=");
        sb.append(multipleBackupStrategy);
        sb.append(", isAppCacheBackupReq=");
        sb.append(bool3);
        sb.append(", isAppBackupArchivingEnabled=");
        sb.append(bool4);
        sb.append(", appBackupLimits=");
        sb.append(list);
        sb.append(", isRestoreSsaids=");
        sb.append(bool5);
        sb.append(", isInPlaceApkDowngradeEnabled=");
        sb.append(bool6);
        sb.append(", isPlayNotificationSounds=");
        sb.append(bool7);
        sb.append(", isDynamicColors=");
        sb.append(bool8);
        sb.append(", language=");
        sb.append(str2);
        sb.append(", maxSmsBackups=");
        sb.append(num5);
        sb.append(", msgsCompressionLevel=");
        sb.append(num6);
        sb.append(", backupMms=");
        sb.append(bool9);
        sb.append(", maxCallBackups=");
        sb.append(num7);
        sb.append(", callsCompressionLevel=");
        sb.append(num8);
        sb.append(", isShowSystemApps=");
        sb.append(bool10);
        sb.append(", appListRightSwipeActions=");
        xs1.t(sb, str3, ", appListLeftSwipeActions=", str4, ", foldersCompressionLevel=");
        sb.append(num9);
        sb.append(", cloudConnection=");
        sb.append(str5);
        sb.append(", isParallelCloudTransfers=");
        sb.append(bool11);
        sb.append(", isMultithreadedDownloads=");
        sb.append(bool12);
        sb.append(", multiThreadChunksCount=");
        sb.append(num10);
        sb.append(", dropboxChunkSize=");
        sb.append(num11);
        sb.append(", oneDriveChunkSize=");
        sb.append(num12);
        sb.append(", nextCloudChunkSize=");
        sb.append(num13);
        sb.append(", nextCloudForcedChunking=");
        sb.append(bool13);
        sb.append(", s3ChunkSize=");
        sb.append(num14);
        sb.append(")");
        return sb.toString();
    }

    public AppSettings(Integer num, Boolean bool, String str, Integer num2, Boolean bool2, Integer num3, Integer num4, MultipleBackupStrategy multipleBackupStrategy, Boolean bool3, Boolean bool4, List<AppBackupLimitItem> list, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, String str2, Integer num5, Integer num6, Boolean bool9, Integer num7, Integer num8, Boolean bool10, String str3, String str4, Integer num9, String str5, Boolean bool11, Boolean bool12, Integer num10, Integer num11, Integer num12, Integer num13, Boolean bool13, Integer num14) {
        this.themeModeId = num;
        this.useAmoledTheme = bool;
        this.pinnedQuickActions = str;
        this.restorePermissionsMode = num2;
        this.restoreSpecialAppPerms = bool2;
        this.passwordStrategy = num3;
        this.appsCompressionLevel = num4;
        this.appsMultipleBackupStrategy = multipleBackupStrategy;
        this.isAppCacheBackupReq = bool3;
        this.isAppBackupArchivingEnabled = bool4;
        this.appBackupLimits = list;
        this.isRestoreSsaids = bool5;
        this.isInPlaceApkDowngradeEnabled = bool6;
        this.isPlayNotificationSounds = bool7;
        this.isDynamicColors = bool8;
        this.language = str2;
        this.maxSmsBackups = num5;
        this.msgsCompressionLevel = num6;
        this.backupMms = bool9;
        this.maxCallBackups = num7;
        this.callsCompressionLevel = num8;
        this.isShowSystemApps = bool10;
        this.appListRightSwipeActions = str3;
        this.appListLeftSwipeActions = str4;
        this.foldersCompressionLevel = num9;
        this.cloudConnection = str5;
        this.isParallelCloudTransfers = bool11;
        this.isMultithreadedDownloads = bool12;
        this.multiThreadChunksCount = num10;
        this.dropboxChunkSize = num11;
        this.oneDriveChunkSize = num12;
        this.nextCloudChunkSize = num13;
        this.nextCloudForcedChunking = bool13;
        this.s3ChunkSize = num14;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4, types: [xp1] */
        /* JADX WARN: Type inference failed for: r15v6 */
        /* JADX WARN: Type inference failed for: r15v7, types: [xp1] */
        /* JADX WARN: Type inference failed for: r15v8, types: [xp1] */
        /* JADX WARN: Type inference failed for: r15v9 */
        /* JADX WARN: Type inference failed for: r27v0 */
        /* JADX WARN: Type inference failed for: r27v1, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r27v2 */
        /* JADX WARN: Type inference failed for: r28v0 */
        /* JADX WARN: Type inference failed for: r28v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r28v2 */
        /* JADX WARN: Type inference failed for: r29v0 */
        /* JADX WARN: Type inference failed for: r29v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r29v2 */
        /* JADX WARN: Type inference failed for: r2v48, types: [xp1[]] */
        /* JADX WARN: Type inference failed for: r30v0 */
        /* JADX WARN: Type inference failed for: r30v1, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r30v2 */
        /* JADX WARN: Type inference failed for: r31v0 */
        /* JADX WARN: Type inference failed for: r31v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r31v2 */
        /* JADX WARN: Type inference failed for: r32v0 */
        /* JADX WARN: Type inference failed for: r32v1, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r32v2 */
        /* JADX WARN: Type inference failed for: r33v0 */
        /* JADX WARN: Type inference failed for: r33v1, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r33v2 */
        /* JADX WARN: Type inference failed for: r34v0 */
        /* JADX WARN: Type inference failed for: r34v1, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r34v2 */
        /* JADX WARN: Type inference failed for: r35v0 */
        /* JADX WARN: Type inference failed for: r35v1, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r35v2 */
        /* JADX WARN: Type inference failed for: r36v0 */
        /* JADX WARN: Type inference failed for: r36v1, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r36v2 */
        /* JADX WARN: Type inference failed for: r37v0 */
        /* JADX WARN: Type inference failed for: r37v1, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r37v2 */
        /* JADX WARN: Type inference failed for: r38v0 */
        /* JADX WARN: Type inference failed for: r38v1, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r38v2 */
        /* JADX WARN: Type inference failed for: r39v0 */
        /* JADX WARN: Type inference failed for: r39v1, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r39v2 */
        public final AppSettings withSavedSettings() throws Throwable {
            boolean z;
            ux5 ux5Var;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            String string;
            Throwable th;
            ?? r15;
            h28.Companion.getClass();
            int themeId = f28.b().getThemeId();
            boolean zE = f28.e();
            Throwable th2 = null;
            Boolean boolValueOf = zE ? Boolean.valueOf(zE) : null;
            Parcelable.Creator<zc6> creator = zc6.CREATOR;
            Set setG = yc6.g();
            if (setG.equals(x50.A0(new Integer[]{101, 201}))) {
                setG = null;
            }
            Set set = (setG == null || setG.isEmpty()) ? null : setG;
            String strY0 = set != null ? el1.Y0(set, null, null, null, null, 63) : null;
            yu.Companion.getClass();
            int id = wu.a().getId();
            Integer numValueOf = id > 0 ? Integer.valueOf(id) : null;
            boolean z6 = true;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences.getBoolean("restore_special_permissions", true);
                Boolean boolValueOf2 = !z ? Boolean.valueOf(z) : null;
                try {
                    ux5Var = (ux5) ((kx2) ux5.getEntries()).get(V.INSTANCE.getZ().getInt("saved_password_mode", ux5.STANDARD_PASSWORD.ordinal()));
                } catch (Exception unused) {
                    ux5Var = null;
                }
                if (ux5Var == null) {
                    ux5Var = ux5.STANDARD_PASSWORD;
                }
                if (ux5Var == ux5.STANDARD_PASSWORD) {
                    ux5Var = null;
                }
                Integer numValueOf2 = ux5Var != null ? Integer.valueOf(ux5Var.ordinal()) : null;
                xp1 xp1VarR = z85.r();
                xp1.Companion.getClass();
                if (xp1VarR == xp1.DEFAULT) {
                    xp1VarR = null;
                }
                Integer numValueOf3 = xp1VarR != null ? Integer.valueOf(xp1VarR.getLevel()) : null;
                MultipleBackupStrategy.Companion.getClass();
                MultipleBackupStrategy multipleBackupStrategyC = b.c();
                MultipleBackupStrategy multipleBackupStrategy = !pe4.d(multipleBackupStrategyC, b.a()) ? multipleBackupStrategyC : null;
                boolean zW = z85.w();
                Boolean boolValueOf3 = zW ? Boolean.valueOf(zW) : null;
                ArrayList arrayListD = ok.d();
                boolean z7 = false;
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z2 = sharedPreferences2.getBoolean("restore_ssaids", false);
                    Boolean boolValueOf4 = z2 ? Boolean.valueOf(z2) : null;
                    try {
                        SharedPreferences sharedPreferences3 = cz4.f;
                        if (sharedPreferences3 == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z3 = sharedPreferences3.getBoolean("in_place_apk_downgrades", false);
                        Boolean boolValueOf5 = z3 ? Boolean.valueOf(z3) : null;
                        try {
                            SharedPreferences sharedPreferences4 = cz4.f;
                            if (sharedPreferences4 == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            z4 = sharedPreferences4.getBoolean("play_notification_sounds", true);
                            Boolean boolValueOf6 = !z4 ? Boolean.valueOf(z4) : null;
                            try {
                                SharedPreferences sharedPreferences5 = cz4.f;
                                if (sharedPreferences5 == null) {
                                    pe4.F("prefs");
                                    throw null;
                                }
                                z5 = sharedPreferences5.getBoolean("dynamic_colors", true);
                                Boolean boolValueOf7 = !z5 ? Boolean.valueOf(z5) : null;
                                try {
                                    SharedPreferences sharedPreferences6 = cz4.f;
                                    if (sharedPreferences6 == null) {
                                        pe4.F("prefs");
                                        throw null;
                                    }
                                    string = sharedPreferences6.getString("app_locale", null);
                                    Locale localeA = (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a();
                                    String language = localeA.getLanguage();
                                    language.getClass();
                                    String country = localeA.getCountry();
                                    country.getClass();
                                    is4 is4VarI = xx3.i(language, country);
                                    if (is4VarI.equals(xx3.h())) {
                                        is4VarI = null;
                                    }
                                    String string2 = is4VarI != null ? is4VarI.toString() : null;
                                    Integer numU = z85.u();
                                    xp1 xp1VarS = z85.s();
                                    if (xp1VarS == xp1.DEFAULT) {
                                        xp1VarS = null;
                                    }
                                    Integer numValueOf4 = xp1VarS != null ? Integer.valueOf(xp1VarS.getLevel()) : null;
                                    try {
                                        SharedPreferences sharedPreferences7 = cz4.f;
                                        if (sharedPreferences7 == null) {
                                            pe4.F("prefs");
                                            throw null;
                                        }
                                        z6 = sharedPreferences7.getBoolean("messages_backup_mms", true);
                                        Boolean boolValueOf8 = !z6 ? Boolean.valueOf(z6) : null;
                                        Integer numS = ho6.s();
                                        xp1 xp1VarP = ho6.p();
                                        if (xp1VarP == xp1.DEFAULT) {
                                            xp1VarP = null;
                                        }
                                        Integer numValueOf5 = xp1VarP != null ? Integer.valueOf(xp1VarP.getLevel()) : null;
                                        int i = -1;
                                        try {
                                            SharedPreferences sharedPreferences8 = cz4.f;
                                            if (sharedPreferences8 == null) {
                                                pe4.F("prefs");
                                                throw null;
                                            }
                                            i = sharedPreferences8.getInt("compression_level_folders", -1);
                                            xp1.Companion.getClass();
                                            ?? A = wp1.a();
                                            int i2 = 0;
                                            while (true) {
                                                if (i2 >= 2) {
                                                    th = th2;
                                                    r15 = th;
                                                    break;
                                                }
                                                r15 = A[i2];
                                                th = th2;
                                                if (r15.getLevel() == i) {
                                                    break;
                                                }
                                                i2++;
                                                th2 = th;
                                            }
                                            if (r15 == 0) {
                                                xp1.Companion.getClass();
                                                r15 = xp1.DEFAULT;
                                            }
                                            ?? r16 = r15;
                                            if (r15 == xp1.DEFAULT) {
                                                r16 = th;
                                            }
                                            ?? ValueOf = r16 != 0 ? Integer.valueOf(r16.getLevel()) : th;
                                            try {
                                                SharedPreferences sharedPreferences9 = cz4.f;
                                                if (sharedPreferences9 == null) {
                                                    pe4.F("prefs");
                                                    throw th;
                                                }
                                                z7 = sharedPreferences9.getBoolean("show_system_apps", false);
                                                ?? ValueOf2 = z7 ? Boolean.valueOf(z7) : th;
                                                xy xyVar = xy.Right;
                                                xyVar.getClass();
                                                String strM = ho6.m(ho6.o(xyVar));
                                                ?? r28 = !strM.equals(ho6.m(ho6.j(xyVar))) ? strM : th;
                                                xy xyVar2 = xy.Left;
                                                xyVar2.getClass();
                                                String strM2 = ho6.m(ho6.o(xyVar2));
                                                ?? r29 = !strM2.equals(ho6.m(ho6.j(xyVar2))) ? strM2 : th;
                                                tb1 tb1Var = tb1.a;
                                                ?? constant = qb1.m() ? qb1.f().getConstant() : th;
                                                boolean zB = ho6.B();
                                                ?? ValueOf3 = zB ? Boolean.valueOf(zB) : th;
                                                boolean zA = ho6.A();
                                                ?? ValueOf4 = zA ? Boolean.valueOf(zA) : th;
                                                int iT = ho6.t();
                                                Integer numValueOf6 = Integer.valueOf(iT);
                                                gv7 gv7Var = oi5.L;
                                                ?? r34 = iT != ly8.v() ? numValueOf6 : th;
                                                int iQ = ho6.q();
                                                ?? ValueOf5 = iQ != 25 ? Integer.valueOf(iQ) : th;
                                                int iW = ho6.w();
                                                ?? ValueOf6 = iW != 5 ? Integer.valueOf(iW) : th;
                                                int iV = ho6.v();
                                                ?? ValueOf7 = iV != 100 ? Integer.valueOf(iV) : th;
                                                boolean z8 = ho6.z();
                                                ?? ValueOf8 = z8 ? Boolean.valueOf(z8) : th;
                                                int iY = ho6.y();
                                                return new AppSettings(Integer.valueOf(themeId), boolValueOf, strY0, numValueOf, boolValueOf2, numValueOf2, numValueOf3, multipleBackupStrategy, boolValueOf3, null, arrayListD, boolValueOf4, boolValueOf5, boolValueOf6, boolValueOf7, string2, numU, numValueOf4, boolValueOf8, numS, numValueOf5, ValueOf2, r28, r29, ValueOf, constant, ValueOf3, ValueOf4, r34, ValueOf5, ValueOf6, ValueOf7, ValueOf8, iY != 5 ? Integer.valueOf(iY) : th, 512, 0, null);
                                            } catch (ClassCastException unused2) {
                                            }
                                        } catch (ClassCastException unused3) {
                                        }
                                    } catch (ClassCastException unused4) {
                                    }
                                } catch (ClassCastException unused5) {
                                    string = null;
                                }
                            } catch (ClassCastException unused6) {
                                z5 = true;
                            }
                        } catch (ClassCastException unused7) {
                            z4 = true;
                        }
                    } catch (ClassCastException unused8) {
                        z3 = false;
                    }
                } catch (ClassCastException unused9) {
                    z2 = false;
                }
            } catch (ClassCastException unused10) {
                z = true;
            }
        }

        private a() {
        }
    }

    public AppSettings() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 3, null);
    }
}
