package com.google.firebase.crashlytics.ndk;

import android.util.Log;
import defpackage.je0;
import defpackage.t02;
import defpackage.vm7;
import defpackage.xs1;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b {
    public final /* synthetic */ FirebaseCrashlyticsNdk a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ long d;
    public final /* synthetic */ vm7 e;

    public /* synthetic */ b(FirebaseCrashlyticsNdk firebaseCrashlyticsNdk, String str, String str2, long j, vm7 vm7Var) {
        this.a = firebaseCrashlyticsNdk;
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = vm7Var;
    }

    public final void a() throws Throwable {
        String str = this.c;
        long j = this.d;
        vm7 vm7Var = this.e;
        String str2 = this.b;
        String strJ = xs1.j("Initializing native session: ", str2);
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", strJ, null);
        }
        t02 t02Var = this.a.a;
        try {
            if (((JniNativeApi) t02Var.b).b(t02Var.a.getAssets(), t02Var.c.f(str2).getCanonicalPath())) {
                t02Var.d(str2, str, j);
                t02Var.e(str2, ((je0) vm7Var).a);
                t02Var.h(str2, ((je0) vm7Var).b);
                t02Var.f(str2, ((je0) vm7Var).c);
                return;
            }
        } catch (IOException e) {
            Log.e("FirebaseCrashlytics", "Error initializing Crashlytics NDK", e);
        }
        Log.w("FirebaseCrashlytics", "Failed to initialize Crashlytics NDK for session " + str2, null);
    }
}
