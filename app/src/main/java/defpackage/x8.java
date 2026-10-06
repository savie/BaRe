package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x8 extends WeakReference {
    public final jo4 a;
    public final boolean b;
    public ll6 c;

    public x8(jo4 jo4Var, fx2 fx2Var, ReferenceQueue referenceQueue) {
        super(fx2Var, referenceQueue);
        ms8.j(jo4Var, "Argument must not be null");
        this.a = jo4Var;
        boolean z = fx2Var.a;
        this.c = null;
        this.b = z;
    }
}
