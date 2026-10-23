package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cn7 extends tn7 implements iv1 {
    public static final cn7 c = new cn7(float[].class);

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        if (bk4VarK == null) {
            return this;
        }
        int iOrdinal = bk4VarK.b.ordinal();
        return (iOrdinal == 7 || iOrdinal == 10) ? gn7.e : this;
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((float[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        float[] fArr = (float[]) obj;
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(fArr, mm4.VALUE_EMBEDDED_OBJECT));
        e(fArr, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    @Override // defpackage.em4
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final void e(float[] fArr, fk4 fk4Var, c87 c87Var) {
        int length = fArr.length << 2;
        byte[] bArr = new byte[length];
        int i = 0;
        for (float f : fArr) {
            int iFloatToIntBits = Float.floatToIntBits(f);
            bArr[i] = (byte) (iFloatToIntBits >> 24);
            bArr[i + 1] = (byte) (iFloatToIntBits >> 16);
            int i2 = i + 3;
            bArr[i + 2] = (byte) (iFloatToIntBits >> 8);
            i += 4;
            bArr[i2] = (byte) iFloatToIntBits;
        }
        fk4Var.j(c87Var.a.b.k, bArr, 0, length);
    }
}
