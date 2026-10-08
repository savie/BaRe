package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gy6 {
    public final int a;
    public final int b;
    public final long c;
    public final cy0 d;
    public final int e;
    public final int f;
    public final wy6 g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final tz6 l;

    public gy6(int i, int i2, long j, cy0 cy0Var, int i3, int i4, wy6 wy6Var, int i5, int i6, int i7, int i8, tz6 tz6Var) {
        wy6Var.getClass();
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = cy0Var;
        this.e = i3;
        this.f = i4;
        this.g = wy6Var;
        this.h = i5;
        this.i = i6;
        this.j = i7;
        this.k = i8;
        this.l = tz6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gy6)) {
            return false;
        }
        gy6 gy6Var = (gy6) obj;
        return this.a == gy6Var.a && this.b == gy6Var.b && this.c == gy6Var.c && this.d.equals(gy6Var.d) && this.e == gy6Var.e && this.f == gy6Var.f && this.g == gy6Var.g && this.h == gy6Var.h && this.i == gy6Var.i && this.j == gy6Var.j && this.k == gy6Var.k && this.l.equals(gy6Var.l);
    }

    public final int hashCode() {
        return this.l.hashCode() + eq3.d(this.k, eq3.d(this.j, eq3.d(this.i, eq3.d(this.h, (this.g.hashCode() + eq3.d(this.f, eq3.d(this.e, (this.d.hashCode() + xs1.f(this.c, eq3.d(this.b, Integer.hashCode(this.a) * 31, 31), 31)) * 31, 31), 31)) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbN = xs1.n("SbaArchiveHeaderInfo(headerSize=", this.a, ", flags=", ", createdAtEpochMs=", this.b);
        sbN.append(this.c);
        sbN.append(", compression=");
        sbN.append(this.d);
        sbN.append(", compressionMethodId=");
        sbN.append(this.e);
        sbN.append(", compressionLevel=");
        sbN.append(this.f);
        sbN.append(", encryption=");
        sbN.append(this.g);
        sbN.append(", encryptionMethodId=");
        sbN.append(this.h);
        sbN.append(", kdfMethodId=");
        sbN.append(this.i);
        sbN.append(", kdfIterations=");
        sbN.append(this.j);
        sbN.append(", payloadChunkSize=");
        sbN.append(this.k);
        sbN.append(", kdf=");
        sbN.append(this.l);
        sbN.append(")");
        return sbN.toString();
    }
}
