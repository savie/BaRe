package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i43 {
    public final h43 a;
    public final int b;

    public i43(h43 h43Var, int i) {
        Objects.requireNonNull(h43Var, "strategy");
        this.a = h43Var;
        this.b = i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StrategyAndWidth [strategy=");
        sb.append(this.a);
        sb.append(", width=");
        return xs1.m(sb, this.b, "]");
    }
}
