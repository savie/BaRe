package org.swiftapps.swiftbackup.model.app;

import android.os.Parcel;
import android.os.Parcelable;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.fz5;
import defpackage.io4;
import defpackage.ji;
import defpackage.jz2;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.u48;
import defpackage.x50;
import defpackage.xs1;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalMetadata implements Parcelable {
    public static final long SB_VERSION_CODE_REQUIRED = 580;
    public static final String SB_VERSION_NAME_REQUIRED = "v5.0.0";
    private String _note;
    private Boolean _protectedBackup;
    private String accessibilityComponent;
    private Long apkBackupDate;
    private Long apkBackupSize;
    private Long apkSBVersionCodeRequired;
    private String apkSBVersionNameRequired;
    private Long dataBackupDate;
    private Long dataBackupSize;
    private String dataEncryptionMethod;
    private String dataPasswordHash;
    private Long dataSBVersionCodeRequired;
    private String dataSBVersionNameRequired;
    private Long dataSizeMirrored;
    private Long dateBackup;
    private Long dateBackupUpdated;
    private Long expBackupSize;
    private Long expSBVersionCodeRequired;
    private String expSBVersionNameRequired;
    private Long expSizeMirrored;
    private Long expansionBackupDate;
    private Long extDataBackupDate;
    private Long extDataBackupSize;
    private String extDataEncryptionMethod;
    private String extDataPasswordHash;
    private Long extDataSBVersionCodeRequired;
    private String extDataSBVersionNameRequired;
    private Long extDataSizeMirrored;
    private String installerPackage;
    private Boolean isDataEncrypted;
    private Boolean isExtDataEncrypted;
    private Boolean isMediaEncrypted;
    private Integer keyVersion;
    private Long mediaBackupDate;
    private Long mediaBackupSize;
    private String mediaEncryptionMethod;
    private String mediaPasswordHash;
    private Long mediaSBVersionCodeRequired;
    private String mediaSBVersionNameRequired;
    private Long mediaSizeMirrored;
    private String name;
    private String ntfAccessComponent;
    private String packageName;
    private String permissionIdsCsv;
    private String permissionStatesCsv;
    private Long sharedLibsBackupSize;
    private Long sharedLibsSBVersionCodeRequired;
    private String sharedLibsSBVersionNameRequired;
    private Long sharedLibsSizeMirrored;
    private Long splitsBackupSize;
    private Long splitsSBVersionCodeRequired;
    private String splitsSBVersionNameRequired;
    private Long splitsSizeMirrored;
    private String ssaid;
    private Long versionCode;
    private String versionName;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<LocalMetadata> CREATOR = new b();

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ LocalMetadata(String str, String str2, Long l, Long l2, String str3, Long l3, Long l4, Long l5, Long l6, String str4, Long l7, Long l8, Long l9, String str5, Long l10, Long l11, Long l12, String str6, Long l13, Long l14, Boolean bool, String str7, String str8, Long l15, Long l16, String str9, Long l17, Long l18, Boolean bool2, String str10, String str11, Long l19, Long l20, String str12, Long l21, Long l22, Long l23, Long l24, String str13, Long l25, Long l26, Boolean bool3, String str14, String str15, Long l27, Long l28, String str16, String str17, String str18, String str19, String str20, String str21, String str22, Boolean bool4, String str23, Integer num, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str24 = (i & 1) != 0 ? "" : str;
        this(str24, (i & 2) == 0 ? str2 : "", (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : l3, (i & 64) != 0 ? null : l4, (i & 128) != 0 ? null : l5, (i & 256) != 0 ? null : l6, (i & 512) != 0 ? null : str4, (i & 1024) != 0 ? null : l7, (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : l8, (i & 4096) != 0 ? null : l9, (i & 8192) != 0 ? null : str5, (i & 16384) != 0 ? null : l10, (i & 32768) != 0 ? null : l11, (i & 65536) != 0 ? null : l12, (i & 131072) != 0 ? null : str6, (i & 262144) != 0 ? null : l13, (i & 524288) != 0 ? null : l14, (i & 1048576) != 0 ? null : bool, (i & 2097152) != 0 ? null : str7, (i & 4194304) != 0 ? null : str8, (i & 8388608) != 0 ? null : l15, (i & 16777216) != 0 ? null : l16, (i & 33554432) != 0 ? null : str9, (i & 67108864) != 0 ? null : l17, (i & 134217728) != 0 ? null : l18, (i & 268435456) != 0 ? null : bool2, (i & 536870912) != 0 ? null : str10, (i & 1073741824) != 0 ? null : str11, (i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? null : l19, (i2 & 1) != 0 ? null : l20, (i2 & 2) != 0 ? null : str12, (i2 & 4) != 0 ? null : l21, (i2 & 8) != 0 ? null : l22, (i2 & 16) != 0 ? null : l23, (i2 & 32) != 0 ? null : l24, (i2 & 64) != 0 ? null : str13, (i2 & 128) != 0 ? null : l25, (i2 & 256) != 0 ? null : l26, (i2 & 512) != 0 ? null : bool3, (i2 & 1024) != 0 ? null : str14, (i2 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : str15, (i2 & 4096) != 0 ? null : l27, (i2 & 8192) != 0 ? null : l28, (i2 & 16384) != 0 ? null : str16, (i2 & 32768) != 0 ? null : str17, (i2 & 65536) != 0 ? null : str18, (i2 & 131072) != 0 ? null : str19, (i2 & 262144) != 0 ? null : str20, (i2 & 524288) != 0 ? null : str21, (i2 & 1048576) != 0 ? null : str22, (i2 & 2097152) != 0 ? null : bool4, (i2 & 4194304) != 0 ? null : str23, (i2 & 8388608) != 0 ? null : num);
    }

    @jz2
    public final void clearSharedLibsDetails() {
        this.sharedLibsBackupSize = null;
        this.sharedLibsSizeMirrored = null;
        this.sharedLibsSBVersionCodeRequired = null;
        this.sharedLibsSBVersionNameRequired = null;
    }

    @jz2
    public final void clearSplitsDetails() {
        this.splitsBackupSize = null;
        this.splitsSizeMirrored = null;
        this.splitsSBVersionCodeRequired = null;
        this.splitsSBVersionNameRequired = null;
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component10() {
        return this.apkSBVersionNameRequired;
    }

    public final Long component11() {
        return this.splitsBackupSize;
    }

    public final Long component12() {
        return this.splitsSizeMirrored;
    }

    public final Long component13() {
        return this.splitsSBVersionCodeRequired;
    }

    public final String component14() {
        return this.splitsSBVersionNameRequired;
    }

    public final Long component15() {
        return this.sharedLibsBackupSize;
    }

    public final Long component16() {
        return this.sharedLibsSizeMirrored;
    }

    public final Long component17() {
        return this.sharedLibsSBVersionCodeRequired;
    }

    public final String component18() {
        return this.sharedLibsSBVersionNameRequired;
    }

    public final Long component19() {
        return this.dataBackupSize;
    }

    public final String component2() {
        return this.name;
    }

    public final Long component20() {
        return this.dataSizeMirrored;
    }

    public final Boolean component21() {
        return this.isDataEncrypted;
    }

    public final String component22() {
        return this.dataEncryptionMethod;
    }

    public final String component23() {
        return this.dataPasswordHash;
    }

    public final Long component24() {
        return this.dataBackupDate;
    }

    public final Long component25() {
        return this.dataSBVersionCodeRequired;
    }

    public final String component26() {
        return this.dataSBVersionNameRequired;
    }

    public final Long component27() {
        return this.extDataBackupSize;
    }

    public final Long component28() {
        return this.extDataSizeMirrored;
    }

    public final Boolean component29() {
        return this.isExtDataEncrypted;
    }

    public final Long component3() {
        return this.dateBackup;
    }

    public final String component30() {
        return this.extDataEncryptionMethod;
    }

    public final String component31() {
        return this.extDataPasswordHash;
    }

    public final Long component32() {
        return this.extDataBackupDate;
    }

    public final Long component33() {
        return this.extDataSBVersionCodeRequired;
    }

    public final String component34() {
        return this.extDataSBVersionNameRequired;
    }

    public final Long component35() {
        return this.expBackupSize;
    }

    public final Long component36() {
        return this.expSizeMirrored;
    }

    public final Long component37() {
        return this.expansionBackupDate;
    }

    public final Long component38() {
        return this.expSBVersionCodeRequired;
    }

    public final String component39() {
        return this.expSBVersionNameRequired;
    }

    public final Long component4() {
        return this.dateBackupUpdated;
    }

    public final Long component40() {
        return this.mediaBackupSize;
    }

    public final Long component41() {
        return this.mediaSizeMirrored;
    }

    public final Boolean component42() {
        return this.isMediaEncrypted;
    }

    public final String component43() {
        return this.mediaEncryptionMethod;
    }

    public final String component44() {
        return this.mediaPasswordHash;
    }

    public final Long component45() {
        return this.mediaBackupDate;
    }

    public final Long component46() {
        return this.mediaSBVersionCodeRequired;
    }

    public final String component47() {
        return this.mediaSBVersionNameRequired;
    }

    public final String component48() {
        return this.permissionIdsCsv;
    }

    public final String component49() {
        return this.permissionStatesCsv;
    }

    public final String component5() {
        return this.versionName;
    }

    public final String component50() {
        return this.ntfAccessComponent;
    }

    public final String component51() {
        return this.accessibilityComponent;
    }

    public final String component52() {
        return this.ssaid;
    }

    public final String component53() {
        return this.installerPackage;
    }

    public final Boolean component54() {
        return this._protectedBackup;
    }

    public final String component55() {
        return this._note;
    }

    public final Integer component56() {
        return this.keyVersion;
    }

    public final Long component6() {
        return this.versionCode;
    }

    public final Long component7() {
        return this.apkBackupSize;
    }

    public final Long component8() {
        return this.apkBackupDate;
    }

    public final Long component9() {
        return this.apkSBVersionCodeRequired;
    }

    public final LocalMetadata copy(String str, String str2, Long l, Long l2, String str3, Long l3, Long l4, Long l5, Long l6, String str4, Long l7, Long l8, Long l9, String str5, Long l10, Long l11, Long l12, String str6, Long l13, Long l14, Boolean bool, String str7, String str8, Long l15, Long l16, String str9, Long l17, Long l18, Boolean bool2, String str10, String str11, Long l19, Long l20, String str12, Long l21, Long l22, Long l23, Long l24, String str13, Long l25, Long l26, Boolean bool3, String str14, String str15, Long l27, Long l28, String str16, String str17, String str18, String str19, String str20, String str21, String str22, Boolean bool4, String str23, Integer num) {
        str.getClass();
        str2.getClass();
        return new LocalMetadata(str, str2, l, l2, str3, l3, l4, l5, l6, str4, l7, l8, l9, str5, l10, l11, l12, str6, l13, l14, bool, str7, str8, l15, l16, str9, l17, l18, bool2, str10, str11, l19, l20, str12, l21, l22, l23, l24, str13, l25, l26, bool3, str14, str15, l27, l28, str16, str17, str18, str19, str20, str21, str22, bool4, str23, num);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalMetadata)) {
            return false;
        }
        LocalMetadata localMetadata = (LocalMetadata) obj;
        return pe4.d(this.packageName, localMetadata.packageName) && pe4.d(this.name, localMetadata.name) && pe4.d(this.dateBackup, localMetadata.dateBackup) && pe4.d(this.dateBackupUpdated, localMetadata.dateBackupUpdated) && pe4.d(this.versionName, localMetadata.versionName) && pe4.d(this.versionCode, localMetadata.versionCode) && pe4.d(this.apkBackupSize, localMetadata.apkBackupSize) && pe4.d(this.apkBackupDate, localMetadata.apkBackupDate) && pe4.d(this.apkSBVersionCodeRequired, localMetadata.apkSBVersionCodeRequired) && pe4.d(this.apkSBVersionNameRequired, localMetadata.apkSBVersionNameRequired) && pe4.d(this.splitsBackupSize, localMetadata.splitsBackupSize) && pe4.d(this.splitsSizeMirrored, localMetadata.splitsSizeMirrored) && pe4.d(this.splitsSBVersionCodeRequired, localMetadata.splitsSBVersionCodeRequired) && pe4.d(this.splitsSBVersionNameRequired, localMetadata.splitsSBVersionNameRequired) && pe4.d(this.sharedLibsBackupSize, localMetadata.sharedLibsBackupSize) && pe4.d(this.sharedLibsSizeMirrored, localMetadata.sharedLibsSizeMirrored) && pe4.d(this.sharedLibsSBVersionCodeRequired, localMetadata.sharedLibsSBVersionCodeRequired) && pe4.d(this.sharedLibsSBVersionNameRequired, localMetadata.sharedLibsSBVersionNameRequired) && pe4.d(this.dataBackupSize, localMetadata.dataBackupSize) && pe4.d(this.dataSizeMirrored, localMetadata.dataSizeMirrored) && pe4.d(this.isDataEncrypted, localMetadata.isDataEncrypted) && pe4.d(this.dataEncryptionMethod, localMetadata.dataEncryptionMethod) && pe4.d(this.dataPasswordHash, localMetadata.dataPasswordHash) && pe4.d(this.dataBackupDate, localMetadata.dataBackupDate) && pe4.d(this.dataSBVersionCodeRequired, localMetadata.dataSBVersionCodeRequired) && pe4.d(this.dataSBVersionNameRequired, localMetadata.dataSBVersionNameRequired) && pe4.d(this.extDataBackupSize, localMetadata.extDataBackupSize) && pe4.d(this.extDataSizeMirrored, localMetadata.extDataSizeMirrored) && pe4.d(this.isExtDataEncrypted, localMetadata.isExtDataEncrypted) && pe4.d(this.extDataEncryptionMethod, localMetadata.extDataEncryptionMethod) && pe4.d(this.extDataPasswordHash, localMetadata.extDataPasswordHash) && pe4.d(this.extDataBackupDate, localMetadata.extDataBackupDate) && pe4.d(this.extDataSBVersionCodeRequired, localMetadata.extDataSBVersionCodeRequired) && pe4.d(this.extDataSBVersionNameRequired, localMetadata.extDataSBVersionNameRequired) && pe4.d(this.expBackupSize, localMetadata.expBackupSize) && pe4.d(this.expSizeMirrored, localMetadata.expSizeMirrored) && pe4.d(this.expansionBackupDate, localMetadata.expansionBackupDate) && pe4.d(this.expSBVersionCodeRequired, localMetadata.expSBVersionCodeRequired) && pe4.d(this.expSBVersionNameRequired, localMetadata.expSBVersionNameRequired) && pe4.d(this.mediaBackupSize, localMetadata.mediaBackupSize) && pe4.d(this.mediaSizeMirrored, localMetadata.mediaSizeMirrored) && pe4.d(this.isMediaEncrypted, localMetadata.isMediaEncrypted) && pe4.d(this.mediaEncryptionMethod, localMetadata.mediaEncryptionMethod) && pe4.d(this.mediaPasswordHash, localMetadata.mediaPasswordHash) && pe4.d(this.mediaBackupDate, localMetadata.mediaBackupDate) && pe4.d(this.mediaSBVersionCodeRequired, localMetadata.mediaSBVersionCodeRequired) && pe4.d(this.mediaSBVersionNameRequired, localMetadata.mediaSBVersionNameRequired) && pe4.d(this.permissionIdsCsv, localMetadata.permissionIdsCsv) && pe4.d(this.permissionStatesCsv, localMetadata.permissionStatesCsv) && pe4.d(this.ntfAccessComponent, localMetadata.ntfAccessComponent) && pe4.d(this.accessibilityComponent, localMetadata.accessibilityComponent) && pe4.d(this.ssaid, localMetadata.ssaid) && pe4.d(this.installerPackage, localMetadata.installerPackage) && pe4.d(this._protectedBackup, localMetadata._protectedBackup) && pe4.d(this._note, localMetadata._note) && pe4.d(this.keyVersion, localMetadata.keyVersion);
    }

    public final String getAccessibilityComponent() {
        return this.accessibilityComponent;
    }

    public final Long getApkBackupDate() {
        return this.apkBackupDate;
    }

    public final Long getApkBackupSize() {
        return this.apkBackupSize;
    }

    public final Long getApkSBVersionCodeRequired() {
        return this.apkSBVersionCodeRequired;
    }

    public final String getApkSBVersionNameRequired() {
        return this.apkSBVersionNameRequired;
    }

    @jz2
    public final Long getApkSizeMirrored() {
        return this.apkBackupSize;
    }

    public final Long getDataBackupDate() {
        return this.dataBackupDate;
    }

    public final Long getDataBackupSize() {
        return this.dataBackupSize;
    }

    public final String getDataEncryptionMethod() {
        return this.dataEncryptionMethod;
    }

    public final String getDataPasswordHash() {
        return this.dataPasswordHash;
    }

    public final Long getDataSBVersionCodeRequired() {
        return this.dataSBVersionCodeRequired;
    }

    public final String getDataSBVersionNameRequired() {
        return this.dataSBVersionNameRequired;
    }

    public final Long getDataSizeMirrored() {
        return this.dataSizeMirrored;
    }

    public final Long getDateBackup() {
        return this.dateBackup;
    }

    public final Long getDateBackupUpdated() {
        return this.dateBackupUpdated;
    }

    public final Long getExpBackupSize() {
        return this.expBackupSize;
    }

    public final Long getExpSBVersionCodeRequired() {
        return this.expSBVersionCodeRequired;
    }

    public final String getExpSBVersionNameRequired() {
        return this.expSBVersionNameRequired;
    }

    public final Long getExpSizeMirrored() {
        return this.expSizeMirrored;
    }

    public final Long getExpansionBackupDate() {
        return this.expansionBackupDate;
    }

    public final Long getExtDataBackupDate() {
        return this.extDataBackupDate;
    }

    public final Long getExtDataBackupSize() {
        return this.extDataBackupSize;
    }

    public final String getExtDataEncryptionMethod() {
        return this.extDataEncryptionMethod;
    }

    public final String getExtDataPasswordHash() {
        return this.extDataPasswordHash;
    }

    public final Long getExtDataSBVersionCodeRequired() {
        return this.extDataSBVersionCodeRequired;
    }

    public final String getExtDataSBVersionNameRequired() {
        return this.extDataSBVersionNameRequired;
    }

    public final Long getExtDataSizeMirrored() {
        return this.extDataSizeMirrored;
    }

    public final String getInstallerPackage() {
        return this.installerPackage;
    }

    public final Integer getKeyVersion() {
        return this.keyVersion;
    }

    public final Long getMediaBackupDate() {
        return this.mediaBackupDate;
    }

    public final Long getMediaBackupSize() {
        return this.mediaBackupSize;
    }

    public final String getMediaEncryptionMethod() {
        return this.mediaEncryptionMethod;
    }

    public final String getMediaPasswordHash() {
        return this.mediaPasswordHash;
    }

    public final Long getMediaSBVersionCodeRequired() {
        return this.mediaSBVersionCodeRequired;
    }

    public final String getMediaSBVersionNameRequired() {
        return this.mediaSBVersionNameRequired;
    }

    public final Long getMediaSizeMirrored() {
        return this.mediaSizeMirrored;
    }

    public final String getName() {
        return this.name;
    }

    @jz2
    public final String getNote() {
        String str = this._note;
        if (V.INSTANCE.getA()) {
            return str;
        }
        return null;
    }

    public final String getNtfAccessComponent() {
        return this.ntfAccessComponent;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getPermissionIdsCsv() {
        return this.permissionIdsCsv;
    }

    public final String getPermissionStatesCsv() {
        return this.permissionStatesCsv;
    }

    @jz2
    public final List<Long> getSBVersionCodesRequired() {
        return x50.p0(new Long[]{this.apkSBVersionCodeRequired, this.splitsSBVersionCodeRequired, this.sharedLibsSBVersionCodeRequired, this.dataSBVersionCodeRequired, this.extDataSBVersionCodeRequired, this.mediaSBVersionCodeRequired, this.expSBVersionCodeRequired});
    }

    public final Long getSharedLibsBackupSize() {
        return this.sharedLibsBackupSize;
    }

    public final Long getSharedLibsSBVersionCodeRequired() {
        return this.sharedLibsSBVersionCodeRequired;
    }

    public final String getSharedLibsSBVersionNameRequired() {
        return this.sharedLibsSBVersionNameRequired;
    }

    public final Long getSharedLibsSizeMirrored() {
        return this.sharedLibsSizeMirrored;
    }

    public final Long getSplitsBackupSize() {
        return this.splitsBackupSize;
    }

    public final Long getSplitsSBVersionCodeRequired() {
        return this.splitsSBVersionCodeRequired;
    }

    public final String getSplitsSBVersionNameRequired() {
        return this.splitsSBVersionNameRequired;
    }

    public final Long getSplitsSizeMirrored() {
        return this.splitsSizeMirrored;
    }

    public final String getSsaid() {
        return this.ssaid;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public final String get_note() {
        return this._note;
    }

    public final Boolean get_protectedBackup() {
        return this._protectedBackup;
    }

    @jz2
    public final boolean hasSharedLibs() {
        return io4.h(this.sharedLibsBackupSize) > 0;
    }

    @jz2
    public final boolean hasSplitApks() {
        return io4.h(this.splitsBackupSize) > 0;
    }

    public int hashCode() {
        int iG = fz5.g(this.packageName.hashCode() * 31, 31, this.name);
        Long l = this.dateBackup;
        int iHashCode = (iG + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.dateBackupUpdated;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.versionName;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Long l3 = this.versionCode;
        int iHashCode4 = (iHashCode3 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.apkBackupSize;
        int iHashCode5 = (iHashCode4 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Long l5 = this.apkBackupDate;
        int iHashCode6 = (iHashCode5 + (l5 == null ? 0 : l5.hashCode())) * 31;
        Long l6 = this.apkSBVersionCodeRequired;
        int iHashCode7 = (iHashCode6 + (l6 == null ? 0 : l6.hashCode())) * 31;
        String str2 = this.apkSBVersionNameRequired;
        int iHashCode8 = (iHashCode7 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l7 = this.splitsBackupSize;
        int iHashCode9 = (iHashCode8 + (l7 == null ? 0 : l7.hashCode())) * 31;
        Long l8 = this.splitsSizeMirrored;
        int iHashCode10 = (iHashCode9 + (l8 == null ? 0 : l8.hashCode())) * 31;
        Long l9 = this.splitsSBVersionCodeRequired;
        int iHashCode11 = (iHashCode10 + (l9 == null ? 0 : l9.hashCode())) * 31;
        String str3 = this.splitsSBVersionNameRequired;
        int iHashCode12 = (iHashCode11 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l10 = this.sharedLibsBackupSize;
        int iHashCode13 = (iHashCode12 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.sharedLibsSizeMirrored;
        int iHashCode14 = (iHashCode13 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.sharedLibsSBVersionCodeRequired;
        int iHashCode15 = (iHashCode14 + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str4 = this.sharedLibsSBVersionNameRequired;
        int iHashCode16 = (iHashCode15 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l13 = this.dataBackupSize;
        int iHashCode17 = (iHashCode16 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Long l14 = this.dataSizeMirrored;
        int iHashCode18 = (iHashCode17 + (l14 == null ? 0 : l14.hashCode())) * 31;
        Boolean bool = this.isDataEncrypted;
        int iHashCode19 = (iHashCode18 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str5 = this.dataEncryptionMethod;
        int iHashCode20 = (iHashCode19 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.dataPasswordHash;
        int iHashCode21 = (iHashCode20 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Long l15 = this.dataBackupDate;
        int iHashCode22 = (iHashCode21 + (l15 == null ? 0 : l15.hashCode())) * 31;
        Long l16 = this.dataSBVersionCodeRequired;
        int iHashCode23 = (iHashCode22 + (l16 == null ? 0 : l16.hashCode())) * 31;
        String str7 = this.dataSBVersionNameRequired;
        int iHashCode24 = (iHashCode23 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Long l17 = this.extDataBackupSize;
        int iHashCode25 = (iHashCode24 + (l17 == null ? 0 : l17.hashCode())) * 31;
        Long l18 = this.extDataSizeMirrored;
        int iHashCode26 = (iHashCode25 + (l18 == null ? 0 : l18.hashCode())) * 31;
        Boolean bool2 = this.isExtDataEncrypted;
        int iHashCode27 = (iHashCode26 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str8 = this.extDataEncryptionMethod;
        int iHashCode28 = (iHashCode27 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.extDataPasswordHash;
        int iHashCode29 = (iHashCode28 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Long l19 = this.extDataBackupDate;
        int iHashCode30 = (iHashCode29 + (l19 == null ? 0 : l19.hashCode())) * 31;
        Long l20 = this.extDataSBVersionCodeRequired;
        int iHashCode31 = (iHashCode30 + (l20 == null ? 0 : l20.hashCode())) * 31;
        String str10 = this.extDataSBVersionNameRequired;
        int iHashCode32 = (iHashCode31 + (str10 == null ? 0 : str10.hashCode())) * 31;
        Long l21 = this.expBackupSize;
        int iHashCode33 = (iHashCode32 + (l21 == null ? 0 : l21.hashCode())) * 31;
        Long l22 = this.expSizeMirrored;
        int iHashCode34 = (iHashCode33 + (l22 == null ? 0 : l22.hashCode())) * 31;
        Long l23 = this.expansionBackupDate;
        int iHashCode35 = (iHashCode34 + (l23 == null ? 0 : l23.hashCode())) * 31;
        Long l24 = this.expSBVersionCodeRequired;
        int iHashCode36 = (iHashCode35 + (l24 == null ? 0 : l24.hashCode())) * 31;
        String str11 = this.expSBVersionNameRequired;
        int iHashCode37 = (iHashCode36 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Long l25 = this.mediaBackupSize;
        int iHashCode38 = (iHashCode37 + (l25 == null ? 0 : l25.hashCode())) * 31;
        Long l26 = this.mediaSizeMirrored;
        int iHashCode39 = (iHashCode38 + (l26 == null ? 0 : l26.hashCode())) * 31;
        Boolean bool3 = this.isMediaEncrypted;
        int iHashCode40 = (iHashCode39 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str12 = this.mediaEncryptionMethod;
        int iHashCode41 = (iHashCode40 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.mediaPasswordHash;
        int iHashCode42 = (iHashCode41 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Long l27 = this.mediaBackupDate;
        int iHashCode43 = (iHashCode42 + (l27 == null ? 0 : l27.hashCode())) * 31;
        Long l28 = this.mediaSBVersionCodeRequired;
        int iHashCode44 = (iHashCode43 + (l28 == null ? 0 : l28.hashCode())) * 31;
        String str14 = this.mediaSBVersionNameRequired;
        int iHashCode45 = (iHashCode44 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.permissionIdsCsv;
        int iHashCode46 = (iHashCode45 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.permissionStatesCsv;
        int iHashCode47 = (iHashCode46 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.ntfAccessComponent;
        int iHashCode48 = (iHashCode47 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.accessibilityComponent;
        int iHashCode49 = (iHashCode48 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.ssaid;
        int iHashCode50 = (iHashCode49 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.installerPackage;
        int iHashCode51 = (iHashCode50 + (str20 == null ? 0 : str20.hashCode())) * 31;
        Boolean bool4 = this._protectedBackup;
        int iHashCode52 = (iHashCode51 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        String str21 = this._note;
        int iHashCode53 = (iHashCode52 + (str21 == null ? 0 : str21.hashCode())) * 31;
        Integer num = this.keyVersion;
        return iHashCode53 + (num != null ? num.hashCode() : 0);
    }

    public final Boolean isDataEncrypted() {
        return this.isDataEncrypted;
    }

    public final Boolean isExtDataEncrypted() {
        return this.isExtDataEncrypted;
    }

    public final Boolean isMediaEncrypted() {
        return this.isMediaEncrypted;
    }

    @jz2
    public final boolean isProtectedBackup() {
        return pe4.d(this._protectedBackup, Boolean.TRUE) && V.INSTANCE.getA();
    }

    public final void setAccessibilityComponent(String str) {
        this.accessibilityComponent = str;
    }

    public final void setApkBackupDate(Long l) {
        this.apkBackupDate = l;
    }

    public final void setApkBackupSize(Long l) {
        this.apkBackupSize = l;
    }

    public final void setApkSBVersionCodeRequired(Long l) {
        this.apkSBVersionCodeRequired = l;
    }

    public final void setApkSBVersionNameRequired(String str) {
        this.apkSBVersionNameRequired = str;
    }

    public final void setDataBackupDate(Long l) {
        this.dataBackupDate = l;
    }

    public final void setDataBackupSize(Long l) {
        this.dataBackupSize = l;
    }

    public final void setDataEncrypted(Boolean bool) {
        this.isDataEncrypted = bool;
    }

    public final void setDataEncryptionMethod(String str) {
        this.dataEncryptionMethod = str;
    }

    public final void setDataPasswordHash(String str) {
        this.dataPasswordHash = str;
    }

    public final void setDataSBVersionCodeRequired(Long l) {
        this.dataSBVersionCodeRequired = l;
    }

    public final void setDataSBVersionNameRequired(String str) {
        this.dataSBVersionNameRequired = str;
    }

    public final void setDataSizeMirrored(Long l) {
        this.dataSizeMirrored = l;
    }

    public final void setDateBackup(Long l) {
        this.dateBackup = l;
    }

    public final void setDateBackupUpdated(Long l) {
        this.dateBackupUpdated = l;
    }

    public final void setExpBackupSize(Long l) {
        this.expBackupSize = l;
    }

    public final void setExpSBVersionCodeRequired(Long l) {
        this.expSBVersionCodeRequired = l;
    }

    public final void setExpSBVersionNameRequired(String str) {
        this.expSBVersionNameRequired = str;
    }

    public final void setExpSizeMirrored(Long l) {
        this.expSizeMirrored = l;
    }

    public final void setExpansionBackupDate(Long l) {
        this.expansionBackupDate = l;
    }

    public final void setExtDataBackupDate(Long l) {
        this.extDataBackupDate = l;
    }

    public final void setExtDataBackupSize(Long l) {
        this.extDataBackupSize = l;
    }

    public final void setExtDataEncrypted(Boolean bool) {
        this.isExtDataEncrypted = bool;
    }

    public final void setExtDataEncryptionMethod(String str) {
        this.extDataEncryptionMethod = str;
    }

    public final void setExtDataPasswordHash(String str) {
        this.extDataPasswordHash = str;
    }

    public final void setExtDataSBVersionCodeRequired(Long l) {
        this.extDataSBVersionCodeRequired = l;
    }

    public final void setExtDataSBVersionNameRequired(String str) {
        this.extDataSBVersionNameRequired = str;
    }

    public final void setExtDataSizeMirrored(Long l) {
        this.extDataSizeMirrored = l;
    }

    public final void setInstallerPackage(String str) {
        this.installerPackage = str;
    }

    public final void setKeyVersion(Integer num) {
        this.keyVersion = num;
    }

    public final void setMediaBackupDate(Long l) {
        this.mediaBackupDate = l;
    }

    public final void setMediaBackupSize(Long l) {
        this.mediaBackupSize = l;
    }

    public final void setMediaEncrypted(Boolean bool) {
        this.isMediaEncrypted = bool;
    }

    public final void setMediaEncryptionMethod(String str) {
        this.mediaEncryptionMethod = str;
    }

    public final void setMediaPasswordHash(String str) {
        this.mediaPasswordHash = str;
    }

    public final void setMediaSBVersionCodeRequired(Long l) {
        this.mediaSBVersionCodeRequired = l;
    }

    public final void setMediaSBVersionNameRequired(String str) {
        this.mediaSBVersionNameRequired = str;
    }

    public final void setMediaSizeMirrored(Long l) {
        this.mediaSizeMirrored = l;
    }

    public final void setName(String str) {
        str.getClass();
        this.name = str;
    }

    public final void setNtfAccessComponent(String str) {
        this.ntfAccessComponent = str;
    }

    public final void setPackageName(String str) {
        str.getClass();
        this.packageName = str;
    }

    public final void setPermissionIdsCsv(String str) {
        this.permissionIdsCsv = str;
    }

    public final void setPermissionStatesCsv(String str) {
        this.permissionStatesCsv = str;
    }

    public final void setSharedLibsBackupSize(Long l) {
        this.sharedLibsBackupSize = l;
    }

    public final void setSharedLibsSBVersionCodeRequired(Long l) {
        this.sharedLibsSBVersionCodeRequired = l;
    }

    public final void setSharedLibsSBVersionNameRequired(String str) {
        this.sharedLibsSBVersionNameRequired = str;
    }

    public final void setSharedLibsSizeMirrored(Long l) {
        this.sharedLibsSizeMirrored = l;
    }

    public final void setSplitsBackupSize(Long l) {
        this.splitsBackupSize = l;
    }

    public final void setSplitsSBVersionCodeRequired(Long l) {
        this.splitsSBVersionCodeRequired = l;
    }

    public final void setSplitsSBVersionNameRequired(String str) {
        this.splitsSBVersionNameRequired = str;
    }

    public final void setSplitsSizeMirrored(Long l) {
        this.splitsSizeMirrored = l;
    }

    public final void setSsaid(String str) {
        this.ssaid = str;
    }

    public final void setVersionCode(Long l) {
        this.versionCode = l;
    }

    public final void setVersionName(String str) {
        this.versionName = str;
    }

    public final void set_note(String str) {
        this._note = str;
    }

    public final void set_protectedBackup(Boolean bool) {
        this._protectedBackup = bool;
    }

    public String toString() {
        String str = this.packageName;
        String str2 = this.name;
        Long l = this.dateBackup;
        Long l2 = this.dateBackupUpdated;
        String str3 = this.versionName;
        Long l3 = this.versionCode;
        Long l4 = this.apkBackupSize;
        Long l5 = this.apkBackupDate;
        Long l6 = this.apkSBVersionCodeRequired;
        String str4 = this.apkSBVersionNameRequired;
        Long l7 = this.splitsBackupSize;
        Long l8 = this.splitsSizeMirrored;
        Long l9 = this.splitsSBVersionCodeRequired;
        String str5 = this.splitsSBVersionNameRequired;
        Long l10 = this.sharedLibsBackupSize;
        Long l11 = this.sharedLibsSizeMirrored;
        Long l12 = this.sharedLibsSBVersionCodeRequired;
        String str6 = this.sharedLibsSBVersionNameRequired;
        Long l13 = this.dataBackupSize;
        Long l14 = this.dataSizeMirrored;
        Boolean bool = this.isDataEncrypted;
        String str7 = this.dataEncryptionMethod;
        String str8 = this.dataPasswordHash;
        Long l15 = this.dataBackupDate;
        Long l16 = this.dataSBVersionCodeRequired;
        String str9 = this.dataSBVersionNameRequired;
        Long l17 = this.extDataBackupSize;
        Long l18 = this.extDataSizeMirrored;
        Boolean bool2 = this.isExtDataEncrypted;
        String str10 = this.extDataEncryptionMethod;
        String str11 = this.extDataPasswordHash;
        Long l19 = this.extDataBackupDate;
        Long l20 = this.extDataSBVersionCodeRequired;
        String str12 = this.extDataSBVersionNameRequired;
        Long l21 = this.expBackupSize;
        Long l22 = this.expSizeMirrored;
        Long l23 = this.expansionBackupDate;
        Long l24 = this.expSBVersionCodeRequired;
        String str13 = this.expSBVersionNameRequired;
        Long l25 = this.mediaBackupSize;
        Long l26 = this.mediaSizeMirrored;
        Boolean bool3 = this.isMediaEncrypted;
        String str14 = this.mediaEncryptionMethod;
        String str15 = this.mediaPasswordHash;
        Long l27 = this.mediaBackupDate;
        Long l28 = this.mediaSBVersionCodeRequired;
        String str16 = this.mediaSBVersionNameRequired;
        String str17 = this.permissionIdsCsv;
        String str18 = this.permissionStatesCsv;
        String str19 = this.ntfAccessComponent;
        String str20 = this.accessibilityComponent;
        String str21 = this.ssaid;
        String str22 = this.installerPackage;
        Boolean bool4 = this._protectedBackup;
        String str23 = this._note;
        Integer num = this.keyVersion;
        StringBuilder sbP = u48.p("LocalMetadata(packageName=", str, ", name=", str2, ", dateBackup=");
        fz5.q(sbP, l, ", dateBackupUpdated=", l2, ", versionName=");
        sbP.append(str3);
        sbP.append(", versionCode=");
        sbP.append(l3);
        sbP.append(", apkBackupSize=");
        fz5.q(sbP, l4, ", apkBackupDate=", l5, ", apkSBVersionCodeRequired=");
        sbP.append(l6);
        sbP.append(", apkSBVersionNameRequired=");
        sbP.append(str4);
        sbP.append(", splitsBackupSize=");
        fz5.q(sbP, l7, ", splitsSizeMirrored=", l8, ", splitsSBVersionCodeRequired=");
        sbP.append(l9);
        sbP.append(", splitsSBVersionNameRequired=");
        sbP.append(str5);
        sbP.append(", sharedLibsBackupSize=");
        fz5.q(sbP, l10, ", sharedLibsSizeMirrored=", l11, ", sharedLibsSBVersionCodeRequired=");
        sbP.append(l12);
        sbP.append(", sharedLibsSBVersionNameRequired=");
        sbP.append(str6);
        sbP.append(", dataBackupSize=");
        fz5.q(sbP, l13, ", dataSizeMirrored=", l14, ", isDataEncrypted=");
        sbP.append(bool);
        sbP.append(", dataEncryptionMethod=");
        sbP.append(str7);
        sbP.append(", dataPasswordHash=");
        sbP.append(str8);
        sbP.append(", dataBackupDate=");
        sbP.append(l15);
        sbP.append(", dataSBVersionCodeRequired=");
        sbP.append(l16);
        sbP.append(", dataSBVersionNameRequired=");
        sbP.append(str9);
        sbP.append(", extDataBackupSize=");
        fz5.q(sbP, l17, ", extDataSizeMirrored=", l18, ", isExtDataEncrypted=");
        sbP.append(bool2);
        sbP.append(", extDataEncryptionMethod=");
        sbP.append(str10);
        sbP.append(", extDataPasswordHash=");
        sbP.append(str11);
        sbP.append(", extDataBackupDate=");
        sbP.append(l19);
        sbP.append(", extDataSBVersionCodeRequired=");
        sbP.append(l20);
        sbP.append(", extDataSBVersionNameRequired=");
        sbP.append(str12);
        sbP.append(", expBackupSize=");
        fz5.q(sbP, l21, ", expSizeMirrored=", l22, ", expansionBackupDate=");
        fz5.q(sbP, l23, ", expSBVersionCodeRequired=", l24, ", expSBVersionNameRequired=");
        sbP.append(str13);
        sbP.append(", mediaBackupSize=");
        sbP.append(l25);
        sbP.append(", mediaSizeMirrored=");
        sbP.append(l26);
        sbP.append(", isMediaEncrypted=");
        sbP.append(bool3);
        sbP.append(", mediaEncryptionMethod=");
        xs1.t(sbP, str14, ", mediaPasswordHash=", str15, ", mediaBackupDate=");
        fz5.q(sbP, l27, ", mediaSBVersionCodeRequired=", l28, ", mediaSBVersionNameRequired=");
        xs1.t(sbP, str16, ", permissionIdsCsv=", str17, ", permissionStatesCsv=");
        xs1.t(sbP, str18, ", ntfAccessComponent=", str19, ", accessibilityComponent=");
        xs1.t(sbP, str20, ", ssaid=", str21, ", installerPackage=");
        sbP.append(str22);
        sbP.append(", _protectedBackup=");
        sbP.append(bool4);
        sbP.append(", _note=");
        sbP.append(str23);
        sbP.append(", keyVersion=");
        sbP.append(num);
        sbP.append(")");
        return sbP.toString();
    }

    @jz2
    public final void updateApkDetails(String str, Long l, Long l2, Long l3) {
        this.versionName = str;
        this.versionCode = l;
        this.apkBackupSize = l2;
        this.apkBackupDate = l3;
        this.apkSBVersionCodeRequired = 580L;
        this.apkSBVersionNameRequired = SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateDataDetails(Long l, Long l2, Boolean bool, String str, String str2, Long l3) {
        this.dataSizeMirrored = l;
        this.dataBackupSize = l2;
        this.isDataEncrypted = bool;
        this.dataEncryptionMethod = str;
        this.dataPasswordHash = str2;
        this.dataBackupDate = l3;
        this.dataSBVersionCodeRequired = 580L;
        this.dataSBVersionNameRequired = SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateExpansionDetails(Long l, Long l2, Long l3) {
        this.expSizeMirrored = l;
        this.expBackupSize = l2;
        this.expansionBackupDate = l3;
        this.expSBVersionCodeRequired = 580L;
        this.expSBVersionNameRequired = SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateExtDataDetails(Long l, Long l2, Boolean bool, String str, String str2, Long l3) {
        this.extDataSizeMirrored = l;
        this.extDataBackupSize = l2;
        this.isExtDataEncrypted = bool;
        this.extDataEncryptionMethod = str;
        this.extDataPasswordHash = str2;
        this.extDataBackupDate = l3;
        this.extDataSBVersionCodeRequired = 580L;
        this.extDataSBVersionNameRequired = SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateMediaDetails(Long l, Long l2, Boolean bool, String str, String str2, Long l3) {
        this.mediaSizeMirrored = l;
        this.mediaBackupSize = l2;
        this.isMediaEncrypted = bool;
        this.mediaEncryptionMethod = str;
        this.mediaPasswordHash = str2;
        this.mediaBackupDate = l3;
        this.mediaSBVersionCodeRequired = 580L;
        this.mediaSBVersionNameRequired = SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateNote(String str) {
        String string;
        String string2;
        String str2 = null;
        if (str != null && (string = nq7.H0(str).toString()) != null && (string2 = nq7.H0(nq7.G0(30, string)).toString()) != null && string2.length() > 0 && !nq7.j0(string2)) {
            str2 = string2;
        }
        this._note = str2;
    }

    @jz2
    public final void updateProtection(boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        if (!z) {
            boolValueOf = null;
        }
        this._protectedBackup = boolValueOf;
    }

    @jz2
    public final void updateSharedLibsDetails(Long l, Long l2) {
        this.sharedLibsBackupSize = l;
        this.sharedLibsSizeMirrored = l2;
        this.sharedLibsSBVersionCodeRequired = 580L;
        this.sharedLibsSBVersionNameRequired = SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateSplitsDetails(Long l, Long l2) {
        this.splitsBackupSize = l;
        this.splitsSizeMirrored = l2;
        this.splitsSBVersionCodeRequired = 580L;
        this.splitsSBVersionNameRequired = SB_VERSION_NAME_REQUIRED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.packageName);
        parcel.writeString(this.name);
        Long l = this.dateBackup;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        Long l2 = this.dateBackupUpdated;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
        parcel.writeString(this.versionName);
        Long l3 = this.versionCode;
        if (l3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l3);
        }
        Long l4 = this.apkBackupSize;
        if (l4 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l4);
        }
        Long l5 = this.apkBackupDate;
        if (l5 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l5);
        }
        Long l6 = this.apkSBVersionCodeRequired;
        if (l6 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l6);
        }
        parcel.writeString(this.apkSBVersionNameRequired);
        Long l7 = this.splitsBackupSize;
        if (l7 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l7);
        }
        Long l8 = this.splitsSizeMirrored;
        if (l8 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l8);
        }
        Long l9 = this.splitsSBVersionCodeRequired;
        if (l9 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l9);
        }
        parcel.writeString(this.splitsSBVersionNameRequired);
        Long l10 = this.sharedLibsBackupSize;
        if (l10 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l10);
        }
        Long l11 = this.sharedLibsSizeMirrored;
        if (l11 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l11);
        }
        Long l12 = this.sharedLibsSBVersionCodeRequired;
        if (l12 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l12);
        }
        parcel.writeString(this.sharedLibsSBVersionNameRequired);
        Long l13 = this.dataBackupSize;
        if (l13 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l13);
        }
        Long l14 = this.dataSizeMirrored;
        if (l14 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l14);
        }
        Boolean bool = this.isDataEncrypted;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        parcel.writeString(this.dataEncryptionMethod);
        parcel.writeString(this.dataPasswordHash);
        Long l15 = this.dataBackupDate;
        if (l15 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l15);
        }
        Long l16 = this.dataSBVersionCodeRequired;
        if (l16 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l16);
        }
        parcel.writeString(this.dataSBVersionNameRequired);
        Long l17 = this.extDataBackupSize;
        if (l17 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l17);
        }
        Long l18 = this.extDataSizeMirrored;
        if (l18 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l18);
        }
        Boolean bool2 = this.isExtDataEncrypted;
        if (bool2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool2.booleanValue() ? 1 : 0);
        }
        parcel.writeString(this.extDataEncryptionMethod);
        parcel.writeString(this.extDataPasswordHash);
        Long l19 = this.extDataBackupDate;
        if (l19 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l19);
        }
        Long l20 = this.extDataSBVersionCodeRequired;
        if (l20 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l20);
        }
        parcel.writeString(this.extDataSBVersionNameRequired);
        Long l21 = this.expBackupSize;
        if (l21 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l21);
        }
        Long l22 = this.expSizeMirrored;
        if (l22 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l22);
        }
        Long l23 = this.expansionBackupDate;
        if (l23 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l23);
        }
        Long l24 = this.expSBVersionCodeRequired;
        if (l24 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l24);
        }
        parcel.writeString(this.expSBVersionNameRequired);
        Long l25 = this.mediaBackupSize;
        if (l25 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l25);
        }
        Long l26 = this.mediaSizeMirrored;
        if (l26 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l26);
        }
        Boolean bool3 = this.isMediaEncrypted;
        if (bool3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool3.booleanValue() ? 1 : 0);
        }
        parcel.writeString(this.mediaEncryptionMethod);
        parcel.writeString(this.mediaPasswordHash);
        Long l27 = this.mediaBackupDate;
        if (l27 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l27);
        }
        Long l28 = this.mediaSBVersionCodeRequired;
        if (l28 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l28);
        }
        parcel.writeString(this.mediaSBVersionNameRequired);
        parcel.writeString(this.permissionIdsCsv);
        parcel.writeString(this.permissionStatesCsv);
        parcel.writeString(this.ntfAccessComponent);
        parcel.writeString(this.accessibilityComponent);
        parcel.writeString(this.ssaid);
        parcel.writeString(this.installerPackage);
        Boolean bool4 = this._protectedBackup;
        if (bool4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool4.booleanValue() ? 1 : 0);
        }
        parcel.writeString(this._note);
        Integer num = this.keyVersion;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
    }

    public LocalMetadata(String str, String str2, Long l, Long l2, String str3, Long l3, Long l4, Long l5, Long l6, String str4, Long l7, Long l8, Long l9, String str5, Long l10, Long l11, Long l12, String str6, Long l13, Long l14, Boolean bool, String str7, String str8, Long l15, Long l16, String str9, Long l17, Long l18, Boolean bool2, String str10, String str11, Long l19, Long l20, String str12, Long l21, Long l22, Long l23, Long l24, String str13, Long l25, Long l26, Boolean bool3, String str14, String str15, Long l27, Long l28, String str16, String str17, String str18, String str19, String str20, String str21, String str22, Boolean bool4, String str23, Integer num) {
        str.getClass();
        str2.getClass();
        this.packageName = str;
        this.name = str2;
        this.dateBackup = l;
        this.dateBackupUpdated = l2;
        this.versionName = str3;
        this.versionCode = l3;
        this.apkBackupSize = l4;
        this.apkBackupDate = l5;
        this.apkSBVersionCodeRequired = l6;
        this.apkSBVersionNameRequired = str4;
        this.splitsBackupSize = l7;
        this.splitsSizeMirrored = l8;
        this.splitsSBVersionCodeRequired = l9;
        this.splitsSBVersionNameRequired = str5;
        this.sharedLibsBackupSize = l10;
        this.sharedLibsSizeMirrored = l11;
        this.sharedLibsSBVersionCodeRequired = l12;
        this.sharedLibsSBVersionNameRequired = str6;
        this.dataBackupSize = l13;
        this.dataSizeMirrored = l14;
        this.isDataEncrypted = bool;
        this.dataEncryptionMethod = str7;
        this.dataPasswordHash = str8;
        this.dataBackupDate = l15;
        this.dataSBVersionCodeRequired = l16;
        this.dataSBVersionNameRequired = str9;
        this.extDataBackupSize = l17;
        this.extDataSizeMirrored = l18;
        this.isExtDataEncrypted = bool2;
        this.extDataEncryptionMethod = str10;
        this.extDataPasswordHash = str11;
        this.extDataBackupDate = l19;
        this.extDataSBVersionCodeRequired = l20;
        this.extDataSBVersionNameRequired = str12;
        this.expBackupSize = l21;
        this.expSizeMirrored = l22;
        this.expansionBackupDate = l23;
        this.expSBVersionCodeRequired = l24;
        this.expSBVersionNameRequired = str13;
        this.mediaBackupSize = l25;
        this.mediaSizeMirrored = l26;
        this.isMediaEncrypted = bool3;
        this.mediaEncryptionMethod = str14;
        this.mediaPasswordHash = str15;
        this.mediaBackupDate = l27;
        this.mediaSBVersionCodeRequired = l28;
        this.mediaSBVersionNameRequired = str16;
        this.permissionIdsCsv = str17;
        this.permissionStatesCsv = str18;
        this.ntfAccessComponent = str19;
        this.accessibilityComponent = str20;
        this.ssaid = str21;
        this.installerPackage = str22;
        this._protectedBackup = bool4;
        this._note = str23;
        this.keyVersion = num;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalMetadata from(ji jiVar, long j) {
            jiVar.getClass();
            return new LocalMetadata(jiVar.getPackageName(), jiVar.getName(), Long.valueOf(j), null, jiVar.getVersionName(), jiVar.getVersionCode(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, jiVar.getInstallerPackage(), null, null, 1, -56, 7340031, null);
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        public final LocalMetadata createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Long lValueOf;
            Long l;
            Object objValueOf;
            Object obj;
            Object obj2;
            Boolean boolValueOf3;
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf3 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string3 = parcel.readString();
            Long lValueOf4 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf5 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf6 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf7 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string4 = parcel.readString();
            Long lValueOf8 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf9 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf10 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string5 = parcel.readString();
            Long lValueOf11 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf12 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf13 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string6 = parcel.readString();
            Long lValueOf14 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf15 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            Long lValueOf16 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf17 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string9 = parcel.readString();
            Long lValueOf18 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf19 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
            }
            Long l2 = lValueOf16;
            Long l3 = lValueOf18;
            String string10 = parcel.readString();
            Long l4 = lValueOf3;
            Long l5 = lValueOf4;
            Long l6 = lValueOf5;
            Long l7 = lValueOf6;
            Long l8 = lValueOf7;
            Long l9 = lValueOf8;
            Long l10 = lValueOf9;
            Long l11 = lValueOf10;
            Long l12 = lValueOf11;
            Long l13 = lValueOf12;
            Long l14 = lValueOf13;
            Long l15 = lValueOf14;
            Long l16 = lValueOf15;
            Boolean bool = boolValueOf;
            Long l17 = lValueOf17;
            Long l18 = lValueOf19;
            String string11 = parcel.readString();
            Long lValueOf20 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                lValueOf = null;
                l = null;
            } else {
                lValueOf = Long.valueOf(parcel.readLong());
                l = null;
            }
            String string12 = parcel.readString();
            Long lValueOf21 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            Long lValueOf22 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            Long lValueOf23 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            Long lValueOf24 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            Long l19 = lValueOf;
            Long l20 = lValueOf22;
            String string13 = parcel.readString();
            Long lValueOf25 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            Long lValueOf26 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                objValueOf = l;
                obj = objValueOf;
            } else {
                objValueOf = Boolean.valueOf(parcel.readInt() != 0);
                obj = l;
            }
            Long l21 = lValueOf23;
            Long l22 = lValueOf25;
            String string14 = parcel.readString();
            Boolean bool2 = boolValueOf2;
            Long l23 = lValueOf20;
            Long l24 = lValueOf21;
            Long l25 = lValueOf24;
            Long l26 = lValueOf26;
            String string15 = parcel.readString();
            Object objValueOf2 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            Object objValueOf3 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            String string16 = parcel.readString();
            Boolean bool3 = objValueOf;
            Long l27 = objValueOf2;
            String string17 = parcel.readString();
            Object obj3 = obj;
            Long l28 = objValueOf3;
            String string18 = parcel.readString();
            String string19 = parcel.readString();
            boolean z = true;
            String string20 = parcel.readString();
            String string21 = parcel.readString();
            String string22 = parcel.readString();
            if (parcel.readInt() == 0) {
                Object obj4 = obj3;
                obj2 = obj4;
                boolValueOf3 = obj4;
            } else {
                if (parcel.readInt() == 0) {
                    z = false;
                }
                obj2 = obj3;
                boolValueOf3 = Boolean.valueOf(z);
            }
            String string23 = parcel.readString();
            Integer numValueOf = obj2;
            if (parcel.readInt() != 0) {
                numValueOf = Integer.valueOf(parcel.readInt());
            }
            return new LocalMetadata(string, string2, lValueOf2, l4, string3, l5, l6, l7, l8, string4, l9, l10, l11, string5, l12, l13, l14, string6, l15, l16, bool, string7, string8, l2, l17, string9, l3, l18, bool2, string10, string11, l23, l19, string12, l24, l20, l21, l25, string13, l22, l26, bool3, string14, string15, l27, l28, string16, string17, string18, string19, string20, string21, string22, boolValueOf3, string23, numValueOf);
        }

        @Override // android.os.Parcelable.Creator
        public final LocalMetadata[] newArray(int i) {
            return new LocalMetadata[i];
        }
    }

    public LocalMetadata() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 16777215, null);
    }
}
