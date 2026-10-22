package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q98 implements f77 {
    public final f77 a;
    public final mt3 b;

    public q98(f77 f77Var, mt3 mt3Var) {
        this.a = f77Var;
        this.b = mt3Var;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return new p98(this);
    }
}
