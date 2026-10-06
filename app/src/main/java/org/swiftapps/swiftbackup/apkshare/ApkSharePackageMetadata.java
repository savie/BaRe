package org.swiftapps.swiftbackup.apkshare;

import defpackage.fz5;
import defpackage.pe4;
import defpackage.u48;
import defpackage.xs1;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ApkSharePackageMetadata {
    private final String appName;
    private final long exportedAt;
    private final String exportedBy;
    private final List<FileMetadata> files;
    private final String installerPackage;
    private final String packageName;
    private final Long versionCode;
    private final String versionName;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class FileMetadata {
        private final String name;
        private final String role;
        private final String sha256;
        private final long sizeBytes;

        public FileMetadata(String str, String str2, long j, String str3) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            this.name = str;
            this.role = str2;
            this.sizeBytes = j;
            this.sha256 = str3;
        }

        public static /* synthetic */ FileMetadata copy$default(FileMetadata fileMetadata, String str, String str2, long j, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = fileMetadata.name;
            }
            if ((i & 2) != 0) {
                str2 = fileMetadata.role;
            }
            if ((i & 4) != 0) {
                j = fileMetadata.sizeBytes;
            }
            if ((i & 8) != 0) {
                str3 = fileMetadata.sha256;
            }
            String str4 = str3;
            return fileMetadata.copy(str, str2, j, str4);
        }

        public final String component1() {
            return this.name;
        }

        public final String component2() {
            return this.role;
        }

        public final long component3() {
            return this.sizeBytes;
        }

        public final String component4() {
            return this.sha256;
        }

        public final FileMetadata copy(String str, String str2, long j, String str3) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            return new FileMetadata(str, str2, j, str3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FileMetadata)) {
                return false;
            }
            FileMetadata fileMetadata = (FileMetadata) obj;
            return pe4.d(this.name, fileMetadata.name) && pe4.d(this.role, fileMetadata.role) && this.sizeBytes == fileMetadata.sizeBytes && pe4.d(this.sha256, fileMetadata.sha256);
        }

        public final String getName() {
            return this.name;
        }

        public final String getRole() {
            return this.role;
        }

        public final String getSha256() {
            return this.sha256;
        }

        public final long getSizeBytes() {
            return this.sizeBytes;
        }

        public int hashCode() {
            return this.sha256.hashCode() + xs1.f(this.sizeBytes, fz5.g(this.name.hashCode() * 31, 31, this.role), 31);
        }

        public String toString() {
            String str = this.name;
            String str2 = this.role;
            long j = this.sizeBytes;
            String str3 = this.sha256;
            StringBuilder sbP = u48.p("FileMetadata(name=", str, ", role=", str2, ", sizeBytes=");
            sbP.append(j);
            sbP.append(", sha256=");
            sbP.append(str3);
            sbP.append(")");
            return sbP.toString();
        }
    }

    public ApkSharePackageMetadata(String str, String str2, String str3, Long l, String str4, long j, String str5, List<FileMetadata> list) {
        str.getClass();
        str2.getClass();
        str5.getClass();
        list.getClass();
        this.packageName = str;
        this.appName = str2;
        this.versionName = str3;
        this.versionCode = l;
        this.installerPackage = str4;
        this.exportedAt = j;
        this.exportedBy = str5;
        this.files = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ApkSharePackageMetadata copy$default(ApkSharePackageMetadata apkSharePackageMetadata, String str, String str2, String str3, Long l, String str4, long j, String str5, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = apkSharePackageMetadata.packageName;
        }
        if ((i & 2) != 0) {
            str2 = apkSharePackageMetadata.appName;
        }
        if ((i & 4) != 0) {
            str3 = apkSharePackageMetadata.versionName;
        }
        if ((i & 8) != 0) {
            l = apkSharePackageMetadata.versionCode;
        }
        if ((i & 16) != 0) {
            str4 = apkSharePackageMetadata.installerPackage;
        }
        if ((i & 32) != 0) {
            j = apkSharePackageMetadata.exportedAt;
        }
        if ((i & 64) != 0) {
            str5 = apkSharePackageMetadata.exportedBy;
        }
        if ((i & 128) != 0) {
            list = apkSharePackageMetadata.files;
        }
        long j2 = j;
        Long l2 = l;
        String str6 = str4;
        String str7 = str3;
        return apkSharePackageMetadata.copy(str, str2, str7, l2, str6, j2, str5, list);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.appName;
    }

    public final String component3() {
        return this.versionName;
    }

    public final Long component4() {
        return this.versionCode;
    }

    public final String component5() {
        return this.installerPackage;
    }

    public final long component6() {
        return this.exportedAt;
    }

    public final String component7() {
        return this.exportedBy;
    }

    public final List<FileMetadata> component8() {
        return this.files;
    }

    public final ApkSharePackageMetadata copy(String str, String str2, String str3, Long l, String str4, long j, String str5, List<FileMetadata> list) {
        str.getClass();
        str2.getClass();
        str5.getClass();
        list.getClass();
        return new ApkSharePackageMetadata(str, str2, str3, l, str4, j, str5, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApkSharePackageMetadata)) {
            return false;
        }
        ApkSharePackageMetadata apkSharePackageMetadata = (ApkSharePackageMetadata) obj;
        return pe4.d(this.packageName, apkSharePackageMetadata.packageName) && pe4.d(this.appName, apkSharePackageMetadata.appName) && pe4.d(this.versionName, apkSharePackageMetadata.versionName) && pe4.d(this.versionCode, apkSharePackageMetadata.versionCode) && pe4.d(this.installerPackage, apkSharePackageMetadata.installerPackage) && this.exportedAt == apkSharePackageMetadata.exportedAt && pe4.d(this.exportedBy, apkSharePackageMetadata.exportedBy) && pe4.d(this.files, apkSharePackageMetadata.files);
    }

    public final String getAppName() {
        return this.appName;
    }

    public final long getExportedAt() {
        return this.exportedAt;
    }

    public final String getExportedBy() {
        return this.exportedBy;
    }

    public final List<FileMetadata> getFiles() {
        return this.files;
    }

    public final String getInstallerPackage() {
        return this.installerPackage;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        int iG = fz5.g(this.packageName.hashCode() * 31, 31, this.appName);
        String str = this.versionName;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.versionCode;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.installerPackage;
        return this.files.hashCode() + fz5.g(xs1.f(this.exportedAt, (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31, 31), 31, this.exportedBy);
    }

    public String toString() {
        String str = this.packageName;
        String str2 = this.appName;
        String str3 = this.versionName;
        Long l = this.versionCode;
        String str4 = this.installerPackage;
        long j = this.exportedAt;
        String str5 = this.exportedBy;
        List<FileMetadata> list = this.files;
        StringBuilder sbP = u48.p("ApkSharePackageMetadata(packageName=", str, ", appName=", str2, ", versionName=");
        sbP.append(str3);
        sbP.append(", versionCode=");
        sbP.append(l);
        sbP.append(", installerPackage=");
        sbP.append(str4);
        sbP.append(", exportedAt=");
        sbP.append(j);
        sbP.append(", exportedBy=");
        sbP.append(str5);
        sbP.append(", files=");
        sbP.append(list);
        sbP.append(")");
        return sbP.toString();
    }

    public /* synthetic */ ApkSharePackageMetadata(String str, String str2, String str3, Long l, String str4, long j, String str5, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, l, (i & 16) != 0 ? null : str4, j, str5, list);
    }
}
