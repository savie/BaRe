package defpackage;

import android.app.PendingIntent;
import android.content.Intent;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zx7 {
    public static PendingIntent a() {
        SwiftApp.Companion companion = SwiftApp.d;
        Intent intentAddFlags = new Intent(SwiftApp.Companion.c(), (Class<?>) TaskActivity.class).setAction("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setFlags(270532608).addFlags(536870912);
        intentAddFlags.getClass();
        PendingIntent activity = PendingIntent.getActivity(SwiftApp.Companion.c(), 0, intentAddFlags, 201326592);
        activity.getClass();
        return activity;
    }
}
