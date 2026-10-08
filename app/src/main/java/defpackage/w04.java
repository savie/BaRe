package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w04 extends kz3 {
    public static int k = 1;

    public final synchronized int c() {
        int i;
        try {
            i = k;
            if (i == 1) {
                Context context = this.a;
                lz3 lz3Var = lz3.d;
                int iC = lz3Var.c(context, 12451000);
                if (iC == 0) {
                    i = 4;
                    k = 4;
                } else if (lz3Var.a(iC, context, null) != null || xr2.a(context) == 0) {
                    i = 2;
                    k = 2;
                } else {
                    i = 3;
                    k = 3;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return i;
    }
}
