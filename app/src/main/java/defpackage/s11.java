package defpackage;

import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class s11 extends b11 {
    public final ex6 f = new ex6();
    public final ex6 g = new ex6();

    public s11() {
        hx0.b.i(this);
        zn4 zn4Var = zn4.a;
        jv1 jv1Var = null;
        zn4.b(null, new r11(this, jv1Var, 0));
        zn4.b(null, new z2(this, jv1Var, 2));
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onCallEvent(qz0 qz0Var) {
        qz0Var.getClass();
        zn4 zn4Var = zn4.a;
        jv1 jv1Var = null;
        zn4.b(null, new r11(this, jv1Var, 0));
        if (qz0Var.a == pz0.LOCAL_AND_CLOUD) {
            zn4.b(null, new z2(this, jv1Var, 2));
        }
    }
}
