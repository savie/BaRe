package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oe4 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ yt3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ oe4(yt3 yt3Var, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = yt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        yt3 yt3Var = this.c;
        switch (i) {
            case 0:
                oe4 oe4Var = new oe4((fj) yt3Var, jv1Var, 0);
                oe4Var.b = obj;
                return oe4Var;
            default:
                oe4 oe4Var2 = new oe4((qt3) yt3Var, jv1Var, 1);
                oe4Var2.b = obj;
                return oe4Var2;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws Throwable {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((oe4) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
            default:
                return ((oe4) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i;
        int i2 = this.a;
        yt3 yt3Var = this.c;
        jv1 jv1Var = null;
        int i3 = 1;
        switch (i2) {
            case 0:
                xx1 xx1Var = (xx1) this.b;
                lg7.H(obj);
                ox1 ox1VarD = xx1Var.d();
                fj fjVar = (fj) yt3Var;
                try {
                    v28 v28Var = new v28();
                    v28Var.p = sz8.G(sz8.s(ox1VarD), true, v28Var);
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = v28.q;
                    try {
                        do {
                            i = atomicIntegerFieldUpdater.get(v28Var);
                            if (i != 0) {
                                if (i != 2 && i != 3) {
                                    v28.s(i);
                                    throw null;
                                }
                            }
                            fjVar.invoke();
                            return be8.a;
                        } while (!atomicIntegerFieldUpdater.compareAndSet(v28Var, i, 0));
                        fjVar.invoke();
                        return be8.a;
                    } finally {
                        v28Var.r();
                    }
                } catch (InterruptedException e) {
                    throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
                }
            default:
                lg7.H(obj);
                ox1 ox1VarD2 = ((xx1) this.b).d();
                lv1 lv1Var = lv1.b;
                mx1 mx1Var = ox1VarD2.get(lv1Var);
                mx1Var.getClass();
                rx1 rx1Var = (rx1) mx1Var;
                bn1 bn1VarA = ly8.a();
                rq6 rq6Var = new rq6(bn1VarA, (qt3) yt3Var, null);
                ox1 ox1VarI = w13.i(lv2.a, rx1Var, true);
                rf2 rf2Var = cn2.a;
                if (ox1VarI != rf2Var && ox1VarI.get(lv1Var) == null) {
                    ox1VarI = ox1VarI.plus(rf2Var);
                }
                o3 bl7Var = new bl7(ox1VarI, true);
                bl7Var.a0(ay1.c, bl7Var, rq6Var);
                while (!bn1VarA.E()) {
                    try {
                        return l73.B(rx1Var, new ff1(bn1VarA, jv1Var, i3));
                    } catch (InterruptedException unused) {
                    }
                }
                return bn1VarA.t();
        }
    }
}
