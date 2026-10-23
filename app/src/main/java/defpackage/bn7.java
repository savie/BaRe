package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bn7 extends tn7 implements iv1 {
    public static final bn7 c = new bn7(double[].class);

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        if (bk4VarK == null) {
            return this;
        }
        int iOrdinal = bk4VarK.b.ordinal();
        return (iOrdinal == 7 || iOrdinal == 10) ? fn7.e : this;
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((double[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        double[] dArr = (double[]) obj;
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(dArr, mm4.VALUE_EMBEDDED_OBJECT));
        e(dArr, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    @Override // defpackage.em4
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final void e(double[] dArr, fk4 fk4Var, c87 c87Var) {
        int length = dArr.length << 3;
        byte[] bArr = new byte[length];
        int i = 0;
        for (double d : dArr) {
            long jDoubleToLongBits = Double.doubleToLongBits(d);
            int i2 = (int) (jDoubleToLongBits >> 32);
            bArr[i] = (byte) (i2 >> 24);
            bArr[i + 1] = (byte) (i2 >> 16);
            bArr[i + 2] = (byte) (i2 >> 8);
            bArr[i + 3] = (byte) i2;
            int i3 = (int) jDoubleToLongBits;
            bArr[i + 4] = (byte) (i3 >> 24);
            bArr[i + 5] = (byte) (i3 >> 16);
            bArr[i + 6] = (byte) (i3 >> 8);
            bArr[i + 7] = (byte) i3;
            i += 8;
        }
        fk4Var.j(c87Var.a.b.k, bArr, 0, length);
    }
}
