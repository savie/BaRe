package defpackage;

import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yg5 extends f62 {
    @Override // defpackage.f62
    public final void c(Object obj, Object obj2) {
        zg5 zg5Var = (zg5) obj;
        zg5Var.getClass();
        ArrayDeque arrayDeque = zg5.b;
        synchronized (arrayDeque) {
            arrayDeque.offer(zg5Var);
        }
    }
}
