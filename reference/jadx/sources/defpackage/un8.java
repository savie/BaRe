package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class un8 {
    public final int a;
    public final int b;
    public final int c;
    public final f1 d;

    public un8(f1 f1Var) {
        if (f1Var == null) {
            f6.n("treeDigest == null");
            throw null;
        }
        this.d = f1Var;
        hl2 hl2VarA = ll2.a(f1Var);
        String strF = hl2VarA.f();
        int iC = strF.equals("SHAKE128") ? 32 : strF.equals("SHAKE256") ? 64 : hl2VarA.c();
        this.a = iC;
        int i = 16;
        this.b = 16;
        double d = iC * 8;
        int i2 = 0;
        int i3 = 16;
        int i4 = 0;
        while (true) {
            i3 >>= 1;
            if (i3 == 0) {
                break;
            } else {
                i4++;
            }
        }
        int iCeil = (int) Math.ceil(d / ((double) i4));
        int i5 = 15 * iCeil;
        int i6 = 0;
        while (true) {
            i5 >>= 1;
            if (i5 == 0) {
                break;
            } else {
                i6++;
            }
        }
        while (true) {
            i >>= 1;
            if (i == 0) {
                break;
            } else {
                i2++;
            }
        }
        int iFloor = ((int) Math.floor(i6 / i2)) + 1 + iCeil;
        this.c = iFloor;
        String strF2 = hl2VarA.f();
        if (strF2 == null) {
            Map map = tn8.b;
            f6.n("algorithmName == null");
            throw null;
        }
        if (((tn8) tn8.b.get(tn8.a(iC, iFloor, strF2))) != null) {
            return;
        }
        b6.e(hl2VarA.f(), "cannot find OID for digest algorithm: ");
        throw null;
    }
}
