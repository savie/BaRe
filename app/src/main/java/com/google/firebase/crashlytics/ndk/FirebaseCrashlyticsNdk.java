package com.google.firebase.crashlytics.ndk;

import android.util.Log;
import defpackage.az1;
import defpackage.ez1;
import defpackage.f6;
import defpackage.t02;
import defpackage.tk5;
import defpackage.vm7;
import defpackage.yf1;
import defpackage.z28;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class FirebaseCrashlyticsNdk implements az1 {
    public static FirebaseCrashlyticsNdk e;
    public final t02 a;
    public boolean b;
    public String c;
    public b d;

    public FirebaseCrashlyticsNdk(t02 t02Var, boolean z) {
        this.a = t02Var;
        this.b = z;
    }

    public static FirebaseCrashlyticsNdk getInstance() {
        FirebaseCrashlyticsNdk firebaseCrashlyticsNdk = e;
        if (firebaseCrashlyticsNdk != null) {
            return firebaseCrashlyticsNdk;
        }
        f6.n("FirebaseCrashlyticsNdk component is not present.");
        return null;
    }

    @Override // defpackage.az1
    public tk5 getSessionFileProvider(String str) {
        return new z28(this.a.b(str), 16);
    }

    @Override // defpackage.az1
    public boolean hasCrashDataForCurrentSession() {
        String str = this.c;
        return str != null && hasCrashDataForSession(str);
    }

    @Override // defpackage.az1
    public boolean hasCrashDataForSession(String str) {
        yf1 yf1Var = (yf1) this.a.b(str).a;
        if (yf1Var == null) {
            return false;
        }
        File file = (File) yf1Var.b;
        return (file != null && file.exists()) || ((ez1) yf1Var.c) != null;
    }

    public synchronized void installSignalHandler() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a();
            return;
        }
        if (this.b) {
            Log.w("FirebaseCrashlytics", "Native signal handler already installed; skipping re-install.", null);
        } else {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Deferring signal handler installation until the FirebaseCrashlyticsNdk session has been prepared", null);
            }
            this.b = true;
        }
    }

    @Override // defpackage.az1
    public synchronized void prepareNativeSession(String str, String str2, long j, vm7 vm7Var) throws Throwable {
        try {
            try {
                this.c = str;
                b bVar = new b(this, str, str2, j, vm7Var);
                this.d = bVar;
                if (this.b) {
                    bVar.a();
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }
}
