package org.swiftapps.swiftbackup.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.cr;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PackageInstallResultReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        if (intent.hasExtra("android.content.pm.extra.STATUS")) {
            cr.c(context, null, intent);
        }
    }
}
