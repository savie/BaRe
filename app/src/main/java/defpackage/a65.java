package defpackage;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a65 {
    public int a;
    public int b;
    public int c;
    public Object d;

    public a65(d65 d65Var) {
        d65Var.getClass();
        this.d = d65Var;
        this.b = -1;
        this.c = d65Var.n;
        f();
    }

    public int a(int i) {
        if (i < this.c) {
            return ((ByteBuffer) this.d).getShort(this.b + i);
        }
        return 0;
    }

    public void b() {
        if (((d65) this.d).n == this.c) {
            return;
        }
        q.a();
    }

    public abstract Object d(View view);

    public abstract void e(View view, Object obj);

    public void f() {
        while (true) {
            int i = this.a;
            d65 d65Var = (d65) this.d;
            if (i >= d65Var.f || d65Var.c[i] >= 0) {
                return;
            } else {
                this.a = i + 1;
            }
        }
    }

    public void g(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.b) {
            e(view, obj);
            return;
        }
        w5 w5Var = null;
        if (Build.VERSION.SDK_INT >= this.b) {
            tag = d(view);
        } else {
            tag = view.getTag(this.a);
            if (!((Class) this.d).isInstance(tag)) {
                tag = null;
            }
        }
        if (h(tag, obj)) {
            View.AccessibilityDelegate accessibilityDelegateD = dl8.d(view);
            if (accessibilityDelegateD != null) {
                w5Var = accessibilityDelegateD instanceof v5 ? ((v5) accessibilityDelegateD).a : new w5(accessibilityDelegateD);
            }
            if (w5Var == null) {
                w5Var = new w5();
            }
            dl8.n(view, w5Var);
            view.setTag(this.a, obj);
            dl8.h(view, this.c);
        }
    }

    public abstract boolean h(Object obj, Object obj2);

    public boolean hasNext() {
        return this.a < ((d65) this.d).f;
    }

    public void remove() {
        d65 d65Var = (d65) this.d;
        b();
        if (this.b == -1) {
            l0.e("Call next() before removing element from the iterator.");
            return;
        }
        d65Var.d();
        d65Var.l(this.b);
        this.b = -1;
        this.c = d65Var.n;
    }

    public a65() {
        if (cz4.p == null) {
            cz4.p = new cz4(21);
        }
    }

    public a65(int i, Class cls, int i2, int i3) {
        this.a = i;
        this.d = cls;
        this.c = i2;
        this.b = i3;
    }
}
