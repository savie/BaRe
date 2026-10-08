package org.swiftapps.swiftbackup.detail;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.gn3;
import defpackage.io4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ShortcutPinnedReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int b = 0;
    public final String a = "SPR";

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        if (intent == null) {
            return;
        }
        io4.j(this.a, null, false, new gn3(3, intent, context, this), 14);
    }
}
