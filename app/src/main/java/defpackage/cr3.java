package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cr3 extends o9 {
    public final /* synthetic */ AtomicReference a;

    public cr3(AtomicReference atomicReference) {
        this.a = atomicReference;
    }

    @Override // defpackage.o9
    public final void a(Object obj) {
        o9 o9Var = (o9) this.a.get();
        if (o9Var != null) {
            o9Var.a(obj);
        } else {
            l0.e("Operation cannot be started before fragment is in created state");
        }
    }

    @Override // defpackage.o9
    public final void b() {
        o9 o9Var = (o9) this.a.getAndSet(null);
        if (o9Var != null) {
            o9Var.b();
        }
    }
}
