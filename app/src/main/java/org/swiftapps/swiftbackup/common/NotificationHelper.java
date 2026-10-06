package org.swiftapps.swiftbackup.common;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import defpackage.ai8;
import defpackage.b67;
import defpackage.gv7;
import defpackage.h05;
import defpackage.i6;
import defpackage.nq7;
import defpackage.q9;
import defpackage.sz8;
import defpackage.wo5;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NotificationHelper {
    public static final gv7 a = new gv7(new q9(10));

    public static String a(int i, Locale locale) {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = sz8.u(SwiftApp.Companion.c(), locale).getString(i);
        string.getClass();
        return string;
    }

    public static Uri b() {
        SwiftApp.Companion companion = SwiftApp.d;
        Uri uri = Uri.parse("android.resource://" + SwiftApp.Companion.c().getPackageName() + "/" + R.raw.task_complete_sound_error);
        uri.getClass();
        return uri;
    }

    public static int c() {
        if (b67.d()) {
            return 0;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        return SwiftApp.Companion.c().getColor(R.color.acnt);
    }

    public static NotificationManager d() {
        Object value = a.getValue();
        value.getClass();
        return (NotificationManager) value;
    }

    public static Uri e() {
        SwiftApp.Companion companion = SwiftApp.d;
        Uri uri = Uri.parse("android.resource://" + SwiftApp.Companion.c().getPackageName() + "/" + R.raw.task_complete_sound_success);
        uri.getClass();
        return uri;
    }

    public static Locale f() {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        h05 h05VarA = h05.b;
        if (Build.VERSION.SDK_INT >= 33) {
            Object systemService = contextC.getSystemService("locale");
            if (systemService != null) {
                h05VarA = h05.c(i6.h(systemService));
            }
        } else {
            h05VarA = h05.a(Resources.getSystem().getConfiguration().getLocales().toLanguageTags());
        }
        Locale localeB = h05VarA.b(0);
        if (localeB != null) {
            return localeB;
        }
        Locale locale = Locale.ENGLISH;
        locale.getClass();
        return locale;
    }

    public static void g(wo5 wo5Var, boolean z) {
        Uri uriB = z ? b() : e();
        Notification notification = wo5Var.u;
        notification.sound = uriB;
        notification.audioStreamType = -1;
        notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
    }

    public static final void n(String str, String str2) {
        str.getClass();
        str2.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        wo5 wo5Var = new wo5(SwiftApp.Companion.c(), "crash_error_channel");
        wo5Var.r = c();
        wo5Var.u.icon = R.drawable.ic_stat;
        wo5Var.e = wo5.b(str);
        wo5Var.f = wo5.b(str2);
        wo5Var.c(8);
        wo5Var.c(16);
        String string = nq7.H0(nq7.z0(str2, "https://", "")).toString();
        if (string.length() > 0 && !nq7.j0(string)) {
            Intent intentE = ai8.e(SwiftApp.Companion.c(), "https://".concat(string));
            ai8.k(SwiftApp.Companion.c(), "https://".concat(string));
            wo5Var.g = PendingIntent.getActivity(SwiftApp.Companion.c(), 0, intentE, b67.d() ? 67108864 : 0);
        }
        d().notify(911, wo5Var.a());
    }
}
