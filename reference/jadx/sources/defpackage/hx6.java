package defpackage;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hx6 implements os4, Serializable {
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(hx6.class, Object.class, "b");
    public volatile bt3 a;
    public volatile Object b;

    @Override // defpackage.os4
    public final Object getValue() {
        Object obj = this.b;
        sl4 sl4Var = sl4.e;
        if (obj != sl4Var) {
            return obj;
        }
        bt3 bt3Var = this.a;
        if (bt3Var != null) {
            Object objInvoke = bt3Var.invoke();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, sl4Var, objInvoke)) {
                if (atomicReferenceFieldUpdater.get(this) != sl4Var) {
                }
            }
            this.a = null;
            return objInvoke;
        }
        return this.b;
    }

    public final String toString() {
        return this.b != sl4.e ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
