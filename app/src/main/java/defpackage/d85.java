package defpackage;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d85 implements OnBackAnimationCallback {
    public final /* synthetic */ a85 a;
    public final /* synthetic */ e85 b;

    public d85(e85 e85Var, a85 a85Var) {
        this.b = e85Var;
        this.a = a85Var;
    }

    public final void onBackCancelled() {
        if (this.b.a != null) {
            this.a.d();
        }
    }

    public final void onBackInvoked() {
        this.a.a();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        if (this.b.a != null) {
            this.a.b(new xj0(backEvent));
        }
    }

    public final void onBackStarted(BackEvent backEvent) {
        if (this.b.a != null) {
            this.a.c(new xj0(backEvent));
        }
    }
}
