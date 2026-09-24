package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ix7 {
    public static void c(bs2 bs2Var, yc9 yc9Var, o64 o64Var) {
        ArrayList arrayList = o64Var.f;
        for (o64 o64Var2 : arrayList == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(arrayList)) {
            if (o64Var2.d()) {
                ix7 ix7VarI0 = yc9Var.i0(o64Var2.a);
                if (ix7VarI0 != null) {
                    ix7VarI0.a(bs2Var, yc9Var, o64Var2);
                } else {
                    c(bs2Var, yc9Var, o64Var2);
                }
            }
        }
    }

    public abstract void a(bs2 bs2Var, yc9 yc9Var, q64 q64Var);

    public abstract Collection b();
}
