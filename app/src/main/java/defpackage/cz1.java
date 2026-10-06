package defpackage;

import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cz1 implements az1 {
    public static final lk c = new lk();
    public final lu5 a;
    public final AtomicReference b = new AtomicReference(null);

    public cz1(lu5 lu5Var) {
        this.a = lu5Var;
        lu5Var.a(new er1(this));
    }

    @Override // defpackage.az1
    public final tk5 getSessionFileProvider(String str) {
        az1 az1Var = (az1) this.b.get();
        return az1Var == null ? c : az1Var.getSessionFileProvider(str);
    }

    @Override // defpackage.az1
    public final boolean hasCrashDataForCurrentSession() {
        az1 az1Var = (az1) this.b.get();
        return az1Var != null && az1Var.hasCrashDataForCurrentSession();
    }

    @Override // defpackage.az1
    public final boolean hasCrashDataForSession(String str) {
        az1 az1Var = (az1) this.b.get();
        return az1Var != null && az1Var.hasCrashDataForSession(str);
    }

    @Override // defpackage.az1
    public final void prepareNativeSession(final String str, String str2, final long j, vm7 vm7Var) {
        String strJ = xs1.j("Deferring native open session: ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", strJ, null);
        }
        final je0 je0Var = (je0) vm7Var;
        this.a.a(new ig2() { // from class: bz1
            @Override // defpackage.ig2
            public final void c(ga6 ga6Var) {
                ((az1) ga6Var.get()).prepareNativeSession(str, "Crashlytics Android SDK/20.0.6", j, je0Var);
            }
        });
    }
}
