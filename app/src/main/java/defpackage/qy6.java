package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qy6 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;

    public qy6(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
        this.h = j8;
        this.i = j9;
        this.j = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qy6)) {
            return false;
        }
        qy6 qy6Var = (qy6) obj;
        return this.a == qy6Var.a && this.b == qy6Var.b && this.c == qy6Var.c && this.d == qy6Var.d && this.e == qy6Var.e && this.f == qy6Var.f && this.g == qy6Var.g && this.h == qy6Var.h && this.i == qy6Var.i && this.j == qy6Var.j;
    }

    public final int hashCode() {
        return Long.hashCode(this.j) + xs1.f(this.i, xs1.f(this.h, xs1.f(this.g, xs1.f(this.f, xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, xs1.f(this.b, Long.hashCode(this.a) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbT = dj7.t("SbaCreateDiagnostics(fileSize=", ", indexOffset=", this.a);
        sbT.append(this.b);
        fz5.r(sbT, ", indexSize=", this.c, ", nativeHeaderMillis=");
        sbT.append(this.d);
        fz5.r(sbT, ", nativePayloadMillis=", this.e, ", nativeProducerMillis=");
        sbT.append(this.f);
        fz5.r(sbT, ", nativeEncryptionMillis=", this.g, ", nativeIndexFooterMillis=");
        sbT.append(this.h);
        fz5.r(sbT, ", nativeTotalMillis=", this.i, ", cryptoSetupMillis=");
        return dj7.h(this.j, ")", sbT);
    }
}
