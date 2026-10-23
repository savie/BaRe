package defpackage;

import org.swiftapps.swiftbackup.model.app.AppCloudBackup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wh extends k55 {
    public final ji k;
    public final AppCloudBackup n;

    public wh(ji jiVar, AppCloudBackup appCloudBackup) {
        appCloudBackup.getClass();
        this.k = jiVar;
        this.n = appCloudBackup;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wh)) {
            return false;
        }
        wh whVar = (wh) obj;
        return this.k.equals(whVar.k) && pe4.d(this.n, whVar.n);
    }

    public final int hashCode() {
        return this.n.hashCode() + (this.k.hashCode() * 31);
    }

    public final String toString() {
        return "CloudBackup(app=" + this.k + ", backup=" + this.n + ")";
    }
}
