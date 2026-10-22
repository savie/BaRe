package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wp4 implements Serializable {
    public final transient b76 a;

    public wp4(int i, int i2) {
        m66 m66Var = new m66();
        m66Var.c = -1L;
        m66Var.b = 16;
        m66Var.a = 16;
        boolean z = i >= 0;
        int i3 = b76.G;
        if (!z) {
            c6.b();
            throw null;
        }
        m66Var.b = i;
        long j = i2;
        if (j < 0) {
            c6.b();
            throw null;
        }
        m66Var.c = j;
        m66Var.a = 4;
        if (j >= 0) {
            this.a = new b76(m66Var);
        } else {
            g84.c();
            throw null;
        }
    }
}
