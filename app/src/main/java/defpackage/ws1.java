package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ws1 implements f77 {
    public final AtomicReference a;

    public ws1(f77 f77Var) {
        this.a = new AtomicReference(f77Var);
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        f77 f77Var = (f77) this.a.getAndSet(null);
        if (f77Var != null) {
            return f77Var.iterator();
        }
        l0.e("This sequence can be consumed only once.");
        return null;
    }
}
