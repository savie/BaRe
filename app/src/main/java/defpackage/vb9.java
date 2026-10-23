package defpackage;

import android.app.Application;
import android.content.Context;
import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vb9 {
    public volatile int a;
    public final y89 b;
    public volatile boolean c;

    public vb9(FirebaseApp firebaseApp) {
        Context applicationContext = firebaseApp.getApplicationContext();
        y89 y89Var = new y89(firebaseApp);
        this.c = false;
        this.a = 0;
        this.b = y89Var;
        ck0.b((Application) applicationContext.getApplicationContext());
        ck0.e.a(new rb9(this));
    }
}
