package org.swiftapps.swiftbackup.jobs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.o37;
import defpackage.pe4;
import defpackage.vr6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BootReceiver extends BroadcastReceiver {
    public final String a = "BootReceiver";

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        if (pe4.d(intent.getAction(), "android.intent.action.BOOT_COMPLETED")) {
            AlarmReceiver alarmReceiver = new AlarmReceiver();
            if (!o37.b()) {
                alarmReceiver.a();
            } else {
                alarmReceiver.c();
                vr6.i$default(vr6.INSTANCE, this.a, "Schedule enabled after device boot", null, 4, null);
            }
        }
    }
}
