package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u66 extends AtomicReference {
    public final Object a;
    public u66 b;
    public u66 c;

    public u66(Object obj, z66 z66Var) {
        super(z66Var);
        this.a = obj;
    }

    public final Object a() {
        return ((z66) get()).b;
    }
}
