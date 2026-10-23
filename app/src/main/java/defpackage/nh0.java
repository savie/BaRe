package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class nh0 implements Serializable, Cloneable {
    public qx8 a;
    public final int b;
    public int c;
    public int d;
    public boolean e = false;
    public boolean f = false;

    public nh0(int i) {
        this.b = i;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final nh0 clone() {
        nh0 nh0Var = new nh0(this.b);
        nh0Var.a = this.a;
        nh0Var.c = this.c;
        nh0Var.d = this.d;
        nh0Var.e = this.e;
        nh0Var.f = this.f;
        return nh0Var;
    }

    public final int b() {
        if (!this.e || this.f) {
            return Integer.MAX_VALUE;
        }
        return this.c;
    }
}
