package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sg {
    public final q63 a;
    public final String b;
    public final long c;

    public sg(long j, q63 q63Var, String str) {
        q63Var.getClass();
        str.getClass();
        this.a = q63Var;
        this.b = str;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sg)) {
            return false;
        }
        sg sgVar = (sg) obj;
        return pe4.d(this.a, sgVar.a) && pe4.d(this.b, sgVar.b) && this.c == sgVar.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + fz5.g(this.a.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ApkInstallFile(file=");
        sb.append(this.a);
        sb.append(", installName=");
        sb.append(this.b);
        sb.append(", progressBytes=");
        return dj7.h(this.c, ")", sb);
    }
}
