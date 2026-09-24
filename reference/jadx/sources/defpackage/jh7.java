package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jh7 extends ConnectivityManager.NetworkCallback {
    public final /* synthetic */ kh7 a;

    public jh7(kh7 kh7Var) {
        this.a = kh7Var;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        xh8.q().post(new ih7(this, true));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        xh8.q().post(new ih7(this, false));
    }
}
