package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g35 {
    public final Object a;
    public final Throwable b;

    public g35(Object obj) {
        this.a = obj;
        this.b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g35)) {
            return false;
        }
        g35 g35Var = (g35) obj;
        Object obj2 = this.a;
        if (obj2 != null && obj2.equals(g35Var.a)) {
            return true;
        }
        Throwable th = this.b;
        if (th == null || g35Var.b == null) {
            return false;
        }
        return th.toString().equals(th.toString());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public g35(Throwable th) {
        this.b = th;
        this.a = null;
    }
}
