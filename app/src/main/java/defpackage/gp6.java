package defpackage;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gp6 extends qp6 {
    public static final oo6 b = new oo6();
    private static final String c = "RootAidlService";

    public gp6() {
        super(null);
    }

    @Override // defpackage.qp6
    public IBinder g(Intent intent) {
        intent.getClass();
        Log.i(c, "onBind");
        return new fp6(this);
    }

    @Override // defpackage.qp6
    public void j(Intent intent) {
        intent.getClass();
        Log.i(c, "onRebind, daemon process reused");
    }

    @Override // defpackage.qp6
    public boolean k(Intent intent) {
        intent.getClass();
        Log.i(c, "onUnbind, client process unbound");
        return true;
    }
}
