package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c79 {
    public static final boolean b = q89.d;
    public jq6 a;

    public static int n(int i, t69 t69Var) {
        int iT = t(i << 3);
        int iD = t69Var.d();
        return u48.h(iD, iD, iT);
    }

    public static int r(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static int s(int i) {
        return t(i << 3);
    }

    public static int t(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public abstract void a(byte b2);

    public abstract void b(int i);

    public abstract void c(int i, int i2);

    public abstract void d(int i, long j);

    public abstract void e(int i, String str);

    public abstract void f(int i, t69 t69Var);

    public abstract void g(int i, boolean z);

    public abstract void h(long j);

    public abstract void i(byte[] bArr, int i, int i2);

    public abstract void j(int i);

    public abstract void k(int i, int i2);

    public abstract void l(int i, long j);

    public abstract void m(long j);

    public abstract void o(int i);

    public abstract void p(int i, int i2);

    public abstract void q(int i, int i2);
}
