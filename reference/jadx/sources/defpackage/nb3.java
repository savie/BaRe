package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nb3 implements ob3 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final String e;
    public final byte[] f;
    public final long g;
    public final long h;
    public final long i;
    public final String j;
    public final String k;
    public final int l;
    public final String m;
    public final String n;

    public nb3(String str, String str2, String str3, long j, String str4, byte[] bArr, long j2, long j3, long j4, String str5, String str6, int i, String str7, String str8) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = str4;
        this.f = bArr;
        this.g = j2;
        this.h = j3;
        this.i = j4;
        this.j = str5;
        this.k = str6;
        this.l = i;
        this.m = str7;
        this.n = str8;
    }

    @Override // defpackage.ob3
    public final String a() {
        return this.a;
    }

    @Override // defpackage.ob3
    public final String b() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nb3)) {
            return false;
        }
        nb3 nb3Var = (nb3) obj;
        return pe4.d(this.a, nb3Var.a) && pe4.d(this.b, nb3Var.b) && pe4.d(this.c, nb3Var.c) && this.d == nb3Var.d && pe4.d(this.e, nb3Var.e) && this.f.equals(nb3Var.f) && this.g == nb3Var.g && this.h == nb3Var.h && this.i == nb3Var.i && pe4.d(this.j, nb3Var.j) && pe4.d(this.k, nb3Var.k) && this.l == nb3Var.l && this.m.equals(nb3Var.m) && this.n.equals(nb3Var.n);
    }

    @Override // defpackage.ob3
    public final String getName() {
        return this.b;
    }

    public final int hashCode() {
        return this.n.hashCode() + fz5.g(eq3.d(this.l, fz5.g(fz5.g(xs1.f(this.i, xs1.f(this.h, xs1.f(this.g, (Arrays.hashCode(this.f) + fz5.g(xs1.f(this.d, fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31), 31, this.e)) * 31, 31), 31), 31), 31, this.j), 31, this.k), 31), 31, this.m);
    }

    public final String toString() {
        String string = Arrays.toString(this.f);
        StringBuilder sbP = u48.p("FilenRemoteFile(uuid=", this.a, ", name=", this.b, ", parentUuid=");
        sbP.append(this.c);
        sbP.append(", size=");
        sbP.append(this.d);
        xs1.t(sbP, ", mimeType=", this.e, ", key=", string);
        fz5.r(sbP, ", created=", this.g, ", lastModified=");
        sbP.append(this.h);
        fz5.r(sbP, ", chunks=", this.i, ", bucket=");
        xs1.t(sbP, this.j, ", region=", this.k, ", version=");
        sbP.append(this.l);
        sbP.append(", blake3=");
        sbP.append(this.m);
        sbP.append(", sha512=");
        return dj7.n(sbP, this.n, ")");
    }
}
