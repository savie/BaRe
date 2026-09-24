package defpackage;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yg3 {
    public final FirebaseApp a;
    public final l97 b;

    public yg3(FirebaseApp firebaseApp, l97 l97Var, ox1 ox1Var, j97 j97Var) {
        firebaseApp.getClass();
        l97Var.getClass();
        ox1Var.getClass();
        j97Var.getClass();
        this.a = firebaseApp;
        this.b = l97Var;
        Log.d("FirebaseSessions", "Initializing Firebase Sessions 3.0.6.");
        Context applicationContext = firebaseApp.getApplicationContext().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(j97Var);
            l73.v(l73.c(ox1Var), null, new xg3(this, j97Var, null), 3);
        } else {
            Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
        }
    }
}
