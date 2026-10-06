package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jz extends kz {
    public final ji b;
    public final List c;
    public final yu d;
    public final boolean e;
    public final boolean f;
    public final hk g;
    public final AppCloudBackup h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jz(ji jiVar, List list, yu yuVar, boolean z, boolean z2, hk hkVar, AppCloudBackup appCloudBackup) {
        super(jiVar);
        jiVar.getClass();
        list.getClass();
        yuVar.getClass();
        this.b = jiVar;
        this.c = list;
        this.d = yuVar;
        this.e = z;
        this.f = z2;
        this.g = hkVar;
        this.h = appCloudBackup;
        if (list.isEmpty()) {
            l0.e("AppParts empty!");
            throw null;
        }
        if (appCloudBackup != null) {
            this.g = new hk(appCloudBackup.getBackupId(), jiVar.getPackageName(), true);
        }
    }

    @Override // defpackage.kz
    public final ji a() {
        return this.b;
    }

    @Override // defpackage.kz
    public final boolean b() {
        return this.h != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jz)) {
            return false;
        }
        jz jzVar = (jz) obj;
        return pe4.d(this.b, jzVar.b) && pe4.d(this.c, jzVar.c) && this.d == jzVar.d && this.e == jzVar.e && this.f == jzVar.f && pe4.d(this.g, jzVar.g) && pe4.d(this.h, jzVar.h);
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + fz5.h(fz5.h((this.d.hashCode() + fz5.i(this.c, this.b.hashCode() * 31, 31)) * 31, 31, this.e), 31, this.f)) * 31;
        AppCloudBackup appCloudBackup = this.h;
        return Boolean.hashCode(false) + ((iHashCode + (appCloudBackup == null ? 0 : appCloudBackup.hashCode())) * 31);
    }

    public final String toString() {
        String str = this.g.a;
        AppCloudBackup appCloudBackup = this.h;
        String backupId = appCloudBackup != null ? appCloudBackup.getBackupId() : null;
        StringBuilder sb = new StringBuilder("Restore(appParts=");
        sb.append(this.c);
        sb.append(", restorePermissionsMode=");
        sb.append(this.d);
        sb.append(", restoreSpecialPermissions=");
        sb.append(this.e);
        sb.append(", restoreSsaid=");
        sb.append(this.f);
        sb.append(", localBackupId=");
        return eq3.o(sb, str, ", cloudBackupId=", backupId, ", isForceRedo=false)");
    }
}
