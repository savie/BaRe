package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nb9 {
    public final Context a;
    public final xe9 b;

    public nb9(Context context, xe9 xe9Var) {
        this.a = context;
        this.b = xe9Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nb9)) {
            return false;
        }
        nb9 nb9Var = (nb9) obj;
        return this.a.equals(nb9Var.a) && this.b.equals(nb9Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return eq3.l("FlagsContext{context=", this.a.toString(), ", hermeticFileOverrides=", this.b.toString(), "}");
    }
}
