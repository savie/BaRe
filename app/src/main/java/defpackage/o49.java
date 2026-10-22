package defpackage;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o49 implements ae4 {
    public final FirebaseApp a;
    public final ga6 b;
    public final ga6 c;
    public final Executor d;
    public final Executor e;
    public final Executor f;
    public final ScheduledExecutorService g;
    public final Executor h;
    public final ConcurrentHashMap i = new ConcurrentHashMap();

    public o49(FirebaseApp firebaseApp, ga6 ga6Var, ga6 ga6Var2, Executor executor, Executor executor2, Executor executor3, ScheduledExecutorService scheduledExecutorService, Executor executor4) {
        this.a = firebaseApp;
        this.b = ga6Var;
        this.c = ga6Var2;
        this.d = executor;
        this.e = executor2;
        this.f = executor3;
        this.g = scheduledExecutorService;
        this.h = executor4;
    }

    public static o49 d(FirebaseApp firebaseApp) {
        return (o49) firebaseApp.get(o49.class);
    }

    @Override // defpackage.ae4
    public final void a(ob obVar) {
        e().a(obVar);
    }

    @Override // defpackage.ae4
    public final Task b(boolean z) {
        return e().b(z);
    }

    public final synchronized FirebaseAuth c() {
        if (this.i.containsKey("default")) {
            FirebaseAuth firebaseAuth = (FirebaseAuth) this.i.get("default");
            if (firebaseAuth != null) {
                return firebaseAuth;
            }
            this.i.remove("default");
        }
        if (!this.i.isEmpty()) {
            throw new IllegalStateException("FirebaseAuth instance has already been instantiated with different configuration.");
        }
        b49 b49Var = new b49(this.a, this.b, this.e, this.f, this.g, this.h);
        this.i.put("default", b49Var);
        return b49Var;
    }

    public final FirebaseAuth e() {
        ConcurrentHashMap concurrentHashMap = this.i;
        if (!concurrentHashMap.isEmpty()) {
            return (FirebaseAuth) concurrentHashMap.values().iterator().next();
        }
        Log.i("FirebaseAuthComponent", "getAuth() called before any FirebaseAuth instance was initialized.");
        Log.i("FirebaseAuthComponent", "Creating a default instance to use.");
        return c();
    }
}
