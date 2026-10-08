package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class co7 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        Log.w("StorageEventListener", "onReceive: External memory unmounted/ejected. intent=" + intent);
        if (intent != null) {
            eo7 eo7Var = eo7.a;
            eo7.c.k(Boolean.TRUE);
            zn7.q.d();
        }
    }
}
