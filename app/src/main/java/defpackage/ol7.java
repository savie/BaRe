package defpackage;

import java.io.EOFException;
import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ol7 extends qi4 {
    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        long j;
        int iH = bn4Var.k;
        if (iH == 0) {
            iH = bn4Var.h();
        }
        if (iH == 16) {
            bn4Var.k = 0;
            int[] iArr = bn4Var.d;
            int i = bn4Var.a - 1;
            iArr[i] = iArr[i] + 1;
            j = bn4Var.n;
        } else {
            if (iH == 17) {
                nw0 nw0Var = bn4Var.f;
                long j2 = bn4Var.p;
                nw0Var.getClass();
                bn4Var.q = nw0Var.u(j2, f51.a);
            } else if (iH == 9 || iH == 8) {
                String strO = iH == 9 ? bn4Var.O(bn4.t) : bn4Var.O(bn4.r);
                bn4Var.q = strO;
                try {
                    long j3 = Long.parseLong(strO);
                    bn4Var.k = 0;
                    int[] iArr2 = bn4Var.d;
                    int i2 = bn4Var.a - 1;
                    iArr2[i2] = iArr2[i2] + 1;
                    j = j3;
                } catch (NumberFormatException unused) {
                    bn4Var.k = 11;
                    long jLongValueExact = new BigDecimal(bn4Var.q).longValueExact();
                    bn4Var.q = null;
                    bn4Var.k = 0;
                    int[] iArr3 = bn4Var.d;
                    int i3 = bn4Var.a - 1;
                    iArr3[i3] = iArr3[i3] + 1;
                    j = jLongValueExact;
                }
            } else if (iH != 11) {
                q.c(eq3.s(bn4Var.W()), bn4Var.r(), "Expected a long but was ");
                return null;
            }
            bn4Var.k = 11;
            try {
                long jLongValueExact2 = new BigDecimal(bn4Var.q).longValueExact();
                bn4Var.q = null;
                bn4Var.k = 0;
                int[] iArr4 = bn4Var.d;
                int i4 = bn4Var.a - 1;
                iArr4[i4] = iArr4[i4] + 1;
                j = jLongValueExact2;
            } catch (ArithmeticException | NumberFormatException unused2) {
                q.c(bn4Var.q, bn4Var.r(), "Expected a long but was ");
                return null;
            }
        }
        return Long.valueOf(j);
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        dn4Var.v(((Long) obj).longValue());
    }

    public final String toString() {
        return "JsonAdapter(Long)";
    }
}
