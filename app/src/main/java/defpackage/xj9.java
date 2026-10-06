package defpackage;

import java.security.GeneralSecurityException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xj9 extends se9 {
    public final rf9 a;
    public final int b;

    public xj9(rf9 rf9Var, int i) {
        this.a = rf9Var;
        this.b = i;
    }

    public static xj9 b(rf9 rf9Var, int i) throws GeneralSecurityException {
        if (i >= 8 && i <= 12) {
            return new xj9(rf9Var, i);
        }
        m0.h("Salt size must be between 8 and 12 bytes");
        return null;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.a != rf9.k;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xj9)) {
            return false;
        }
        xj9 xj9Var = (xj9) obj;
        return xj9Var.a == this.a && xj9Var.b == this.b;
    }

    public final int hashCode() {
        return Objects.hash(xj9.class, this.a, Integer.valueOf(this.b));
    }

    public final String toString() {
        return u48.m("X-AES-GCM Parameters (variant: ", String.valueOf(this.a), "salt_size_bytes: ", this.b, ")");
    }
}
