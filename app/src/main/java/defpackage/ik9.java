package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ik9 extends se9 {
    public final sg9 a;

    public ik9(sg9 sg9Var) {
        this.a = sg9Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.a != sg9.h;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ik9) && ((ik9) obj).a == this.a;
    }

    public final int hashCode() {
        return Objects.hash(ik9.class, this.a);
    }

    public final String toString() {
        return eq3.k("XChaCha20Poly1305 Parameters (variant: ", String.valueOf(this.a), ")");
    }
}
