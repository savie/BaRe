package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h19 {
    public final df a;
    public final y53 b;

    public /* synthetic */ h19(df dfVar, y53 y53Var) {
        this.a = dfVar;
        this.b = y53Var;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof h19)) {
            return false;
        }
        h19 h19Var = (h19) obj;
        return x13.m(this.a, h19Var.a) && x13.m(this.b, h19Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public final String toString() {
        ib ibVar = new ib(this);
        ibVar.b(this.a, "key");
        ibVar.b(this.b, "feature");
        return ibVar.toString();
    }
}
