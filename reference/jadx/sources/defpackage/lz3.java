package defpackage;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import androidx.fragment.app.u;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lz3 extends mz3 {
    public static final Object c = new Object();
    public static final lz3 d = new lz3();

    public static AlertDialog e(Activity activity, int i, z19 z19Var, DialogInterface.OnCancelListener onCancelListener) {
        String string;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(l19.b(activity, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = activity.getResources();
        if (i == 1) {
            string = resources.getString(org.swiftapps.swiftbackup.R.string.common_google_play_services_install_button);
        } else if (i != 2) {
            string = i != 3 ? resources.getString(R.string.ok) : resources.getString(org.swiftapps.swiftbackup.R.string.common_google_play_services_enable_button);
        } else {
            string = resources.getString(org.swiftapps.swiftbackup.R.string.common_google_play_services_update_button);
        }
        if (string != null) {
            builder.setPositiveButton(string, z19Var);
        }
        String strC = l19.c(activity, i);
        if (strC != null) {
            builder.setTitle(strC);
        }
        Log.w("GoogleApiAvailability", fz5.j(i, "Creating dialog for Google Play services availability issue. ConnectionResult="), new IllegalArgumentException());
        return builder.create();
    }

    public static void f(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof u) {
                ur3 supportFragmentManager = ((u) activity).getSupportFragmentManager();
                hs7 hs7Var = new hs7();
                ly8.i(alertDialog, "Cannot display null dialog");
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                hs7Var.I = alertDialog;
                if (onCancelListener != null) {
                    hs7Var.J = onCancelListener;
                }
                hs7Var.k(supportFragmentManager, str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        yx2 yx2Var = new yx2();
        ly8.i(alertDialog, "Cannot display null dialog");
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        yx2Var.a = alertDialog;
        if (onCancelListener != null) {
            yx2Var.b = onCancelListener;
        }
        yx2Var.show(fragmentManager, str);
    }

    @Override // defpackage.mz3
    public final int b(Context context) {
        return c(context, mz3.a);
    }

    public final void d(GoogleApiActivity googleApiActivity, int i, GoogleApiActivity googleApiActivity2) {
        AlertDialog alertDialogE = e(googleApiActivity, i, new s19(super.a(i, googleApiActivity, "d"), googleApiActivity), googleApiActivity2);
        if (alertDialogE == null) {
            return;
        }
        f(googleApiActivity, alertDialogE, "GooglePlayServicesErrorDialog", googleApiActivity2);
    }

    public final void g(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        Log.w("GoogleApiAvailability", xs1.h(i, "GMS core API Availability. ConnectionResult=", ", tag=null"), new IllegalArgumentException());
        if (i == 18) {
            new u19(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strE = i == 6 ? l19.e(context, "common_google_play_services_resolution_required_title") : l19.c(context, i);
        if (strE == null) {
            strE = context.getResources().getString(org.swiftapps.swiftbackup.R.string.common_google_play_services_notification_ticker);
        }
        String strD = (i == 6 || i == 19) ? l19.d(context, "common_google_play_services_resolution_required_text", l19.a(context)) : l19.b(context, i);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        ly8.h(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        wo5 wo5Var = new wo5(context, null);
        wo5Var.p = true;
        wo5Var.c(16);
        wo5Var.e = wo5.b(strE);
        c00 c00Var = new c00(8, false);
        c00Var.c = wo5.b(strD);
        wo5Var.e(c00Var);
        PackageManager packageManager = context.getPackageManager();
        if (rs9.p == null) {
            rs9.p = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (rs9.p.booleanValue()) {
            wo5Var.u.icon = context.getApplicationInfo().icon;
            wo5Var.i = 2;
            if (rs9.o(context)) {
                wo5Var.b.add(new vo5(org.swiftapps.swiftbackup.R.drawable.common_full_open_on_phone, resources.getString(org.swiftapps.swiftbackup.R.string.common_open_on_phone), pendingIntent));
            } else {
                wo5Var.g = pendingIntent;
            }
        } else {
            wo5Var.u.icon = R.drawable.stat_sys_warning;
            wo5Var.u.tickerText = wo5.b(resources.getString(org.swiftapps.swiftbackup.R.string.common_google_play_services_notification_ticker));
            wo5Var.u.when = System.currentTimeMillis();
            wo5Var.g = pendingIntent;
            wo5Var.f = wo5.b(strD);
        }
        synchronized (c) {
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
        String string = context.getResources().getString(org.swiftapps.swiftbackup.R.string.common_google_play_services_notification_channel_name);
        if (notificationChannel == null) {
            notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
        } else if (!string.contentEquals(notificationChannel.getName())) {
            notificationChannel.setName(string);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        wo5Var.s = "com.google.android.gms.availability";
        Notification notificationA = wo5Var.a();
        if (i == 1 || i == 2 || i == 3) {
            u04.a.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        notificationManager.notify(i2, notificationA);
    }

    public final void h(Activity activity, bu4 bu4Var, int i, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogE = e(activity, i, new x19(super.a(i, activity, "d"), bu4Var), onCancelListener);
        if (alertDialogE == null) {
            return;
        }
        f(activity, alertDialogE, "GooglePlayServicesErrorDialog", onCancelListener);
    }
}
