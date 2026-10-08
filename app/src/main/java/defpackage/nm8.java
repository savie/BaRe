package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nm8 {
    public Interpolator c;
    public om8 d;
    public boolean e;
    public long b = -1;
    public final mm8 f = new mm8(this);
    public final ArrayList a = new ArrayList();

    public final void a() {
        if (this.e) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((lm8) it.next()).b();
            }
            this.e = false;
        }
    }

    public final void b() {
        View view;
        if (this.e) {
            return;
        }
        for (lm8 lm8Var : this.a) {
            long j = this.b;
            if (j >= 0) {
                lm8Var.c(j);
            }
            Interpolator interpolator = this.c;
            if (interpolator != null && (view = (View) lm8Var.a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.d != null) {
                lm8Var.d(this.f);
            }
            View view2 = (View) lm8Var.a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.e = true;
    }
}
