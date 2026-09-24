package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.pcloud.sdk.CustomTabActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b72 extends BroadcastReceiver {
    public final /* synthetic */ CustomTabActivity a;

    public b72(CustomTabActivity customTabActivity) {
        this.a = customTabActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.a.finish();
    }
}
