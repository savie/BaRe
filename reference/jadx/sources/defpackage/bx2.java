package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bx2 {
    public final fh7 a;
    public final Executor b;

    public bx2(fh7 fh7Var, Executor executor) {
        this.a = fh7Var;
        this.b = executor;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof bx2) && this.a == ((bx2) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
