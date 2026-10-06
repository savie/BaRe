package androidx.fragment.app;

import android.view.View;
import defpackage.c6;
import defpackage.fz5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public final h0 a;

    public f(h0 h0Var) {
        h0Var.getClass();
        this.a = h0Var;
    }

    public final boolean a() {
        int i;
        h0 h0Var = this.a;
        View view = h0Var.c.mView;
        if (view != null) {
            i = 4;
            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                int visibility = view.getVisibility();
                if (visibility == 0) {
                    i = 2;
                } else if (visibility != 4) {
                    if (visibility != 8) {
                        c6.f(fz5.j(visibility, "Unknown visibility "));
                        return false;
                    }
                    i = 3;
                }
            }
        } else {
            i = 0;
        }
        int i2 = h0Var.a;
        if (i != i2) {
            return (i == 2 || i2 == 2) ? false : true;
        }
        return true;
    }
}
