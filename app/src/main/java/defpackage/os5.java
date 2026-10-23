package defpackage;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class os5 implements OnBackAnimationCallback {
    public final /* synthetic */ ps5 a;

    public os5(ps5 ps5Var) {
        this.a = ps5Var;
    }

    public final void onBackCancelled() {
        ps5 ps5Var = this.a;
        f41 f41Var = ps5Var.a;
        if (f41Var == null) {
            l0.e("This input is not added to any dispatcher.");
            return;
        }
        if (!ps5Var.b) {
            f41Var.d(ps5Var, null);
        }
        sl5 sl5Var = (sl5) f41Var.b;
        sl5Var.getClass();
        if (ps5Var.equals(sl5Var.h) && -1 == sl5Var.g) {
            rs5 rs5VarC = sl5Var.f;
            if (rs5VarC == null) {
                rs5VarC = sl5Var.c(-1);
            }
            sl5Var.f = null;
            sl5Var.g = 0;
            sl5Var.h = null;
            if (rs5VarC != null) {
                rs5VarC.f.handleOnBackCancelled();
            }
            km7 km7Var = sl5Var.a;
            tl5 tl5Var = tl5.g;
            km7Var.getClass();
            km7Var.e(null, tl5Var);
        }
        ps5Var.b = false;
    }

    public final void onBackInvoked() {
        this.a.a();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        backEvent.getClass();
        pl5 pl5VarA = k6.a(backEvent);
        ps5 ps5Var = this.a;
        f41 f41Var = ps5Var.a;
        if (f41Var == null) {
            l0.e("This input is not added to any dispatcher.");
            return;
        }
        if (ps5Var.b) {
            sl5 sl5Var = (sl5) f41Var.b;
            sl5Var.getClass();
            if (ps5Var.equals(sl5Var.h) && -1 == sl5Var.g) {
                rs5 rs5VarC = sl5Var.f;
                if (rs5VarC == null) {
                    rs5VarC = sl5Var.c(-1);
                }
                if (rs5VarC != null) {
                    rs5VarC.f.handleOnBackProgressed(new xj0(pl5VarA));
                }
                km7 km7Var = sl5Var.a;
                ul5 ul5Var = new ul5(pl5VarA);
                km7Var.getClass();
                km7Var.e(null, ul5Var);
            }
        }
    }

    public final void onBackStarted(BackEvent backEvent) {
        backEvent.getClass();
        pl5 pl5VarA = k6.a(backEvent);
        ps5 ps5Var = this.a;
        f41 f41Var = ps5Var.a;
        if (f41Var == null) {
            l0.e("This input is not added to any dispatcher.");
        } else {
            if (ps5Var.b) {
                return;
            }
            f41Var.d(ps5Var, pl5VarA);
            ps5Var.b = true;
        }
    }
}
