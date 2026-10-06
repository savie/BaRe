package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ka2 {
    public final SharedPreferences a;
    public final FirebaseApp b;
    public final Object c;
    public TaskCompletionSource d;
    public boolean e;
    public boolean f;
    public Boolean g;
    public final TaskCompletionSource h;

    public ka2(FirebaseApp firebaseApp) {
        Boolean boolValueOf;
        Object obj = new Object();
        this.c = obj;
        this.d = new TaskCompletionSource();
        this.e = false;
        this.f = false;
        this.h = new TaskCompletionSource();
        Context applicationContext = firebaseApp.getApplicationContext();
        this.b = firebaseApp;
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.crashlytics", 0);
        this.a = sharedPreferences;
        if (sharedPreferences.contains("firebase_crashlytics_collection_enabled")) {
            this.f = false;
            boolValueOf = Boolean.valueOf(sharedPreferences.getBoolean("firebase_crashlytics_collection_enabled", true));
        } else {
            boolValueOf = null;
        }
        this.g = boolValueOf == null ? a(applicationContext) : boolValueOf;
        synchronized (obj) {
            try {
                if (b()) {
                    this.d.trySetResult(null);
                    this.e = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Boolean a(Context context) {
        Boolean boolValueOf;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            boolValueOf = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) ? null : Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("FirebaseCrashlytics", "Could not read data collection permission from manifest", e);
        }
        if (boolValueOf == null) {
            this.f = false;
            return null;
        }
        this.f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(boolValueOf));
    }

    public final synchronized boolean b() {
        boolean zIsDataCollectionDefaultEnabled;
        String str;
        Boolean bool = this.g;
        if (bool != null) {
            zIsDataCollectionDefaultEnabled = bool.booleanValue();
        } else {
            try {
                zIsDataCollectionDefaultEnabled = this.b.isDataCollectionDefaultEnabled();
            } catch (IllegalStateException unused) {
                zIsDataCollectionDefaultEnabled = false;
            }
        }
        String str2 = zIsDataCollectionDefaultEnabled ? "ENABLED" : "DISABLED";
        if (this.g == null) {
            str = "global Firebase setting";
        } else {
            str = this.f ? "firebase_crashlytics_collection_enabled manifest flag" : "API";
        }
        String strL = eq3.l("Crashlytics automatic data collection ", str2, " by ", str, ".");
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", strL, null);
        }
        return zIsDataCollectionDefaultEnabled;
    }
}
