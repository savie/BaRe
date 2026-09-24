package defpackage;

import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class iu8 extends qo0 {
    public final gv7 e = new gv7(new zj(this));
    public final gv7 f = new gv7(new pr4(this, 14));
    public final ex6 g = new ex6();
    public final ex6 h = new ex6();
    public final ex6 i = new ex6();
    public final ix6 j = new ix6();
    public final ex6 k = new ex6();
    public boolean l;

    public iu8() {
        hx0.b.i(this);
        us8 us8VarJ = j();
        yi5 yi5Var = new yi5(this, 11);
        us8VarJ.getClass();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.setPriority(999);
        Const.S(us8VarJ.c);
        ts8 ts8Var = new ts8(yi5Var);
        us8VarJ.c = ts8Var;
        Const.C(ts8Var, intentFilter);
        if (!k().isWifiEnabled()) {
            l();
        }
        zn4 zn4Var = zn4.a;
        zn4.b(null, new hu8(this, null));
        zn4.b(null, new uv(this, null, 2));
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        Const.S(j().c);
        super.b();
    }

    public final us8 j() {
        return (us8) this.f.getValue();
    }

    public final WifiManager k() {
        return (WifiManager) this.e.getValue();
    }

    public final void l() {
        zn4 zn4Var = zn4.a;
        zn4.b(null, new k41(this, null, 4));
    }

    @qr7(threadMode = ThreadMode.BACKGROUND)
    public final void onWifiBackupEvent(wr8 wr8Var) {
        wr8Var.getClass();
        vr8 vr8Var = wr8Var.a;
        jv1 jv1Var = null;
        if (vr8Var == vr8.LOCAL || vr8Var == vr8.ALL) {
            zn4 zn4Var = zn4.a;
            zn4.b(null, new hu8(this, null));
        }
        if (vr8Var == vr8.CLOUD || vr8Var == vr8.ALL) {
            zn4 zn4Var2 = zn4.a;
            zn4.b(null, new uv(this, jv1Var, 2));
        }
    }
}
