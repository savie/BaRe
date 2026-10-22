package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ia7 implements li3, zt3 {
    public final /* synthetic */ AtomicReference a;

    public ia7(AtomicReference atomicReference) {
        this.a = atomicReference;
    }

    @Override // defpackage.zt3
    public final yt3 a() {
        return new v9(2, this.a, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
    }

    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) {
        this.a.set((m87) obj);
        return be8.a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof li3) && (obj instanceof zt3)) {
            return pe4.d(a(), ((zt3) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }
}
