package defpackage;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xe0 extends sh4 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater r = AtomicReferenceFieldUpdater.newUpdater(xe0.class, Object.class, "_disposer$volatile");
    public static final /* synthetic */ long t = oh6.a.objectFieldOffset(xe0.class.getDeclaredField("_disposer$volatile"));
    private volatile /* synthetic */ Object _disposer$volatile;
    public final o21 n;
    public in2 p;
    public final /* synthetic */ ze0 q;

    public xe0(ze0 ze0Var, o21 o21Var) {
        this.q = ze0Var;
        this.n = o21Var;
    }

    @Override // defpackage.sh4
    public final boolean p() {
        return false;
    }

    @Override // defpackage.sh4
    public final void q(Throwable th) throws xm2 {
        o21 o21Var = this.n;
        if (th != null) {
            du9 du9VarG = o21Var.G(new ln1(th, false), null);
            if (du9VarG != null) {
                o21Var.g(du9VarG);
                ye0 ye0VarR = r();
                if (ye0VarR != null) {
                    ye0VarR.b();
                    return;
                }
                return;
            }
            return;
        }
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = ze0.b;
        ze0 ze0Var = this.q;
        if (atomicIntegerFieldUpdater.decrementAndGet(ze0Var) == 0) {
            jg2[] jg2VarArr = ze0Var.a;
            ArrayList arrayList = new ArrayList(jg2VarArr.length);
            for (jg2 jg2Var : jg2VarArr) {
                arrayList.add(jg2Var.getCompleted());
            }
            o21Var.resumeWith(arrayList);
        }
    }

    public final ye0 r() {
        r.getClass();
        return (ye0) oh6.a.getObjectVolatile(this, t);
    }

    public final void s(ye0 ye0Var) {
        r.getClass();
        oh6.a.putObjectVolatile(this, t, ye0Var);
    }
}
