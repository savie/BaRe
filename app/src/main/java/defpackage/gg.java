package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gg extends ig {
    public final bg a;
    public final zf b;

    public gg(bg bgVar, zf zfVar) {
        bgVar.getClass();
        zfVar.getClass();
        this.a = bgVar;
        this.b = zfVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gg)) {
            return false;
        }
        gg ggVar = (gg) obj;
        return pe4.d(this.a, ggVar.a) && pe4.d(this.b, ggVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ReadyToInstall(packageInfo=" + this.a + ", request=" + this.b + ")";
    }
}
