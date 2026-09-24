package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zo6 {
    public final String a;
    public final long b;
    public final long c;

    public zo6(long j, long j2, String str) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zo6)) {
            return false;
        }
        zo6 zo6Var = (zo6) obj;
        return this.a.equals(zo6Var.a) && this.b == zo6Var.b && this.c == zo6Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + xs1.f(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sbO = u48.o("FileCacheFingerprint(path=", this.a, this.b, ", length=");
        sbO.append(", lastModified=");
        sbO.append(this.c);
        sbO.append(")");
        return sbO.toString();
    }
}
