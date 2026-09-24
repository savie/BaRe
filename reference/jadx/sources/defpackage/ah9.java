package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ah9 extends se9 {
    public final ef9 a;

    public ah9(ef9 ef9Var) {
        this.a = ef9Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.a != ef9.n;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ah9) && ((ah9) obj).a == this.a;
    }

    public final int hashCode() {
        return Objects.hash(ah9.class, this.a);
    }

    public final String toString() {
        return eq3.k("ChaCha20Poly1305 Parameters (variant: ", String.valueOf(this.a), ")");
    }
}
