package defpackage;

import java.util.ArrayList;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.appconfigs.data.Config;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n30 extends et {
    public boolean g;
    public k30 h;
    public ArrayList i;
    public final ex6 j = new ex6();
    public final ex6 k = new ex6();
    public final ix6 l = new ix6();

    public final void k(ArrayList arrayList, ty7 ty7Var) {
        Config config;
        rw6 rw6Var = new rw6(c40.class, new l30(0, arrayList, ty7Var));
        k30 k30Var = this.h;
        if (k30Var == null || (config = k30Var.b) == null) {
            return;
        }
        rw6Var.d = ey7.a(config, false);
        this.l.i(rw6Var);
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onAppTaskComplete(d40 d40Var) {
        d40Var.getClass();
        d();
    }
}
