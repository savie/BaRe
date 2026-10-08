package defpackage;

import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rs5 {
    public final ts5 a;
    public final ov2 b;
    public final ov2 c;
    public boolean d;
    public f41 e;
    public final ss5 f;
    public boolean g;

    public rs5(ss5 ss5Var, ts5 ts5Var) {
        boolean zIsEnabled = ss5Var.isEnabled();
        this.a = ts5Var;
        ov2 ov2Var = ov2.a;
        this.b = ov2Var;
        this.c = ov2Var;
        this.d = zIsEnabled;
        this.f = ss5Var;
        this.g = true;
    }

    public final void a() {
        f41 f41Var = this.e;
        if (f41Var == null || !((LinkedHashSet) f41Var.c).remove(this)) {
            return;
        }
        sl5 sl5Var = (sl5) f41Var.b;
        sl5Var.getClass();
        if (this == sl5Var.f) {
            if (sl5Var.g == -1) {
                this.f.handleOnBackCancelled();
            }
            sl5Var.f = null;
            sl5Var.g = 0;
            sl5Var.h = null;
        }
        sl5Var.d.remove(this);
        sl5Var.e.remove(this);
        this.e = null;
        sl5Var.b();
    }

    public final void b(boolean z) {
        sl5 sl5Var;
        this.g = z;
        boolean z2 = z && this.f.isEnabled();
        if (this.d == z2) {
            return;
        }
        this.d = z2;
        f41 f41Var = this.e;
        if (f41Var == null || (sl5Var = (sl5) f41Var.b) == null) {
            return;
        }
        sl5Var.b();
    }
}
