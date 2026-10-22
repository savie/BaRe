package defpackage;

import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class il7 extends qi4 {
    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        int iH = bn4Var.k;
        if (iH == 0) {
            iH = bn4Var.h();
        }
        boolean z = false;
        if (iH == 5) {
            bn4Var.k = 0;
            int[] iArr = bn4Var.d;
            int i = bn4Var.a - 1;
            iArr[i] = iArr[i] + 1;
            z = true;
        } else {
            if (iH != 6) {
                q.c(eq3.s(bn4Var.W()), bn4Var.r(), "Expected a boolean but was ");
                return null;
            }
            bn4Var.k = 0;
            int[] iArr2 = bn4Var.d;
            int i2 = bn4Var.a - 1;
            iArr2[i2] = iArr2[i2] + 1;
        }
        return Boolean.valueOf(z);
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        if (dn4Var.e) {
            l0.e("Boolean cannot be used as a map key in JSON at path ".concat(dn4Var.j()));
            return;
        }
        dn4Var.A();
        dn4Var.a();
        dn4Var.k.Z(zBooleanValue ? "true" : "false");
        int[] iArr = dn4Var.d;
        int i = dn4Var.a - 1;
        iArr[i] = iArr[i] + 1;
    }

    public final String toString() {
        return "JsonAdapter(Boolean)";
    }
}
