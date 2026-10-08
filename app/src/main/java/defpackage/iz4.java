package defpackage;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.compress.Packer;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class iz4 {
    public static final a Companion = new a(null);
    private long apkSize;
    private final gm backup;
    private String backupId;
    private String backupTag;
    private String backupVersion;
    private long backupVersionCode;
    private String dataEncryptionInfo;
    private long dataSize;
    private long dateBackup;
    private String dateBackupString;
    private String dateBackupUpdatedString;
    private Long dateUpdated;
    private long expansionSize;
    private String extDataEncryptionInfo;
    private long extDataSize;
    private boolean isDataEncrypted;
    private boolean isExtDataEncrypted;
    private boolean isMediaEncrypted;
    private String mediaEncryptionInfo;
    private long mediaSize;
    private LocalMetadata metadata;
    private long sharedLibsSize;
    private long splitsApkSize;
    private long totalSize;

    public iz4(gm gmVar) {
        gmVar.getClass();
        this.backup = gmVar;
        this.backupId = "";
    }

    public static /* synthetic */ iz4 copy$default(iz4 iz4Var, gm gmVar, int i, Object obj) {
        if ((i & 1) != 0) {
            gmVar = iz4Var.backup;
        }
        return iz4Var.copy(gmVar);
    }

    public final gm component1() {
        return this.backup;
    }

    public final iz4 copy(gm gmVar) {
        gmVar.getClass();
        return new iz4(gmVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof iz4) && pe4.d(this.backup, ((iz4) obj).backup);
    }

    public final long getApkSize() {
        return this.apkSize;
    }

    public final gm getBackup() {
        return this.backup;
    }

    public final String getBackupId() {
        return this.backupId;
    }

    public final String getBackupTag() {
        return this.backupTag;
    }

    public final String getBackupVersion() {
        return this.backupVersion;
    }

    public final long getBackupVersionCode() {
        return this.backupVersionCode;
    }

    public final String getDataEncryptionInfo() {
        return this.dataEncryptionInfo;
    }

    public final long getDataSize() {
        return this.dataSize;
    }

    public final long getDateBackup() {
        return this.dateBackup;
    }

    public final String getDateBackupString() {
        return this.dateBackupString;
    }

    public final String getDateBackupUpdatedString() {
        return this.dateBackupUpdatedString;
    }

    public final Long getDateUpdated() {
        return this.dateUpdated;
    }

    public final long getExpansionSize() {
        return this.expansionSize;
    }

    public final String getExtDataEncryptionInfo() {
        return this.extDataEncryptionInfo;
    }

    public final long getExtDataSize() {
        return this.extDataSize;
    }

    public final String getMediaEncryptionInfo() {
        return this.mediaEncryptionInfo;
    }

    public final long getMediaSize() {
        return this.mediaSize;
    }

    public final LocalMetadata getMetadata() {
        return this.metadata;
    }

    public final long getSharedLibsSize() {
        return this.sharedLibsSize;
    }

    public final long getSplitsApkSize() {
        return this.splitsApkSize;
    }

    public final long getTotalApkSize() {
        return this.apkSize + this.splitsApkSize + this.sharedLibsSize;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final boolean hasApk() {
        return this.apkSize > 0;
    }

    public final boolean hasBackups() {
        List listA0 = fl1.A0(Boolean.valueOf(hasApk()), Boolean.valueOf(hasData()), Boolean.valueOf(hasExtData()), Boolean.valueOf(hasMedia()), Boolean.valueOf(hasExpansion()));
        if (listA0.isEmpty()) {
            return false;
        }
        Iterator it = listA0.iterator();
        while (it.hasNext()) {
            if (((Boolean) it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasData() {
        return this.dataSize > 0;
    }

    public final boolean hasExpansion() {
        return this.expansionSize > 0;
    }

    public final boolean hasExtData() {
        return this.extDataSize != 0;
    }

    public final boolean hasMedia() {
        return this.mediaSize != 0;
    }

    public final boolean hasSharedLibs() {
        return this.sharedLibsSize > 0;
    }

    public final boolean hasSplitApks() {
        return this.splitsApkSize > 0;
    }

    public int hashCode() {
        return this.backup.hashCode();
    }

    public final boolean isDataEncrypted() {
        return this.isDataEncrypted;
    }

    public final boolean isExtDataEncrypted() {
        return this.isExtDataEncrypted;
    }

    public final boolean isMediaEncrypted() {
        return this.isMediaEncrypted;
    }

    public final void setApkSize(long j) {
        this.apkSize = j;
    }

    public final void setBackupId(String str) {
        str.getClass();
        this.backupId = str;
    }

    public final void setBackupTag(String str) {
        this.backupTag = str;
    }

    public final void setBackupVersion(String str) {
        this.backupVersion = str;
    }

    public final void setBackupVersionCode(long j) {
        this.backupVersionCode = j;
    }

    public final void setDataEncrypted(boolean z) {
        this.isDataEncrypted = z;
    }

    public final void setDataEncryptionInfo(String str) {
        this.dataEncryptionInfo = str;
    }

    public final void setDataSize(long j) {
        this.dataSize = j;
    }

    public final void setDateBackup(long j) {
        this.dateBackup = j;
    }

    public final void setDateBackupString(String str) {
        this.dateBackupString = str;
    }

    public final void setDateBackupUpdatedString(String str) {
        this.dateBackupUpdatedString = str;
    }

    public final void setDateUpdated(Long l) {
        this.dateUpdated = l;
    }

    public final void setExpansionSize(long j) {
        this.expansionSize = j;
    }

    public final void setExtDataEncrypted(boolean z) {
        this.isExtDataEncrypted = z;
    }

    public final void setExtDataEncryptionInfo(String str) {
        this.extDataEncryptionInfo = str;
    }

    public final void setExtDataSize(long j) {
        this.extDataSize = j;
    }

    public final void setMediaEncrypted(boolean z) {
        this.isMediaEncrypted = z;
    }

    public final void setMediaEncryptionInfo(String str) {
        this.mediaEncryptionInfo = str;
    }

    public final void setMediaSize(long j) {
        this.mediaSize = j;
    }

    public final void setMetadata(LocalMetadata localMetadata) {
        this.metadata = localMetadata;
    }

    public final void setSharedLibsSize(long j) {
        this.sharedLibsSize = j;
    }

    public final void setSplitsApkSize(long j) {
        this.splitsApkSize = j;
    }

    public final void setTotalSize(long j) {
        this.totalSize = j;
    }

    public String toString() {
        return "LocalAppBackupInfo(backup=" + this.backup + ")";
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final iz4 init(gm gmVar) {
            gmVar.getClass();
            iz4 iz4Var = new iz4(gmVar);
            LocalMetadata localMetadata = gmVar.b;
            iz4Var.setMetadata(localMetadata);
            hk hkVar = gmVar.a;
            if (hkVar.E()) {
                iz4Var.setBackupId(hkVar.a);
                Long dateBackup = localMetadata.getDateBackup();
                long jLongValue = dateBackup != null ? dateBackup.longValue() : hkVar.l();
                iz4Var.setDateBackup(jLongValue);
                iz4Var.setDateBackupString(Const.s(jLongValue));
                Long dateBackupUpdated = localMetadata.getDateBackupUpdated();
                iz4Var.setDateUpdated(dateBackupUpdated);
                iz4Var.setDateBackupUpdatedString(dateBackupUpdated != null ? Const.s(dateBackupUpdated.longValue()) : null);
                iz4Var.setBackupTag((String) hkVar.H.getValue());
                q63 q63VarC = hkVar.c();
                if (q63VarC.j()) {
                    iz4Var.setApkSize(p93.a.f(q63VarC.v()));
                    rg rgVarA = ng.a(q63VarC, false);
                    iz4Var.setBackupVersion(rgVarA.d());
                    iz4Var.setBackupVersionCode(rgVarA.c());
                }
                q63 q63VarC2 = hkVar.C();
                if (q63VarC2.j()) {
                    iz4Var.setSplitsApkSize(p93.a.f(q63VarC2.v()));
                }
                q63 q63VarZ = hkVar.z();
                if (q63VarZ.j()) {
                    iz4Var.setSharedLibsSize(p93.a.f(q63VarZ.v()));
                }
                q63 q63VarG = hkVar.g();
                if (q63VarG.j()) {
                    iz4Var.setDataSize(p93.a.f(q63VarG.v()));
                    i40 i40VarC = Packer.c(q63VarG);
                    if (i40VarC != null) {
                        iz4Var.setDataEncrypted(i40VarC.c);
                        String dataEncryptionMethod = i40VarC.d;
                        if (dataEncryptionMethod == null) {
                            dataEncryptionMethod = localMetadata.getDataEncryptionMethod();
                        }
                        iz4Var.setDataEncryptionInfo(dataEncryptionMethod);
                    }
                }
                q63 q63VarN = hkVar.n();
                if (q63VarN.j()) {
                    iz4Var.setExtDataSize(p93.a.f(q63VarN.v()));
                    i40 i40VarC2 = Packer.c(q63VarN);
                    if (i40VarC2 != null) {
                        iz4Var.setExtDataEncrypted(i40VarC2.c);
                        String extDataEncryptionMethod = i40VarC2.d;
                        if (extDataEncryptionMethod == null) {
                            extDataEncryptionMethod = localMetadata.getExtDataEncryptionMethod();
                        }
                        iz4Var.setExtDataEncryptionInfo(extDataEncryptionMethod);
                    }
                }
                q63 q63VarQ = hkVar.q();
                if (q63VarQ.j()) {
                    iz4Var.setMediaSize(p93.a.f(q63VarQ.v()));
                    i40 i40VarC3 = Packer.c(q63VarQ);
                    if (i40VarC3 != null) {
                        iz4Var.setMediaEncrypted(i40VarC3.c);
                        String mediaEncryptionMethod = i40VarC3.d;
                        if (mediaEncryptionMethod == null) {
                            mediaEncryptionMethod = localMetadata.getMediaEncryptionMethod();
                        }
                        iz4Var.setMediaEncryptionInfo(mediaEncryptionMethod);
                    }
                }
                q63 q63VarM = hkVar.m();
                if (q63VarM.j()) {
                    iz4Var.setExpansionSize(p93.a.f(q63VarM.v()));
                }
                iz4Var.setTotalSize(iz4Var.getExpansionSize() + iz4Var.getMediaSize() + iz4Var.getExtDataSize() + iz4Var.getDataSize() + iz4Var.getSharedLibsSize() + iz4Var.getSplitsApkSize() + iz4Var.getApkSize());
            }
            return iz4Var;
        }

        private a() {
        }
    }
}
