package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yh extends k55 {
    public final ji k;
    public final hk n;

    public yh(ji jiVar, hk hkVar) {
        hkVar.getClass();
        this.k = jiVar;
        this.n = hkVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yh)) {
            return false;
        }
        yh yhVar = (yh) obj;
        return this.k.equals(yhVar.k) && pe4.d(this.n, yhVar.n);
    }

    public final int hashCode() {
        return this.n.hashCode() + (this.k.hashCode() * 31);
    }

    public final String toString() {
        return "LocalBackup(app=" + this.k + ", backup=" + this.n + ")";
    }
}
