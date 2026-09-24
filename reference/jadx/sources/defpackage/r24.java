package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r24 extends rx1 implements qg2 {
    public final Handler c;
    public final boolean d;
    public final r24 e;

    public r24(Handler handler, boolean z) {
        this.c = handler;
        this.d = z;
        this.e = z ? this : new r24(handler, true);
    }

    @Override // defpackage.qg2
    public final in2 b(long j, final h48 h48Var, ox1 ox1Var) {
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.c.postDelayed(h48Var, j)) {
            return new in2() { // from class: p24
                @Override // defpackage.in2
                public final void dispose() {
                    this.a.c.removeCallbacks(h48Var);
                }
            };
        }
        q(ox1Var, h48Var);
        return ao5.a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof r24)) {
            return false;
        }
        r24 r24Var = (r24) obj;
        return r24Var.c == this.c && r24Var.d == this.d;
    }

    @Override // defpackage.qg2
    public final void g(long j, o21 o21Var) {
        ln lnVar = new ln(4, o21Var, this);
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.c.postDelayed(lnVar, j)) {
            o21Var.w(new q24(0, this, lnVar));
        } else {
            q(o21Var.e, lnVar);
        }
    }

    public final int hashCode() {
        return (this.d ? 1231 : 1237) ^ System.identityHashCode(this.c);
    }

    @Override // defpackage.rx1
    public final void j(ox1 ox1Var, Runnable runnable) {
        if (this.c.post(runnable)) {
            return;
        }
        q(ox1Var, runnable);
    }

    @Override // defpackage.rx1
    public final boolean m(ox1 ox1Var) {
        return (this.d && pe4.d(Looper.myLooper(), this.c.getLooper())) ? false : true;
    }

    public final void q(ox1 ox1Var, Runnable runnable) {
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        oh4 oh4Var = (oh4) ox1Var.get(nh4.b);
        if (oh4Var != null) {
            oh4Var.cancel(cancellationException);
        }
        rf2 rf2Var = cn2.a;
        se2.c.j(ox1Var, runnable);
    }

    @Override // defpackage.rx1
    public final String toString() {
        r24 r24Var;
        String str;
        rf2 rf2Var = cn2.a;
        r24 r24Var2 = i55.a;
        if (this == r24Var2) {
            str = "Dispatchers.Main";
        } else {
            try {
                r24Var = r24Var2.e;
            } catch (UnsupportedOperationException unused) {
                r24Var = null;
            }
            str = this == r24Var ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.c.toString();
        return this.d ? eq3.j(string, ".immediate") : string;
    }
}
