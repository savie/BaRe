package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p5 extends WeakReference {
    public final int a;

    public p5(tp7 tp7Var, ReferenceQueue referenceQueue) {
        super(tp7Var, referenceQueue);
        this.a = System.identityHashCode(tp7Var);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof p5) {
            return ((p5) obj).get() == get();
        }
        return obj.equals(this);
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        return String.valueOf(get());
    }
}
