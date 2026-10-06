package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bi4 extends cu3 implements rt3 {
    public static final bi4 a = new bi4(3, ci4.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        Object objZ;
        ci4 ci4Var = (ci4) obj;
        if (obj2 != null) {
            throw new ClassCastException();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = ci4.a;
        do {
            objZ = ci4Var.z();
            if (!(objZ instanceof fb4)) {
                throw null;
            }
        } while (ci4Var.R(objZ) < 0);
        sz8.G(ci4Var, true, new xh4());
        throw null;
    }
}
