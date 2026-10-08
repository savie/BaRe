package defpackage;

import java.io.Serializable;
import java.util.Queue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dz2 implements l15, Serializable {
    public String a;
    public as7 b;
    public Queue c;

    @Override // defpackage.l15
    public final void B(Object obj, Object obj2, String str) {
        F(5, str, obj, obj2);
    }

    @Override // defpackage.l15
    public final void C(Object obj, Object obj2, String str) {
        F(2, str, obj, obj2);
    }

    @Override // defpackage.l15
    public final void D(Object obj, String str) {
        H(4, new Object[]{obj});
    }

    @Override // defpackage.l15
    public final void E(Object... objArr) {
        G(3, "Successfully authenticated {} on {}, session is {}", objArr);
    }

    public final void F(int i, String str, Object obj, Object obj2) {
        if (obj2 instanceof Throwable) {
            H(i, new Object[]{obj});
        } else {
            H(i, new Object[]{obj, obj2});
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0010  */
    public final void G(int i, String str, Object[] objArr) {
        Throwable th;
        if (objArr.length == 0) {
            th = null;
        } else {
            Object obj = objArr[objArr.length - 1];
            if (obj instanceof Throwable) {
                th = (Throwable) obj;
            } else {
                th = null;
            }
        }
        if (th == null) {
            H(i, objArr);
            return;
        }
        if (objArr.length == 0) {
            l0.e("non-sensical empty or null argument array");
            return;
        }
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        if (length > 0) {
            System.arraycopy(objArr, 0, objArr2, 0, length);
        }
        H(i, objArr2);
    }

    public final void H(int i, Object[] objArr) {
        cs7 cs7Var = new cs7();
        System.currentTimeMillis();
        cs7Var.a = i;
        cs7Var.b = this.b;
        Thread.currentThread().getName();
        cs7Var.c = objArr;
        this.c.add(cs7Var);
    }

    @Override // defpackage.l15
    public final void a(Object obj, String str) {
        H(3, new Object[]{obj});
    }

    @Override // defpackage.l15
    public final boolean b() {
        return true;
    }

    @Override // defpackage.l15
    public final boolean c() {
        return true;
    }

    @Override // defpackage.l15
    public final void d(String str) {
        H(1, null);
    }

    @Override // defpackage.l15
    public final void e(Object obj, Object obj2, String str) {
        F(1, str, obj, obj2);
    }

    @Override // defpackage.l15
    public final void f(String str, Throwable th) {
        H(1, null);
    }

    @Override // defpackage.l15
    public final void g(Object obj, String str) {
        H(5, new Object[]{obj});
    }

    @Override // defpackage.l15
    public final String getName() {
        return this.a;
    }

    @Override // defpackage.l15
    public final boolean h() {
        return true;
    }

    @Override // defpackage.l15
    public final void i(Object obj, String str) {
        H(2, new Object[]{obj});
    }

    @Override // defpackage.l15
    public final boolean j() {
        return true;
    }

    @Override // defpackage.l15
    public final void k(String str) {
        H(4, null);
    }

    @Override // defpackage.l15
    public final boolean l() {
        return true;
    }

    @Override // defpackage.l15
    public final void m(Object obj, Object obj2, String str) {
        F(4, str, obj, obj2);
    }

    @Override // defpackage.l15
    public final void n(Object... objArr) {
        G(2, "{} close failed for {},{},{}", objArr);
    }

    @Override // defpackage.l15
    public final void o(String str, Object... objArr) {
        G(4, str, objArr);
    }

    @Override // defpackage.l15
    public final void p(String str, Throwable th) {
        H(3, null);
    }

    @Override // defpackage.l15
    public final void q(Object... objArr) {
        G(1, "Signatures for packet {} do not match (received: {}, calculated: {})", objArr);
    }

    @Override // defpackage.l15
    public final void r(String str, Throwable th) {
        H(2, null);
    }

    @Override // defpackage.l15
    public final void s(String str, Throwable th) {
        H(5, null);
    }

    @Override // defpackage.l15
    public final void t(Object obj, String str) {
        H(1, new Object[]{obj});
    }

    @Override // defpackage.l15
    public final void v(String str, Throwable th) {
        H(4, null);
    }

    @Override // defpackage.l15
    public final void w(String str) {
        H(3, null);
    }

    @Override // defpackage.l15
    public final void x(String str) {
        H(2, null);
    }

    @Override // defpackage.l15
    public final void y(Object obj, Object obj2, String str) {
        F(3, str, obj, obj2);
    }

    @Override // defpackage.l15
    public final void z(String str) {
        H(5, null);
    }
}
