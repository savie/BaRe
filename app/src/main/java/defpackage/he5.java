package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class he5 extends me5 {
    public final ex6 f = new ex6();
    public boolean g;

    public he5() {
        hx0.b.i(this);
    }

    @Override // defpackage.me5
    public final void j(List list, boolean z) {
        zn4 zn4Var = zn4.a;
        zn4.b(null, new x72(this, list, z, (jv1) null));
    }

    @qr7(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onMessagesBundleEvent(ge5 ge5Var) {
        ge5Var.getClass();
        Log.d(this.b, "[" + ge5Var + "]");
        this.f.k(new fe5(ge5Var.a, false));
        this.g = ge5Var.b;
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onMessagesEvent(af5 af5Var) {
        af5Var.getClass();
        Log.d(this.b, "event:" + af5Var);
        this.f.k(new fe5(new ArrayList(), true));
        zn4 zn4Var = zn4.a;
        zn4.b(null, new mj(this, null, 2));
    }
}
