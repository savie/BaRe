package org.swiftapps.swiftbackup.common;

import android.app.NotificationChannel;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.pe4;
import defpackage.pw5;
import defpackage.x65;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LocaleChangedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        if (pe4.d(intent.getAction(), "android.intent.action.LOCALE_CHANGED")) {
            Locale localeF = NotificationHelper.f();
            for (Map.Entry entry : x65.r0(new pw5("backup_restore_channel", Integer.valueOf(R.string.backup_and_restore)), new pw5("normal_channel", Integer.valueOf(R.string.normal)), new pw5("task_completion_channel_success", Integer.valueOf(R.string.task_successful)), new pw5("task_completion_channel_error", Integer.valueOf(R.string.task_error)), new pw5("task_completion_channel_silent", Integer.valueOf(R.string.task_complete_no_sound))).entrySet()) {
                String str = (String) entry.getKey();
                int iIntValue = ((Number) entry.getValue()).intValue();
                NotificationChannel notificationChannel = NotificationHelper.d().getNotificationChannel(str);
                if (notificationChannel != null) {
                    notificationChannel.setName(NotificationHelper.a(iIntValue, localeF));
                    NotificationHelper.d().createNotificationChannel(notificationChannel);
                }
            }
        }
    }
}
