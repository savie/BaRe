package defpackage;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ut7 implements Runnable {
    public final View a;
    public final boolean b;
    public final /* synthetic */ SwipeDismissBehavior c;

    public ut7(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z) {
        this.c = swipeDismissBehavior;
        this.a = view;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jq6 jq6Var;
        SwipeDismissBehavior swipeDismissBehavior = this.c;
        gl8 gl8Var = swipeDismissBehavior.a;
        View view = this.a;
        if (gl8Var != null && gl8Var.g()) {
            view.postOnAnimation(this);
        } else {
            if (!this.b || (jq6Var = swipeDismissBehavior.b) == null) {
                return;
            }
            jq6Var.u(view);
        }
    }
}
