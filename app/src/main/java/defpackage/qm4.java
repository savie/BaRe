package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qm4 extends nn4 {
    public static final pm4 J = new pm4();
    public static final kl4 K = new kl4("closed");
    public final ArrayList G;
    public String H;
    public qj4 I;

    public qm4() {
        super(J);
        this.G = new ArrayList();
        this.I = el4.a;
    }

    @Override // defpackage.nn4
    public final void D(double d) {
        if (this.n != 1 && (Double.isNaN(d) || Double.isInfinite(d))) {
            d6.g("JSON forbids NaN and infinities: ", d);
        } else {
            b0(new kl4(Double.valueOf(d)));
        }
    }

    @Override // defpackage.nn4
    public final void G(long j) {
        b0(new kl4(Long.valueOf(j)));
    }

    @Override // defpackage.nn4
    public final void J(Boolean bool) {
        if (bool == null) {
            b0(el4.a);
        } else {
            b0(new kl4(bool));
        }
    }

    @Override // defpackage.nn4
    public final void O(Number number) {
        if (number == null) {
            b0(el4.a);
            return;
        }
        if (this.n != 1) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                g84.k(number, "JSON forbids NaN and infinities: ");
                return;
            }
        }
        b0(new kl4(number));
    }

    @Override // defpackage.nn4
    public final void S(String str) {
        if (str == null) {
            b0(el4.a);
        } else {
            b0(new kl4(str));
        }
    }

    @Override // defpackage.nn4
    public final void U(boolean z) {
        b0(new kl4(Boolean.valueOf(z)));
    }

    public final qj4 Y() {
        ArrayList arrayList = this.G;
        if (arrayList.isEmpty()) {
            return this.I;
        }
        y5.g(arrayList, "Expected one JSON element but was ");
        return null;
    }

    public final qj4 Z() {
        return (qj4) dj7.e(this.G, 1);
    }

    @Override // defpackage.nn4
    public final void b() {
        xi4 xi4Var = new xi4();
        b0(xi4Var);
        this.G.add(xi4Var);
    }

    public final void b0(qj4 qj4Var) {
        if (this.H != null) {
            if (!(qj4Var instanceof el4) || this.r) {
                ((fl4) Z()).p(this.H, qj4Var);
            }
            this.H = null;
            return;
        }
        if (this.G.isEmpty()) {
            this.I = qj4Var;
            return;
        }
        qj4 qj4VarZ = Z();
        if (qj4VarZ instanceof xi4) {
            ((xi4) qj4VarZ).p(qj4Var);
        } else {
            g84.c();
        }
    }

    @Override // defpackage.nn4, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ArrayList arrayList = this.G;
        if (arrayList.isEmpty()) {
            arrayList.add(K);
        } else {
            y5.m("Incomplete document");
        }
    }

    @Override // defpackage.nn4
    public final void g() {
        fl4 fl4Var = new fl4();
        b0(fl4Var);
        this.G.add(fl4Var);
    }

    @Override // defpackage.nn4
    public final void j() {
        ArrayList arrayList = this.G;
        if (arrayList.isEmpty() || this.H != null) {
            g84.c();
        } else if (Z() instanceof xi4) {
            arrayList.remove(arrayList.size() - 1);
        } else {
            g84.c();
        }
    }

    @Override // defpackage.nn4
    public final void m() {
        ArrayList arrayList = this.G;
        if (arrayList.isEmpty() || this.H != null) {
            g84.c();
        } else if (Z() instanceof fl4) {
            arrayList.remove(arrayList.size() - 1);
        } else {
            g84.c();
        }
    }

    @Override // defpackage.nn4
    public final void n(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.G.isEmpty() || this.H != null) {
            l0.e("Did not expect a name");
        } else if (Z() instanceof fl4) {
            this.H = str;
        } else {
            l0.e("Please begin an object before writing a name.");
        }
    }

    @Override // defpackage.nn4
    public final nn4 r() {
        b0(el4.a);
        return this;
    }

    @Override // defpackage.nn4, java.io.Flushable
    public final void flush() {
    }
}
