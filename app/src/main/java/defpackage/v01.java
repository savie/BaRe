package defpackage;

import android.util.Log;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v01 extends b11 {
    public final ex6 f = new ex6();
    public boolean g;

    public v01() {
        hx0.b.i(this);
    }

    @Override // defpackage.b11
    public final void j(List list, boolean z) {
        zn4 zn4Var = zn4.a;
        zn4.b(null, new t01(this, list, z, null));
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onCallEvent(qz0 qz0Var) {
        qz0Var.getClass();
        Log.d(this.b, "event:" + qz0Var);
        zn4 zn4Var = zn4.a;
        zn4.b(null, new u01(this, null, 0));
    }

    @qr7(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onCallsBundleEvent(r01 r01Var) {
        r01Var.getClass();
        Log.d(this.b, "[" + r01Var + "]");
        this.f.k(new s01(r01Var.a, false));
        this.g = r01Var.b;
    }
}
