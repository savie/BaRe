package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ts8 extends BroadcastReceiver {
    public final /* synthetic */ yi5 a;

    public ts8(yi5 yi5Var) {
        this.a = yi5Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        if (intent.getExtras() != null) {
            this.a.invoke();
        }
    }
}
