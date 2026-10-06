package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b39 implements me {
    public static final b39 c;
    public final boolean a;
    public final String b;

    static {
        ib ibVar = new ib(15);
        ibVar.b = Boolean.FALSE;
        c = new b39(ibVar);
    }

    public b39(ib ibVar) {
        this.a = ((Boolean) ibVar.b).booleanValue();
        this.b = (String) ibVar.c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b39)) {
            return false;
        }
        b39 b39Var = (b39) obj;
        return x13.m(null, null) && this.a == b39Var.a && x13.m(this.b, b39Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{null, Boolean.valueOf(this.a), this.b});
    }
}
