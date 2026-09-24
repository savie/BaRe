package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ym6 implements rb6 {
    public final Set a;
    public final rb6 b;

    public ym6(Set set, rb6 rb6Var) {
        this.a = set;
        this.b = rb6Var;
    }

    @Override // defpackage.rb6
    public final void a(gy2 gy2Var) {
        if (this.a.contains(ma2.class)) {
            this.b.a(gy2Var);
        } else {
            e6.f(gy2Var, ".", "Attempting to publish an undeclared event ");
        }
    }
}
