package defpackage;

import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ye5 extends me5 {
    public final ex6 f = new ex6();
    public final ex6 g = new ex6();

    public ye5() {
        hx0.b.i(this);
        zn4 zn4Var = zn4.a;
        jv1 jv1Var = null;
        zn4.b(null, new zz(this, jv1Var, 1));
        zn4.b(null, new qj(this, jv1Var, 2));
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onMessagesEvent(af5 af5Var) {
        af5Var.getClass();
        zn4 zn4Var = zn4.a;
        jv1 jv1Var = null;
        zn4.b(null, new zz(this, jv1Var, 1));
        if (af5Var.a == ze5.LOCAL_AND_CLOUD) {
            zn4.b(null, new qj(this, jv1Var, 2));
        }
    }
}
