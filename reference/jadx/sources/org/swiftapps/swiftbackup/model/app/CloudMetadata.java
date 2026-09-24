package org.swiftapps.swiftbackup.model.app;

import android.os.Parcel;
import android.os.Parcelable;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.fz5;
import defpackage.g00;
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
public final class CloudMetadata implements Parcelable {
    private String _note;
    private Boolean _protectedBackup;
    private String accessibilityComponent;
    private Long apkBackupDate;
    private String apkLink;
    private Long apkSBVersionCodeRequired;
    private String apkSBVersionNameRequired;
    private Long apkSize;
    private Long dataBackupDate;
    private String dataEncryptionMethod;
    private String dataLink;
    private String dataPasswordHash;
    private Long dataSBVersionCodeRequired;
    private String dataSBVersionNameRequired;
    private Long dataSize;
    private Long dataSizeMirrored;
    private Long dateBackup;
    private Long dateBackupUpdated;
    private String expLink;
    private Long expSBVersionCodeRequired;
    private String expSBVersionNameRequired;
    private Long expSize;
    private Long expSizeMirrored;
    private Long expansionBackupDate;
    private Long extDataBackupDate;
    private String extDataEncryptionMethod;
    private String extDataLink;
    private String extDataPasswordHash;
    private Long extDataSBVersionCodeRequired;
    private String extDataSBVersionNameRequired;
    private Long extDataSize;
    private Long extDataSizeMirrored;
    private String installerPackage;
    private Boolean isDataEncrypted;
    private Boolean isExtDataEncrypted;
    private Boolean isMediaEncrypted;
    private Integer keyVersion;
    private Long mediaBackupDate;
    private String mediaEncryptionMethod;
    private String mediaLink;
    private String mediaPasswordHash;
    private Long mediaSBVersionCodeRequired;
    private String mediaSBVersionNameRequired;
    private Long mediaSize;
    private Long mediaSizeMirrored;
    private Long minSBVersionCodeRequired;
    private String name;
    private String ntfAccessComponent;
    private String packageName;
    private String permissionIdsCsv;
    private String permissionStatesCsv;
    private String sharedLibsLink;
    private Long sharedLibsSBVersionCodeRequired;
    private String sharedLibsSBVersionNameRequired;
    private Long sharedLibsSize;
    private Long sharedLibsSizeMirrored;
    private String specialDataLink;
    private Long specialDataSize;
    private String splitsLink;
    private Long splitsSBVersionCodeRequired;
    private String splitsSBVersionNameRequired;
    private Long splitsSize;
    private Long splitsSizeMirrored;
    private String ssaid;
    private Long versionCode;
    private String versionName;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<CloudMetadata> CREATOR = new b();

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ CloudMetadata(String str, String str2, Long l, Long l2, String str3, Long l3, String str4, Long l4, Long l5, Long l6, String str5, String str6, Long l7, Long l8, Long l9, String str7, String str8, Long l10, Long l11, Long l12, String str9, String str10, Long l13, Long l14, Boolean bool, String str11, String str12, Long l15, Long l16, String str13, String str14, Long l17, Long l18, Boolean bool2, String str15, String str16, Long l19, Long l20, String str17, String str18, Long l21, Long l22, Boolean bool3, String str19, String str20, Long l23, Long l24, String str21, String str22, Long l25, Long l26, Long l27, Long l28, String str23, Long l29, String str24, String str25, String str26, String str27, Long l30, String str28, String str29, String str30, Boolean bool4, String str31, Integer num, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        String str32 = (i & 1) != 0 ? "" : str;
        this(str32, (i & 2) == 0 ? str2 : "", (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : l3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : l4, (i & 256) != 0 ? null : l5, (i & 512) != 0 ? null : l6, (i & 1024) != 0 ? null : str5, (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : str6, (i & 4096) != 0 ? null : l7, (i & 8192) != 0 ? null : l8, (i & 16384) != 0 ? null : l9, (i & 32768) != 0 ? null : str7, (i & 65536) != 0 ? null : str8, (i & 131072) != 0 ? null : l10, (i & 262144) != 0 ? null : l11, (i & 524288) != 0 ? null : l12, (i & 1048576) != 0 ? null : str9, (i & 2097152) != 0 ? null : str10, (i & 4194304) != 0 ? null : l13, (i & 8388608) != 0 ? null : l14, (i & 16777216) != 0 ? null : bool, (i & 33554432) != 0 ? null : str11, (i & 67108864) != 0 ? null : str12, (i & 134217728) != 0 ? null : l15, (i & 268435456) != 0 ? null : l16, (i & 536870912) != 0 ? null : str13, (i & 1073741824) != 0 ? null : str14, (i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? null : l17, (i2 & 1) != 0 ? null : l18, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : str15, (i2 & 8) != 0 ? null : str16, (i2 & 16) != 0 ? null : l19, (i2 & 32) != 0 ? null : l20, (i2 & 64) != 0 ? null : str17, (i2 & 128) != 0 ? null : str18, (i2 & 256) != 0 ? null : l21, (i2 & 512) != 0 ? null : l22, (i2 & 1024) != 0 ? null : bool3, (i2 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : str19, (i2 & 4096) != 0 ? null : str20, (i2 & 8192) != 0 ? null : l23, (i2 & 16384) != 0 ? null : l24, (i2 & 32768) != 0 ? null : str21, (i2 & 65536) != 0 ? null : str22, (i2 & 131072) != 0 ? null : l25, (i2 & 262144) != 0 ? null : l26, (i2 & 524288) != 0 ? null : l27, (i2 & 1048576) != 0 ? null : l28, (i2 & 2097152) != 0 ? null : str23, (i2 & 4194304) != 0 ? null : l29, (i2 & 8388608) != 0 ? null : str24, (i2 & 16777216) != 0 ? null : str25, (i2 & 33554432) != 0 ? null : str26, (i2 & 67108864) != 0 ? null : str27, (i2 & 134217728) != 0 ? null : l30, (i2 & 268435456) != 0 ? null : str28, (i2 & 536870912) != 0 ? null : str29, (i2 & 1073741824) != 0 ? null : str30, (i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? null : bool4, (i3 & 1) != 0 ? null : str31, (i3 & 2) != 0 ? null : num);
    }

    @jz2
    private final void clearLegacyPerPartSBVersionFields() {
        this.apkSBVersionCodeRequired = null;
        this.apkSBVersionNameRequired = null;
        this.splitsSBVersionCodeRequired = null;
        this.splitsSBVersionNameRequired = null;
        this.sharedLibsSBVersionCodeRequired = null;
        this.sharedLibsSBVersionNameRequired = null;
        this.dataSBVersionCodeRequired = null;
        this.dataSBVersionNameRequired = null;
        this.extDataSBVersionCodeRequired = null;
        this.extDataSBVersionNameRequired = null;
        this.mediaSBVersionCodeRequired = null;
        this.mediaSBVersionNameRequired = null;
        this.expSBVersionCodeRequired = null;
        this.expSBVersionNameRequired = null;
    }

    public static /* synthetic */ CloudMetadata copy$default(CloudMetadata cloudMetadata, String str, String str2, Long l, Long l2, String str3, Long l3, String str4, Long l4, Long l5, Long l6, String str5, String str6, Long l7, Long l8, Long l9, String str7, String str8, Long l10, Long l11, Long l12, String str9, String str10, Long l13, Long l14, Boolean bool, String str11, String str12, Long l15, Long l16, String str13, String str14, Long l17, Long l18, Boolean bool2, String str15, String str16, Long l19, Long l20, String str17, String str18, Long l21, Long l22, Boolean bool3, String str19, String str20, Long l23, Long l24, String str21, String str22, Long l25, Long l26, Long l27, Long l28, String str23, Long l29, String str24, String str25, String str26, String str27, Long l30, String str28, String str29, String str30, Boolean bool4, String str31, Integer num, int i, int i2, int i3, Object obj) {
        Integer num2;
        String str32;
        String str33 = (i & 1) != 0 ? cloudMetadata.packageName : str;
        String str34 = (i & 2) != 0 ? cloudMetadata.name : str2;
        Long l31 = (i & 4) != 0 ? cloudMetadata.dateBackup : l;
        Long l32 = (i & 8) != 0 ? cloudMetadata.dateBackupUpdated : l2;
        String str35 = (i & 16) != 0 ? cloudMetadata.versionName : str3;
        Long l33 = (i & 32) != 0 ? cloudMetadata.versionCode : l3;
        String str36 = (i & 64) != 0 ? cloudMetadata.apkLink : str4;
        Long l34 = (i & 128) != 0 ? cloudMetadata.apkSize : l4;
        Long l35 = (i & 256) != 0 ? cloudMetadata.apkBackupDate : l5;
        Long l36 = (i & 512) != 0 ? cloudMetadata.apkSBVersionCodeRequired : l6;
        String str37 = (i & 1024) != 0 ? cloudMetadata.apkSBVersionNameRequired : str5;
        String str38 = (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudMetadata.splitsLink : str6;
        Long l37 = (i & 4096) != 0 ? cloudMetadata.splitsSize : l7;
        String str39 = str33;
        Long l38 = (i & 8192) != 0 ? cloudMetadata.splitsSizeMirrored : l8;
        Long l39 = (i & 16384) != 0 ? cloudMetadata.splitsSBVersionCodeRequired : l9;
        String str40 = (i & 32768) != 0 ? cloudMetadata.splitsSBVersionNameRequired : str7;
        String str41 = (i & 65536) != 0 ? cloudMetadata.sharedLibsLink : str8;
        Long l40 = (i & 131072) != 0 ? cloudMetadata.sharedLibsSize : l10;
        Long l41 = (i & 262144) != 0 ? cloudMetadata.sharedLibsSizeMirrored : l11;
        Long l42 = (i & 524288) != 0 ? cloudMetadata.sharedLibsSBVersionCodeRequired : l12;
        String str42 = (i & 1048576) != 0 ? cloudMetadata.sharedLibsSBVersionNameRequired : str9;
        String str43 = (i & 2097152) != 0 ? cloudMetadata.dataLink : str10;
        Long l43 = (i & 4194304) != 0 ? cloudMetadata.dataSize : l13;
        Long l44 = (i & 8388608) != 0 ? cloudMetadata.dataSizeMirrored : l14;
        Boolean bool5 = (i & 16777216) != 0 ? cloudMetadata.isDataEncrypted : bool;
        String str44 = (i & 33554432) != 0 ? cloudMetadata.dataEncryptionMethod : str11;
        String str45 = (i & 67108864) != 0 ? cloudMetadata.dataPasswordHash : str12;
        Long l45 = (i & 134217728) != 0 ? cloudMetadata.dataBackupDate : l15;
        Long l46 = (i & 268435456) != 0 ? cloudMetadata.dataSBVersionCodeRequired : l16;
        String str46 = (i & 536870912) != 0 ? cloudMetadata.dataSBVersionNameRequired : str13;
        String str47 = (i & 1073741824) != 0 ? cloudMetadata.extDataLink : str14;
        Long l47 = (i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? cloudMetadata.extDataSize : l17;
        Long l48 = (i2 & 1) != 0 ? cloudMetadata.extDataSizeMirrored : l18;
        Boolean bool6 = (i2 & 2) != 0 ? cloudMetadata.isExtDataEncrypted : bool2;
        String str48 = (i2 & 4) != 0 ? cloudMetadata.extDataEncryptionMethod : str15;
        String str49 = (i2 & 8) != 0 ? cloudMetadata.extDataPasswordHash : str16;
        Long l49 = (i2 & 16) != 0 ? cloudMetadata.extDataBackupDate : l19;
        Long l50 = (i2 & 32) != 0 ? cloudMetadata.extDataSBVersionCodeRequired : l20;
        String str50 = (i2 & 64) != 0 ? cloudMetadata.extDataSBVersionNameRequired : str17;
        String str51 = (i2 & 128) != 0 ? cloudMetadata.mediaLink : str18;
        Long l51 = (i2 & 256) != 0 ? cloudMetadata.mediaSize : l21;
        Long l52 = (i2 & 512) != 0 ? cloudMetadata.mediaSizeMirrored : l22;
        Boolean bool7 = (i2 & 1024) != 0 ? cloudMetadata.isMediaEncrypted : bool3;
        String str52 = (i2 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudMetadata.mediaEncryptionMethod : str19;
        String str53 = (i2 & 4096) != 0 ? cloudMetadata.mediaPasswordHash : str20;
        Long l53 = (i2 & 8192) != 0 ? cloudMetadata.mediaBackupDate : l23;
        Long l54 = (i2 & 16384) != 0 ? cloudMetadata.mediaSBVersionCodeRequired : l24;
        String str54 = (i2 & 32768) != 0 ? cloudMetadata.mediaSBVersionNameRequired : str21;
        String str55 = (i2 & 65536) != 0 ? cloudMetadata.expLink : str22;
        Long l55 = (i2 & 131072) != 0 ? cloudMetadata.expSize : l25;
        Long l56 = (i2 & 262144) != 0 ? cloudMetadata.expSizeMirrored : l26;
        Long l57 = (i2 & 524288) != 0 ? cloudMetadata.expansionBackupDate : l27;
        Long l58 = (i2 & 1048576) != 0 ? cloudMetadata.expSBVersionCodeRequired : l28;
        String str56 = (i2 & 2097152) != 0 ? cloudMetadata.expSBVersionNameRequired : str23;
        Long l59 = (i2 & 4194304) != 0 ? cloudMetadata.minSBVersionCodeRequired : l29;
        String str57 = (i2 & 8388608) != 0 ? cloudMetadata.permissionIdsCsv : str24;
        String str58 = (i2 & 16777216) != 0 ? cloudMetadata.permissionStatesCsv : str25;
        String str59 = (i2 & 33554432) != 0 ? cloudMetadata.ntfAccessComponent : str26;
        String str60 = (i2 & 67108864) != 0 ? cloudMetadata.specialDataLink : str27;
        Long l60 = (i2 & 134217728) != 0 ? cloudMetadata.specialDataSize : l30;
        String str61 = (i2 & 268435456) != 0 ? cloudMetadata.accessibilityComponent : str28;
        String str62 = (i2 & 536870912) != 0 ? cloudMetadata.ssaid : str29;
        String str63 = (i2 & 1073741824) != 0 ? cloudMetadata.installerPackage : str30;
        Boolean bool8 = (i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? cloudMetadata._protectedBackup : bool4;
        String str64 = str63;
        String str65 = (i3 & 1) != 0 ? cloudMetadata._note : str31;
        if ((i3 & 2) != 0) {
            str32 = str65;
            num2 = cloudMetadata.keyVersion;
        } else {
            num2 = num;
            str32 = str65;
        }
        return cloudMetadata.copy(str39, str34, l31, l32, str35, l33, str36, l34, l35, l36, str37, str38, l37, l38, l39, str40, str41, l40, l41, l42, str42, str43, l43, l44, bool5, str44, str45, l45, l46, str46, str47, l47, l48, bool6, str48, str49, l49, l50, str50, str51, l51, l52, bool7, str52, str53, l53, l54, str54, str55, l55, l56, l57, l58, str56, l59, str57, str58, str59, str60, l60, str61, str62, str64, bool8, str32, num2);
    }

    public final String component1() {
        return this.packageName;
    }

    public final Long component10() {
        return this.apkSBVersionCodeRequired;
    }

    public final String component11() {
        return this.apkSBVersionNameRequired;
    }

    public final String component12() {
        return this.splitsLink;
    }

    public final Long component13() {
        return this.splitsSize;
    }

    public final Long component14() {
        return this.splitsSizeMirrored;
    }

    public final Long component15() {
        return this.splitsSBVersionCodeRequired;
    }

    public final String component16() {
        return this.splitsSBVersionNameRequired;
    }

    public final String component17() {
        return this.sharedLibsLink;
    }

    public final Long component18() {
        return this.sharedLibsSize;
    }

    public final Long component19() {
        return this.sharedLibsSizeMirrored;
    }

    public final String component2() {
        return this.name;
    }

    public final Long component20() {
        return this.sharedLibsSBVersionCodeRequired;
    }

    public final String component21() {
        return this.sharedLibsSBVersionNameRequired;
    }

    public final String component22() {
        return this.dataLink;
    }

    public final Long component23() {
        return this.dataSize;
    }

    public final Long component24() {
        return this.dataSizeMirrored;
    }

    public final Boolean component25() {
        return this.isDataEncrypted;
    }

    public final String component26() {
        return this.dataEncryptionMethod;
    }

    public final String component27() {
        return this.dataPasswordHash;
    }

    public final Long component28() {
        return this.dataBackupDate;
    }

    public final Long component29() {
        return this.dataSBVersionCodeRequired;
    }

    public final Long component3() {
        return this.dateBackup;
    }

    public final String component30() {
        return this.dataSBVersionNameRequired;
    }

    public final String component31() {
        return this.extDataLink;
    }

    public final Long component32() {
        return this.extDataSize;
    }

    public final Long component33() {
        return this.extDataSizeMirrored;
    }

    public final Boolean component34() {
        return this.isExtDataEncrypted;
    }

    public final String component35() {
        return this.extDataEncryptionMethod;
    }

    public final String component36() {
        return this.extDataPasswordHash;
    }

    public final Long component37() {
        return this.extDataBackupDate;
    }

    public final Long component38() {
        return this.extDataSBVersionCodeRequired;
    }

    public final String component39() {
        return this.extDataSBVersionNameRequired;
    }

    public final Long component4() {
        return this.dateBackupUpdated;
    }

    public final String component40() {
        return this.mediaLink;
    }

    public final Long component41() {
        return this.mediaSize;
    }

    public final Long component42() {
        return this.mediaSizeMirrored;
    }

    public final Boolean component43() {
        return this.isMediaEncrypted;
    }

    public final String component44() {
        return this.mediaEncryptionMethod;
    }

    public final String component45() {
        return this.mediaPasswordHash;
    }

    public final Long component46() {
        return this.mediaBackupDate;
    }

    public final Long component47() {
        return this.mediaSBVersionCodeRequired;
    }

    public final String component48() {
        return this.mediaSBVersionNameRequired;
    }

    public final String component49() {
        return this.expLink;
    }

    public final String component5() {
        return this.versionName;
    }

    public final Long component50() {
        return this.expSize;
    }

    public final Long component51() {
        return this.expSizeMirrored;
    }

    public final Long component52() {
        return this.expansionBackupDate;
    }

    public final Long component53() {
        return this.expSBVersionCodeRequired;
    }

    public final String component54() {
        return this.expSBVersionNameRequired;
    }

    public final Long component55() {
        return this.minSBVersionCodeRequired;
    }

    public final String component56() {
        return this.permissionIdsCsv;
    }

    public final String component57() {
        return this.permissionStatesCsv;
    }

    public final String component58() {
        return this.ntfAccessComponent;
    }

    public final String component59() {
        return this.specialDataLink;
    }

    public final Long component6() {
        return this.versionCode;
    }

    public final Long component60() {
        return this.specialDataSize;
    }

    public final String component61() {
        return this.accessibilityComponent;
    }

    public final String component62() {
        return this.ssaid;
    }

    public final String component63() {
        return this.installerPackage;
    }

    public final Boolean component64() {
        return this._protectedBackup;
    }

    public final String component65() {
        return this._note;
    }

    public final Integer component66() {
        return this.keyVersion;
    }

    public final String component7() {
        return this.apkLink;
    }

    public final Long component8() {
        return this.apkSize;
    }

    public final Long component9() {
        return this.apkBackupDate;
    }

    public final CloudMetadata copy(String str, String str2, Long l, Long l2, String str3, Long l3, String str4, Long l4, Long l5, Long l6, String str5, String str6, Long l7, Long l8, Long l9, String str7, String str8, Long l10, Long l11, Long l12, String str9, String str10, Long l13, Long l14, Boolean bool, String str11, String str12, Long l15, Long l16, String str13, String str14, Long l17, Long l18, Boolean bool2, String str15, String str16, Long l19, Long l20, String str17, String str18, Long l21, Long l22, Boolean bool3, String str19, String str20, Long l23, Long l24, String str21, String str22, Long l25, Long l26, Long l27, Long l28, String str23, Long l29, String str24, String str25, String str26, String str27, Long l30, String str28, String str29, String str30, Boolean bool4, String str31, Integer num) {
        str.getClass();
        str2.getClass();
        return new CloudMetadata(str, str2, l, l2, str3, l3, str4, l4, l5, l6, str5, str6, l7, l8, l9, str7, str8, l10, l11, l12, str9, str10, l13, l14, bool, str11, str12, l15, l16, str13, str14, l17, l18, bool2, str15, str16, l19, l20, str17, str18, l21, l22, bool3, str19, str20, l23, l24, str21, str22, l25, l26, l27, l28, str23, l29, str24, str25, str26, str27, l30, str28, str29, str30, bool4, str31, num);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CloudMetadata)) {
            return false;
        }
        CloudMetadata cloudMetadata = (CloudMetadata) obj;
        return pe4.d(this.packageName, cloudMetadata.packageName) && pe4.d(this.name, cloudMetadata.name) && pe4.d(this.dateBackup, cloudMetadata.dateBackup) && pe4.d(this.dateBackupUpdated, cloudMetadata.dateBackupUpdated) && pe4.d(this.versionName, cloudMetadata.versionName) && pe4.d(this.versionCode, cloudMetadata.versionCode) && pe4.d(this.apkLink, cloudMetadata.apkLink) && pe4.d(this.apkSize, cloudMetadata.apkSize) && pe4.d(this.apkBackupDate, cloudMetadata.apkBackupDate) && pe4.d(this.apkSBVersionCodeRequired, cloudMetadata.apkSBVersionCodeRequired) && pe4.d(this.apkSBVersionNameRequired, cloudMetadata.apkSBVersionNameRequired) && pe4.d(this.splitsLink, cloudMetadata.splitsLink) && pe4.d(this.splitsSize, cloudMetadata.splitsSize) && pe4.d(this.splitsSizeMirrored, cloudMetadata.splitsSizeMirrored) && pe4.d(this.splitsSBVersionCodeRequired, cloudMetadata.splitsSBVersionCodeRequired) && pe4.d(this.splitsSBVersionNameRequired, cloudMetadata.splitsSBVersionNameRequired) && pe4.d(this.sharedLibsLink, cloudMetadata.sharedLibsLink) && pe4.d(this.sharedLibsSize, cloudMetadata.sharedLibsSize) && pe4.d(this.sharedLibsSizeMirrored, cloudMetadata.sharedLibsSizeMirrored) && pe4.d(this.sharedLibsSBVersionCodeRequired, cloudMetadata.sharedLibsSBVersionCodeRequired) && pe4.d(this.sharedLibsSBVersionNameRequired, cloudMetadata.sharedLibsSBVersionNameRequired) && pe4.d(this.dataLink, cloudMetadata.dataLink) && pe4.d(this.dataSize, cloudMetadata.dataSize) && pe4.d(this.dataSizeMirrored, cloudMetadata.dataSizeMirrored) && pe4.d(this.isDataEncrypted, cloudMetadata.isDataEncrypted) && pe4.d(this.dataEncryptionMethod, cloudMetadata.dataEncryptionMethod) && pe4.d(this.dataPasswordHash, cloudMetadata.dataPasswordHash) && pe4.d(this.dataBackupDate, cloudMetadata.dataBackupDate) && pe4.d(this.dataSBVersionCodeRequired, cloudMetadata.dataSBVersionCodeRequired) && pe4.d(this.dataSBVersionNameRequired, cloudMetadata.dataSBVersionNameRequired) && pe4.d(this.extDataLink, cloudMetadata.extDataLink) && pe4.d(this.extDataSize, cloudMetadata.extDataSize) && pe4.d(this.extDataSizeMirrored, cloudMetadata.extDataSizeMirrored) && pe4.d(this.isExtDataEncrypted, cloudMetadata.isExtDataEncrypted) && pe4.d(this.extDataEncryptionMethod, cloudMetadata.extDataEncryptionMethod) && pe4.d(this.extDataPasswordHash, cloudMetadata.extDataPasswordHash) && pe4.d(this.extDataBackupDate, cloudMetadata.extDataBackupDate) && pe4.d(this.extDataSBVersionCodeRequired, cloudMetadata.extDataSBVersionCodeRequired) && pe4.d(this.extDataSBVersionNameRequired, cloudMetadata.extDataSBVersionNameRequired) && pe4.d(this.mediaLink, cloudMetadata.mediaLink) && pe4.d(this.mediaSize, cloudMetadata.mediaSize) && pe4.d(this.mediaSizeMirrored, cloudMetadata.mediaSizeMirrored) && pe4.d(this.isMediaEncrypted, cloudMetadata.isMediaEncrypted) && pe4.d(this.mediaEncryptionMethod, cloudMetadata.mediaEncryptionMethod) && pe4.d(this.mediaPasswordHash, cloudMetadata.mediaPasswordHash) && pe4.d(this.mediaBackupDate, cloudMetadata.mediaBackupDate) && pe4.d(this.mediaSBVersionCodeRequired, cloudMetadata.mediaSBVersionCodeRequired) && pe4.d(this.mediaSBVersionNameRequired, cloudMetadata.mediaSBVersionNameRequired) && pe4.d(this.expLink, cloudMetadata.expLink) && pe4.d(this.expSize, cloudMetadata.expSize) && pe4.d(this.expSizeMirrored, cloudMetadata.expSizeMirrored) && pe4.d(this.expansionBackupDate, cloudMetadata.expansionBackupDate) && pe4.d(this.expSBVersionCodeRequired, cloudMetadata.expSBVersionCodeRequired) && pe4.d(this.expSBVersionNameRequired, cloudMetadata.expSBVersionNameRequired) && pe4.d(this.minSBVersionCodeRequired, cloudMetadata.minSBVersionCodeRequired) && pe4.d(this.permissionIdsCsv, cloudMetadata.permissionIdsCsv) && pe4.d(this.permissionStatesCsv, cloudMetadata.permissionStatesCsv) && pe4.d(this.ntfAccessComponent, cloudMetadata.ntfAccessComponent) && pe4.d(this.specialDataLink, cloudMetadata.specialDataLink) && pe4.d(this.specialDataSize, cloudMetadata.specialDataSize) && pe4.d(this.accessibilityComponent, cloudMetadata.accessibilityComponent) && pe4.d(this.ssaid, cloudMetadata.ssaid) && pe4.d(this.installerPackage, cloudMetadata.installerPackage) && pe4.d(this._protectedBackup, cloudMetadata._protectedBackup) && pe4.d(this._note, cloudMetadata._note) && pe4.d(this.keyVersion, cloudMetadata.keyVersion);
    }

    public final String getAccessibilityComponent() {
        return this.accessibilityComponent;
    }

    public final Long getApkBackupDate() {
        return this.apkBackupDate;
    }

    public final String getApkLink() {
        return this.apkLink;
    }

    public final Long getApkSBVersionCodeRequired() {
        return this.apkSBVersionCodeRequired;
    }

    public final String getApkSBVersionNameRequired() {
        return this.apkSBVersionNameRequired;
    }

    public final Long getApkSize() {
        return this.apkSize;
    }

    @jz2
    public final Long getApkSizeMirrored() {
        return this.apkSize;
    }

    @jz2
    public final String getAppId() {
        g00 g00Var = g00.a;
        return g00.h(this.packageName);
    }

    public final Long getDataBackupDate() {
        return this.dataBackupDate;
    }

    public final String getDataEncryptionMethod() {
        return this.dataEncryptionMethod;
    }

    public final String getDataLink() {
        return this.dataLink;
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

    public final Long getDataSize() {
        return this.dataSize;
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

    public final String getExpLink() {
        return this.expLink;
    }

    public final Long getExpSBVersionCodeRequired() {
        return this.expSBVersionCodeRequired;
    }

    public final String getExpSBVersionNameRequired() {
        return this.expSBVersionNameRequired;
    }

    public final Long getExpSize() {
        return this.expSize;
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

    public final String getExtDataEncryptionMethod() {
        return this.extDataEncryptionMethod;
    }

    public final String getExtDataLink() {
        return this.extDataLink;
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

    public final Long getExtDataSize() {
        return this.extDataSize;
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

    public final String getMediaEncryptionMethod() {
        return this.mediaEncryptionMethod;
    }

    public final String getMediaLink() {
        return this.mediaLink;
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

    public final Long getMediaSize() {
        return this.mediaSize;
    }

    public final Long getMediaSizeMirrored() {
        return this.mediaSizeMirrored;
    }

    public final Long getMinSBVersionCodeRequired() {
        return this.minSBVersionCodeRequired;
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
        return x50.p0(new Long[]{this.minSBVersionCodeRequired, this.apkSBVersionCodeRequired, this.splitsSBVersionCodeRequired, this.sharedLibsSBVersionCodeRequired, this.dataSBVersionCodeRequired, this.extDataSBVersionCodeRequired, this.mediaSBVersionCodeRequired, this.expSBVersionCodeRequired});
    }

    public final String getSharedLibsLink() {
        return this.sharedLibsLink;
    }

    public final Long getSharedLibsSBVersionCodeRequired() {
        return this.sharedLibsSBVersionCodeRequired;
    }

    public final String getSharedLibsSBVersionNameRequired() {
        return this.sharedLibsSBVersionNameRequired;
    }

    public final Long getSharedLibsSize() {
        return this.sharedLibsSize;
    }

    public final Long getSharedLibsSizeMirrored() {
        return this.sharedLibsSizeMirrored;
    }

    public final String getSpecialDataLink() {
        return this.specialDataLink;
    }

    public final Long getSpecialDataSize() {
        return this.specialDataSize;
    }

    public final String getSplitsLink() {
        return this.splitsLink;
    }

    public final Long getSplitsSBVersionCodeRequired() {
        return this.splitsSBVersionCodeRequired;
    }

    public final String getSplitsSBVersionNameRequired() {
        return this.splitsSBVersionNameRequired;
    }

    public final Long getSplitsSize() {
        return this.splitsSize;
    }

    public final Long getSplitsSizeMirrored() {
        return this.splitsSizeMirrored;
    }

    public final String getSsaid() {
        return this.ssaid;
    }

    @jz2
    public final long getTotalApkSize() {
        return io4.h(this.sharedLibsSize) + io4.h(this.splitsSize) + io4.h(this.apkSize);
    }

    @jz2
    public final long getTotalSize() {
        return io4.h(this.specialDataSize) + io4.h(this.expSize) + io4.h(this.mediaSize) + io4.h(this.extDataSize) + io4.h(this.dataSize) + io4.h(this.sharedLibsSize) + io4.h(this.splitsSize) + io4.h(this.apkSize);
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
    public final boolean hasApk() {
        String str = this.apkLink;
        return !(str == null || str.length() == 0);
    }

    @jz2
    public final boolean hasBackups() {
        return hasApk() || hasData() || hasExtData() || hasMedia() || hasExpansion();
    }

    @jz2
    public final boolean hasData() {
        String str = this.dataLink;
        return !(str == null || str.length() == 0);
    }

    @jz2
    public final boolean hasExpansion() {
        String str = this.expLink;
        return !(str == null || str.length() == 0);
    }

    @jz2
    public final boolean hasExtData() {
        String str = this.extDataLink;
        return !(str == null || str.length() == 0);
    }

    @jz2
    public final boolean hasMedia() {
        String str = this.mediaLink;
        return !(str == null || str.length() == 0);
    }

    @jz2
    public final boolean hasRestorableBackup(boolean z) {
        return z ? hasBackups() : hasApk();
    }

    @jz2
    public final boolean hasSharedLibs() {
        String str = this.sharedLibsLink;
        return !(str == null || str.length() == 0);
    }

    @jz2
    public final boolean hasSpecialData() {
        String str = this.specialDataLink;
        return !(str == null || str.length() == 0);
    }

    @jz2
    public final boolean hasSplitApks() {
        String str = this.splitsLink;
        return !(str == null || str.length() == 0);
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
        String str2 = this.apkLink;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l4 = this.apkSize;
        int iHashCode6 = (iHashCode5 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Long l5 = this.apkBackupDate;
        int iHashCode7 = (iHashCode6 + (l5 == null ? 0 : l5.hashCode())) * 31;
        Long l6 = this.apkSBVersionCodeRequired;
        int iHashCode8 = (iHashCode7 + (l6 == null ? 0 : l6.hashCode())) * 31;
        String str3 = this.apkSBVersionNameRequired;
        int iHashCode9 = (iHashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.splitsLink;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l7 = this.splitsSize;
        int iHashCode11 = (iHashCode10 + (l7 == null ? 0 : l7.hashCode())) * 31;
        Long l8 = this.splitsSizeMirrored;
        int iHashCode12 = (iHashCode11 + (l8 == null ? 0 : l8.hashCode())) * 31;
        Long l9 = this.splitsSBVersionCodeRequired;
        int iHashCode13 = (iHashCode12 + (l9 == null ? 0 : l9.hashCode())) * 31;
        String str5 = this.splitsSBVersionNameRequired;
        int iHashCode14 = (iHashCode13 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.sharedLibsLink;
        int iHashCode15 = (iHashCode14 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Long l10 = this.sharedLibsSize;
        int iHashCode16 = (iHashCode15 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.sharedLibsSizeMirrored;
        int iHashCode17 = (iHashCode16 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.sharedLibsSBVersionCodeRequired;
        int iHashCode18 = (iHashCode17 + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str7 = this.sharedLibsSBVersionNameRequired;
        int iHashCode19 = (iHashCode18 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.dataLink;
        int iHashCode20 = (iHashCode19 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Long l13 = this.dataSize;
        int iHashCode21 = (iHashCode20 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Long l14 = this.dataSizeMirrored;
        int iHashCode22 = (iHashCode21 + (l14 == null ? 0 : l14.hashCode())) * 31;
        Boolean bool = this.isDataEncrypted;
        int iHashCode23 = (iHashCode22 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str9 = this.dataEncryptionMethod;
        int iHashCode24 = (iHashCode23 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.dataPasswordHash;
        int iHashCode25 = (iHashCode24 + (str10 == null ? 0 : str10.hashCode())) * 31;
        Long l15 = this.dataBackupDate;
        int iHashCode26 = (iHashCode25 + (l15 == null ? 0 : l15.hashCode())) * 31;
        Long l16 = this.dataSBVersionCodeRequired;
        int iHashCode27 = (iHashCode26 + (l16 == null ? 0 : l16.hashCode())) * 31;
        String str11 = this.dataSBVersionNameRequired;
        int iHashCode28 = (iHashCode27 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.extDataLink;
        int iHashCode29 = (iHashCode28 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Long l17 = this.extDataSize;
        int iHashCode30 = (iHashCode29 + (l17 == null ? 0 : l17.hashCode())) * 31;
        Long l18 = this.extDataSizeMirrored;
        int iHashCode31 = (iHashCode30 + (l18 == null ? 0 : l18.hashCode())) * 31;
        Boolean bool2 = this.isExtDataEncrypted;
        int iHashCode32 = (iHashCode31 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str13 = this.extDataEncryptionMethod;
        int iHashCode33 = (iHashCode32 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.extDataPasswordHash;
        int iHashCode34 = (iHashCode33 + (str14 == null ? 0 : str14.hashCode())) * 31;
        Long l19 = this.extDataBackupDate;
        int iHashCode35 = (iHashCode34 + (l19 == null ? 0 : l19.hashCode())) * 31;
        Long l20 = this.extDataSBVersionCodeRequired;
        int iHashCode36 = (iHashCode35 + (l20 == null ? 0 : l20.hashCode())) * 31;
        String str15 = this.extDataSBVersionNameRequired;
        int iHashCode37 = (iHashCode36 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.mediaLink;
        int iHashCode38 = (iHashCode37 + (str16 == null ? 0 : str16.hashCode())) * 31;
        Long l21 = this.mediaSize;
        int iHashCode39 = (iHashCode38 + (l21 == null ? 0 : l21.hashCode())) * 31;
        Long l22 = this.mediaSizeMirrored;
        int iHashCode40 = (iHashCode39 + (l22 == null ? 0 : l22.hashCode())) * 31;
        Boolean bool3 = this.isMediaEncrypted;
        int iHashCode41 = (iHashCode40 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str17 = this.mediaEncryptionMethod;
        int iHashCode42 = (iHashCode41 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.mediaPasswordHash;
        int iHashCode43 = (iHashCode42 + (str18 == null ? 0 : str18.hashCode())) * 31;
        Long l23 = this.mediaBackupDate;
        int iHashCode44 = (iHashCode43 + (l23 == null ? 0 : l23.hashCode())) * 31;
        Long l24 = this.mediaSBVersionCodeRequired;
        int iHashCode45 = (iHashCode44 + (l24 == null ? 0 : l24.hashCode())) * 31;
        String str19 = this.mediaSBVersionNameRequired;
        int iHashCode46 = (iHashCode45 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.expLink;
        int iHashCode47 = (iHashCode46 + (str20 == null ? 0 : str20.hashCode())) * 31;
        Long l25 = this.expSize;
        int iHashCode48 = (iHashCode47 + (l25 == null ? 0 : l25.hashCode())) * 31;
        Long l26 = this.expSizeMirrored;
        int iHashCode49 = (iHashCode48 + (l26 == null ? 0 : l26.hashCode())) * 31;
        Long l27 = this.expansionBackupDate;
        int iHashCode50 = (iHashCode49 + (l27 == null ? 0 : l27.hashCode())) * 31;
        Long l28 = this.expSBVersionCodeRequired;
        int iHashCode51 = (iHashCode50 + (l28 == null ? 0 : l28.hashCode())) * 31;
        String str21 = this.expSBVersionNameRequired;
        int iHashCode52 = (iHashCode51 + (str21 == null ? 0 : str21.hashCode())) * 31;
        Long l29 = this.minSBVersionCodeRequired;
        int iHashCode53 = (iHashCode52 + (l29 == null ? 0 : l29.hashCode())) * 31;
        String str22 = this.permissionIdsCsv;
        int iHashCode54 = (iHashCode53 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.permissionStatesCsv;
        int iHashCode55 = (iHashCode54 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.ntfAccessComponent;
        int iHashCode56 = (iHashCode55 + (str24 == null ? 0 : str24.hashCode())) * 31;
        String str25 = this.specialDataLink;
        int iHashCode57 = (iHashCode56 + (str25 == null ? 0 : str25.hashCode())) * 31;
        Long l30 = this.specialDataSize;
        int iHashCode58 = (iHashCode57 + (l30 == null ? 0 : l30.hashCode())) * 31;
        String str26 = this.accessibilityComponent;
        int iHashCode59 = (iHashCode58 + (str26 == null ? 0 : str26.hashCode())) * 31;
        String str27 = this.ssaid;
        int iHashCode60 = (iHashCode59 + (str27 == null ? 0 : str27.hashCode())) * 31;
        String str28 = this.installerPackage;
        int iHashCode61 = (iHashCode60 + (str28 == null ? 0 : str28.hashCode())) * 31;
        Boolean bool4 = this._protectedBackup;
        int iHashCode62 = (iHashCode61 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        String str29 = this._note;
        int iHashCode63 = (iHashCode62 + (str29 == null ? 0 : str29.hashCode())) * 31;
        Integer num = this.keyVersion;
        return iHashCode63 + (num != null ? num.hashCode() : 0);
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

    @jz2
    public final boolean isValidCloudDetails() {
        if (!hasBackups()) {
            return false;
        }
        g00 g00Var = g00.a;
        return !g00.w(this.packageName);
    }

    @jz2
    public final void prepareForFirebaseUpload() {
        this.minSBVersionCodeRequired = hasBackups() ? 580L : null;
        this.permissionIdsCsv = null;
        this.permissionStatesCsv = null;
        this.ntfAccessComponent = null;
        this.accessibilityComponent = null;
        this.ssaid = null;
        clearLegacyPerPartSBVersionFields();
    }

    @jz2
    public final void removeApkDetails() {
        updateApkDetails(null, null, null, null, null);
        this.apkSBVersionCodeRequired = null;
        this.apkSBVersionNameRequired = null;
    }

    @jz2
    public final void removeDataDetails() {
        updateDataDetails(null, null, null, null, null, null, null);
        this.dataSBVersionCodeRequired = null;
        this.dataSBVersionNameRequired = null;
    }

    @jz2
    public final void removeExpansionDetails() {
        updateExpansionDetails(null, null, null, null);
        this.expSBVersionCodeRequired = null;
        this.expSBVersionNameRequired = null;
    }

    @jz2
    public final void removeExtDataDetails() {
        updateExtDataDetails(null, null, null, null, null, null, null);
        this.extDataSBVersionCodeRequired = null;
        this.extDataSBVersionNameRequired = null;
    }

    @jz2
    public final void removeMediaDetails() {
        updateMediaDetails(null, null, null, null, null, null, null);
        this.mediaSBVersionCodeRequired = null;
        this.mediaSBVersionNameRequired = null;
    }

    @jz2
    public final void removeSharedLibsDetails() {
        updateSharedLibsDetails(null, null, null);
        this.sharedLibsSBVersionCodeRequired = null;
        this.sharedLibsSBVersionNameRequired = null;
    }

    @jz2
    public final void removeSpecialDataDetails() {
        updateSpecialDataDetails(null, null);
    }

    @jz2
    public final void removeSplitsDetails() {
        updateSplitsDetails(null, null, null);
        this.splitsSBVersionCodeRequired = null;
        this.splitsSBVersionNameRequired = null;
    }

    public final void setAccessibilityComponent(String str) {
        this.accessibilityComponent = str;
    }

    public final void setApkBackupDate(Long l) {
        this.apkBackupDate = l;
    }

    public final void setApkLink(String str) {
        this.apkLink = str;
    }

    public final void setApkSBVersionCodeRequired(Long l) {
        this.apkSBVersionCodeRequired = l;
    }

    public final void setApkSBVersionNameRequired(String str) {
        this.apkSBVersionNameRequired = str;
    }

    public final void setApkSize(Long l) {
        this.apkSize = l;
    }

    public final void setDataBackupDate(Long l) {
        this.dataBackupDate = l;
    }

    public final void setDataEncrypted(Boolean bool) {
        this.isDataEncrypted = bool;
    }

    public final void setDataEncryptionMethod(String str) {
        this.dataEncryptionMethod = str;
    }

    public final void setDataLink(String str) {
        this.dataLink = str;
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

    public final void setDataSize(Long l) {
        this.dataSize = l;
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

    public final void setExpLink(String str) {
        this.expLink = str;
    }

    public final void setExpSBVersionCodeRequired(Long l) {
        this.expSBVersionCodeRequired = l;
    }

    public final void setExpSBVersionNameRequired(String str) {
        this.expSBVersionNameRequired = str;
    }

    public final void setExpSize(Long l) {
        this.expSize = l;
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

    public final void setExtDataEncrypted(Boolean bool) {
        this.isExtDataEncrypted = bool;
    }

    public final void setExtDataEncryptionMethod(String str) {
        this.extDataEncryptionMethod = str;
    }

    public final void setExtDataLink(String str) {
        this.extDataLink = str;
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

    public final void setExtDataSize(Long l) {
        this.extDataSize = l;
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

    public final void setMediaEncrypted(Boolean bool) {
        this.isMediaEncrypted = bool;
    }

    public final void setMediaEncryptionMethod(String str) {
        this.mediaEncryptionMethod = str;
    }

    public final void setMediaLink(String str) {
        this.mediaLink = str;
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

    public final void setMediaSize(Long l) {
        this.mediaSize = l;
    }

    public final void setMediaSizeMirrored(Long l) {
        this.mediaSizeMirrored = l;
    }

    public final void setMinSBVersionCodeRequired(Long l) {
        this.minSBVersionCodeRequired = l;
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

    public final void setSharedLibsLink(String str) {
        this.sharedLibsLink = str;
    }

    public final void setSharedLibsSBVersionCodeRequired(Long l) {
        this.sharedLibsSBVersionCodeRequired = l;
    }

    public final void setSharedLibsSBVersionNameRequired(String str) {
        this.sharedLibsSBVersionNameRequired = str;
    }

    public final void setSharedLibsSize(Long l) {
        this.sharedLibsSize = l;
    }

    public final void setSharedLibsSizeMirrored(Long l) {
        this.sharedLibsSizeMirrored = l;
    }

    public final void setSpecialDataLink(String str) {
        this.specialDataLink = str;
    }

    public final void setSpecialDataSize(Long l) {
        this.specialDataSize = l;
    }

    public final void setSplitsLink(String str) {
        this.splitsLink = str;
    }

    public final void setSplitsSBVersionCodeRequired(Long l) {
        this.splitsSBVersionCodeRequired = l;
    }

    public final void setSplitsSBVersionNameRequired(String str) {
        this.splitsSBVersionNameRequired = str;
    }

    public final void setSplitsSize(Long l) {
        this.splitsSize = l;
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
        String str4 = this.apkLink;
        Long l4 = this.apkSize;
        Long l5 = this.apkBackupDate;
        Long l6 = this.apkSBVersionCodeRequired;
        String str5 = this.apkSBVersionNameRequired;
        String str6 = this.splitsLink;
        Long l7 = this.splitsSize;
        Long l8 = this.splitsSizeMirrored;
        Long l9 = this.splitsSBVersionCodeRequired;
        String str7 = this.splitsSBVersionNameRequired;
        String str8 = this.sharedLibsLink;
        Long l10 = this.sharedLibsSize;
        Long l11 = this.sharedLibsSizeMirrored;
        Long l12 = this.sharedLibsSBVersionCodeRequired;
        String str9 = this.sharedLibsSBVersionNameRequired;
        String str10 = this.dataLink;
        Long l13 = this.dataSize;
        Long l14 = this.dataSizeMirrored;
        Boolean bool = this.isDataEncrypted;
        String str11 = this.dataEncryptionMethod;
        String str12 = this.dataPasswordHash;
        Long l15 = this.dataBackupDate;
        Long l16 = this.dataSBVersionCodeRequired;
        String str13 = this.dataSBVersionNameRequired;
        String str14 = this.extDataLink;
        Long l17 = this.extDataSize;
        Long l18 = this.extDataSizeMirrored;
        Boolean bool2 = this.isExtDataEncrypted;
        String str15 = this.extDataEncryptionMethod;
        String str16 = this.extDataPasswordHash;
        Long l19 = this.extDataBackupDate;
        Long l20 = this.extDataSBVersionCodeRequired;
        String str17 = this.extDataSBVersionNameRequired;
        String str18 = this.mediaLink;
        Long l21 = this.mediaSize;
        Long l22 = this.mediaSizeMirrored;
        Boolean bool3 = this.isMediaEncrypted;
        String str19 = this.mediaEncryptionMethod;
        String str20 = this.mediaPasswordHash;
        Long l23 = this.mediaBackupDate;
        Long l24 = this.mediaSBVersionCodeRequired;
        String str21 = this.mediaSBVersionNameRequired;
        String str22 = this.expLink;
        Long l25 = this.expSize;
        Long l26 = this.expSizeMirrored;
        Long l27 = this.expansionBackupDate;
        Long l28 = this.expSBVersionCodeRequired;
        String str23 = this.expSBVersionNameRequired;
        Long l29 = this.minSBVersionCodeRequired;
        String str24 = this.permissionIdsCsv;
        String str25 = this.permissionStatesCsv;
        String str26 = this.ntfAccessComponent;
        String str27 = this.specialDataLink;
        Long l30 = this.specialDataSize;
        String str28 = this.accessibilityComponent;
        String str29 = this.ssaid;
        String str30 = this.installerPackage;
        Boolean bool4 = this._protectedBackup;
        String str31 = this._note;
        Integer num = this.keyVersion;
        StringBuilder sbP = u48.p("CloudMetadata(packageName=", str, ", name=", str2, ", dateBackup=");
        fz5.q(sbP, l, ", dateBackupUpdated=", l2, ", versionName=");
        sbP.append(str3);
        sbP.append(", versionCode=");
        sbP.append(l3);
        sbP.append(", apkLink=");
        sbP.append(str4);
        sbP.append(", apkSize=");
        sbP.append(l4);
        sbP.append(", apkBackupDate=");
        fz5.q(sbP, l5, ", apkSBVersionCodeRequired=", l6, ", apkSBVersionNameRequired=");
        xs1.t(sbP, str5, ", splitsLink=", str6, ", splitsSize=");
        fz5.q(sbP, l7, ", splitsSizeMirrored=", l8, ", splitsSBVersionCodeRequired=");
        sbP.append(l9);
        sbP.append(", splitsSBVersionNameRequired=");
        sbP.append(str7);
        sbP.append(", sharedLibsLink=");
        sbP.append(str8);
        sbP.append(", sharedLibsSize=");
        sbP.append(l10);
        sbP.append(", sharedLibsSizeMirrored=");
        fz5.q(sbP, l11, ", sharedLibsSBVersionCodeRequired=", l12, ", sharedLibsSBVersionNameRequired=");
        xs1.t(sbP, str9, ", dataLink=", str10, ", dataSize=");
        fz5.q(sbP, l13, ", dataSizeMirrored=", l14, ", isDataEncrypted=");
        sbP.append(bool);
        sbP.append(", dataEncryptionMethod=");
        sbP.append(str11);
        sbP.append(", dataPasswordHash=");
        sbP.append(str12);
        sbP.append(", dataBackupDate=");
        sbP.append(l15);
        sbP.append(", dataSBVersionCodeRequired=");
        sbP.append(l16);
        sbP.append(", dataSBVersionNameRequired=");
        sbP.append(str13);
        sbP.append(", extDataLink=");
        sbP.append(str14);
        sbP.append(", extDataSize=");
        sbP.append(l17);
        sbP.append(", extDataSizeMirrored=");
        sbP.append(l18);
        sbP.append(", isExtDataEncrypted=");
        sbP.append(bool2);
        sbP.append(", extDataEncryptionMethod=");
        xs1.t(sbP, str15, ", extDataPasswordHash=", str16, ", extDataBackupDate=");
        fz5.q(sbP, l19, ", extDataSBVersionCodeRequired=", l20, ", extDataSBVersionNameRequired=");
        xs1.t(sbP, str17, ", mediaLink=", str18, ", mediaSize=");
        fz5.q(sbP, l21, ", mediaSizeMirrored=", l22, ", isMediaEncrypted=");
        sbP.append(bool3);
        sbP.append(", mediaEncryptionMethod=");
        sbP.append(str19);
        sbP.append(", mediaPasswordHash=");
        sbP.append(str20);
        sbP.append(", mediaBackupDate=");
        sbP.append(l23);
        sbP.append(", mediaSBVersionCodeRequired=");
        sbP.append(l24);
        sbP.append(", mediaSBVersionNameRequired=");
        sbP.append(str21);
        sbP.append(", expLink=");
        sbP.append(str22);
        sbP.append(", expSize=");
        sbP.append(l25);
        sbP.append(", expSizeMirrored=");
        fz5.q(sbP, l26, ", expansionBackupDate=", l27, ", expSBVersionCodeRequired=");
        sbP.append(l28);
        sbP.append(", expSBVersionNameRequired=");
        sbP.append(str23);
        sbP.append(", minSBVersionCodeRequired=");
        sbP.append(l29);
        sbP.append(", permissionIdsCsv=");
        sbP.append(str24);
        sbP.append(", permissionStatesCsv=");
        xs1.t(sbP, str25, ", ntfAccessComponent=", str26, ", specialDataLink=");
        sbP.append(str27);
        sbP.append(", specialDataSize=");
        sbP.append(l30);
        sbP.append(", accessibilityComponent=");
        xs1.t(sbP, str28, ", ssaid=", str29, ", installerPackage=");
        sbP.append(str30);
        sbP.append(", _protectedBackup=");
        sbP.append(bool4);
        sbP.append(", _note=");
        sbP.append(str31);
        sbP.append(", keyVersion=");
        sbP.append(num);
        sbP.append(")");
        return sbP.toString();
    }

    @jz2
    public final void updateApkDetails(String str, Long l, String str2, Long l2, Long l3) {
        this.versionName = str;
        this.versionCode = l;
        this.apkLink = str2;
        this.apkSize = l2;
        this.apkBackupDate = l3;
        this.apkSBVersionCodeRequired = 580L;
        this.apkSBVersionNameRequired = LocalMetadata.SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateDataDetails(String str, Long l, Long l2, Boolean bool, String str2, String str3, Long l3) {
        this.dataLink = str;
        this.dataSize = l;
        this.dataSizeMirrored = l2;
        this.isDataEncrypted = bool;
        this.dataEncryptionMethod = str2;
        this.dataPasswordHash = str3;
        this.dataBackupDate = l3;
        this.dataSBVersionCodeRequired = 580L;
        this.dataSBVersionNameRequired = LocalMetadata.SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateExpansionDetails(String str, Long l, Long l2, Long l3) {
        this.expLink = str;
        this.expSize = l;
        this.expSizeMirrored = l2;
        this.expansionBackupDate = l3;
        this.expSBVersionCodeRequired = 580L;
        this.expSBVersionNameRequired = LocalMetadata.SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateExtDataDetails(String str, Long l, Long l2, Boolean bool, String str2, String str3, Long l3) {
        this.extDataLink = str;
        this.extDataSize = l;
        this.extDataSizeMirrored = l2;
        this.isExtDataEncrypted = bool;
        this.extDataEncryptionMethod = str2;
        this.extDataPasswordHash = str3;
        this.extDataBackupDate = l3;
        this.extDataSBVersionCodeRequired = 580L;
        this.extDataSBVersionNameRequired = LocalMetadata.SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateMediaDetails(String str, Long l, Long l2, Boolean bool, String str2, String str3, Long l3) {
        this.mediaLink = str;
        this.mediaSize = l;
        this.mediaSizeMirrored = l2;
        this.isMediaEncrypted = bool;
        this.mediaEncryptionMethod = str2;
        this.mediaPasswordHash = str3;
        this.mediaBackupDate = l3;
        this.mediaSBVersionCodeRequired = 580L;
        this.mediaSBVersionNameRequired = LocalMetadata.SB_VERSION_NAME_REQUIRED;
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
    public final void updateSharedLibsDetails(String str, Long l, Long l2) {
        this.sharedLibsLink = str;
        this.sharedLibsSize = l;
        this.sharedLibsSizeMirrored = l2;
        this.sharedLibsSBVersionCodeRequired = 580L;
        this.sharedLibsSBVersionNameRequired = LocalMetadata.SB_VERSION_NAME_REQUIRED;
    }

    @jz2
    public final void updateSpecialDataDetails(String str, Long l) {
        this.specialDataLink = str;
        this.specialDataSize = l;
    }

    @jz2
    public final void updateSplitsDetails(String str, Long l, Long l2) {
        this.splitsLink = str;
        this.splitsSize = l;
        this.splitsSizeMirrored = l2;
        this.splitsSBVersionCodeRequired = 580L;
        this.splitsSBVersionNameRequired = LocalMetadata.SB_VERSION_NAME_REQUIRED;
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
        parcel.writeString(this.apkLink);
        Long l4 = this.apkSize;
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
        parcel.writeString(this.splitsLink);
        Long l7 = this.splitsSize;
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
        parcel.writeString(this.sharedLibsLink);
        Long l10 = this.sharedLibsSize;
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
        parcel.writeString(this.dataLink);
        Long l13 = this.dataSize;
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
        parcel.writeString(this.extDataLink);
        Long l17 = this.extDataSize;
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
        parcel.writeString(this.mediaLink);
        Long l21 = this.mediaSize;
        if (l21 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l21);
        }
        Long l22 = this.mediaSizeMirrored;
        if (l22 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l22);
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
        Long l23 = this.mediaBackupDate;
        if (l23 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l23);
        }
        Long l24 = this.mediaSBVersionCodeRequired;
        if (l24 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l24);
        }
        parcel.writeString(this.mediaSBVersionNameRequired);
        parcel.writeString(this.expLink);
        Long l25 = this.expSize;
        if (l25 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l25);
        }
        Long l26 = this.expSizeMirrored;
        if (l26 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l26);
        }
        Long l27 = this.expansionBackupDate;
        if (l27 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l27);
        }
        Long l28 = this.expSBVersionCodeRequired;
        if (l28 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l28);
        }
        parcel.writeString(this.expSBVersionNameRequired);
        Long l29 = this.minSBVersionCodeRequired;
        if (l29 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l29);
        }
        parcel.writeString(this.permissionIdsCsv);
        parcel.writeString(this.permissionStatesCsv);
        parcel.writeString(this.ntfAccessComponent);
        parcel.writeString(this.specialDataLink);
        Long l30 = this.specialDataSize;
        if (l30 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l30);
        }
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

    public CloudMetadata(String str, String str2, Long l, Long l2, String str3, Long l3, String str4, Long l4, Long l5, Long l6, String str5, String str6, Long l7, Long l8, Long l9, String str7, String str8, Long l10, Long l11, Long l12, String str9, String str10, Long l13, Long l14, Boolean bool, String str11, String str12, Long l15, Long l16, String str13, String str14, Long l17, Long l18, Boolean bool2, String str15, String str16, Long l19, Long l20, String str17, String str18, Long l21, Long l22, Boolean bool3, String str19, String str20, Long l23, Long l24, String str21, String str22, Long l25, Long l26, Long l27, Long l28, String str23, Long l29, String str24, String str25, String str26, String str27, Long l30, String str28, String str29, String str30, Boolean bool4, String str31, Integer num) {
        str.getClass();
        str2.getClass();
        this.packageName = str;
        this.name = str2;
        this.dateBackup = l;
        this.dateBackupUpdated = l2;
        this.versionName = str3;
        this.versionCode = l3;
        this.apkLink = str4;
        this.apkSize = l4;
        this.apkBackupDate = l5;
        this.apkSBVersionCodeRequired = l6;
        this.apkSBVersionNameRequired = str5;
        this.splitsLink = str6;
        this.splitsSize = l7;
        this.splitsSizeMirrored = l8;
        this.splitsSBVersionCodeRequired = l9;
        this.splitsSBVersionNameRequired = str7;
        this.sharedLibsLink = str8;
        this.sharedLibsSize = l10;
        this.sharedLibsSizeMirrored = l11;
        this.sharedLibsSBVersionCodeRequired = l12;
        this.sharedLibsSBVersionNameRequired = str9;
        this.dataLink = str10;
        this.dataSize = l13;
        this.dataSizeMirrored = l14;
        this.isDataEncrypted = bool;
        this.dataEncryptionMethod = str11;
        this.dataPasswordHash = str12;
        this.dataBackupDate = l15;
        this.dataSBVersionCodeRequired = l16;
        this.dataSBVersionNameRequired = str13;
        this.extDataLink = str14;
        this.extDataSize = l17;
        this.extDataSizeMirrored = l18;
        this.isExtDataEncrypted = bool2;
        this.extDataEncryptionMethod = str15;
        this.extDataPasswordHash = str16;
        this.extDataBackupDate = l19;
        this.extDataSBVersionCodeRequired = l20;
        this.extDataSBVersionNameRequired = str17;
        this.mediaLink = str18;
        this.mediaSize = l21;
        this.mediaSizeMirrored = l22;
        this.isMediaEncrypted = bool3;
        this.mediaEncryptionMethod = str19;
        this.mediaPasswordHash = str20;
        this.mediaBackupDate = l23;
        this.mediaSBVersionCodeRequired = l24;
        this.mediaSBVersionNameRequired = str21;
        this.expLink = str22;
        this.expSize = l25;
        this.expSizeMirrored = l26;
        this.expansionBackupDate = l27;
        this.expSBVersionCodeRequired = l28;
        this.expSBVersionNameRequired = str23;
        this.minSBVersionCodeRequired = l29;
        this.permissionIdsCsv = str24;
        this.permissionStatesCsv = str25;
        this.ntfAccessComponent = str26;
        this.specialDataLink = str27;
        this.specialDataSize = l30;
        this.accessibilityComponent = str28;
        this.ssaid = str29;
        this.installerPackage = str30;
        this._protectedBackup = bool4;
        this._note = str31;
        this.keyVersion = num;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @jz2
        public final CloudMetadata from(ji jiVar) {
            jiVar.getClass();
            return new CloudMetadata(jiVar.getPackageName(), jiVar.getName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -4, -1, 3, null);
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        public final CloudMetadata createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Long l;
            Object objValueOf;
            Object obj;
            Object objValueOf2;
            Object obj2;
            Object obj3;
            Boolean boolValueOf3;
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string3 = parcel.readString();
            Long lValueOf3 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string4 = parcel.readString();
            Long lValueOf4 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf5 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf6 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string5 = parcel.readString();
            Long l2 = lValueOf2;
            Long l3 = lValueOf3;
            Long l4 = lValueOf4;
            Long l5 = lValueOf5;
            Long l6 = lValueOf6;
            String string6 = parcel.readString();
            Long lValueOf7 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf8 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf9 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string7 = parcel.readString();
            Long l7 = lValueOf7;
            Long l8 = lValueOf8;
            Long l9 = lValueOf9;
            String string8 = parcel.readString();
            Long lValueOf10 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf11 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf12 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string9 = parcel.readString();
            Long l10 = lValueOf10;
            Long l11 = lValueOf11;
            Long l12 = lValueOf12;
            String string10 = parcel.readString();
            Long lValueOf13 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf14 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            String string11 = parcel.readString();
            String string12 = parcel.readString();
            Long lValueOf15 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf16 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string13 = parcel.readString();
            Long l13 = lValueOf15;
            String string14 = parcel.readString();
            Long lValueOf17 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf18 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
                l = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
                l = null;
            }
            Long l14 = lValueOf13;
            Long l15 = lValueOf14;
            Boolean bool = boolValueOf;
            Long l16 = lValueOf16;
            Long l17 = lValueOf17;
            String string15 = parcel.readString();
            Long l18 = lValueOf18;
            String string16 = parcel.readString();
            Long lValueOf19 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            Long lValueOf20 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            String string17 = parcel.readString();
            Boolean bool2 = boolValueOf2;
            Long l19 = lValueOf19;
            String string18 = parcel.readString();
            Long lValueOf21 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            Long lValueOf22 = parcel.readInt() == 0 ? l : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                objValueOf = l;
                obj = objValueOf;
            } else {
                objValueOf = Boolean.valueOf(parcel.readInt() != 0);
                obj = l;
            }
            Long l20 = lValueOf20;
            Long l21 = lValueOf21;
            String string19 = parcel.readString();
            Long l22 = lValueOf22;
            String string20 = parcel.readString();
            Object objValueOf3 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            Object objValueOf4 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            String string21 = parcel.readString();
            Boolean bool3 = objValueOf;
            Long l23 = objValueOf3;
            String string22 = parcel.readString();
            Object objValueOf5 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            Object objValueOf6 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            Object objValueOf7 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            Object objValueOf8 = parcel.readInt() == 0 ? obj : Long.valueOf(parcel.readLong());
            Long l24 = objValueOf6;
            String string23 = parcel.readString();
            if (parcel.readInt() == 0) {
                objValueOf2 = obj;
                obj2 = objValueOf2;
            } else {
                objValueOf2 = Long.valueOf(parcel.readLong());
                obj2 = obj;
            }
            Long l25 = objValueOf4;
            Long l26 = objValueOf5;
            Long l27 = objValueOf8;
            String string24 = parcel.readString();
            String string25 = parcel.readString();
            Long l28 = objValueOf7;
            Long l29 = objValueOf2;
            String string26 = parcel.readString();
            Object obj4 = obj2;
            String string27 = parcel.readString();
            Object objValueOf9 = parcel.readInt() == 0 ? obj4 : Long.valueOf(parcel.readLong());
            boolean z = true;
            String string28 = parcel.readString();
            String string29 = parcel.readString();
            Long l30 = objValueOf9;
            String string30 = parcel.readString();
            if (parcel.readInt() == 0) {
                Object obj5 = obj4;
                obj3 = obj5;
                boolValueOf3 = obj5;
            } else {
                if (parcel.readInt() == 0) {
                    z = false;
                }
                obj3 = obj4;
                boolValueOf3 = Boolean.valueOf(z);
            }
            String string31 = parcel.readString();
            Integer numValueOf = obj3;
            if (parcel.readInt() != 0) {
                numValueOf = Integer.valueOf(parcel.readInt());
            }
            return new CloudMetadata(string, string2, lValueOf, l2, string3, l3, string4, l4, l5, l6, string5, string6, l7, l8, l9, string7, string8, l10, l11, l12, string9, string10, l14, l15, bool, string11, string12, l13, l16, string13, string14, l17, l18, bool2, string15, string16, l19, l20, string17, string18, l21, l22, bool3, string19, string20, l23, l25, string21, string22, l26, l24, l28, l27, string23, l29, string24, string25, string26, string27, l30, string28, string29, string30, boolValueOf3, string31, numValueOf);
        }

        @Override // android.os.Parcelable.Creator
        public final CloudMetadata[] newArray(int i) {
            return new CloudMetadata[i];
        }
    }

    public CloudMetadata() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, -1, 3, null);
    }
}
