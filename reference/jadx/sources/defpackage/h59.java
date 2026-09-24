package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h59 {
    public final int a;
    public final s79 b = new s79(this, 11);
    public FirebaseApp c;
    public p49 d;
    public Object e;
    public b99 f;
    public wc9 g;
    public b69 h;
    public x59 i;
    public d80 j;
    public wc9 k;
    public c69 l;
    public boolean m;

    public h59(int i) {
        new ArrayList();
        this.a = i;
    }

    public abstract String a();

    public final void b(Status status) {
        this.m = true;
        this.g.h(null, status);
    }

    public abstract void c(TaskCompletionSource taskCompletionSource, w49 w49Var);

    public final void d(FirebaseApp firebaseApp) {
        ly8.i(firebaseApp, "firebaseApp cannot be null");
        this.c = firebaseApp;
    }

    public abstract void e();

    public final void f(Object obj) {
        this.m = true;
        this.g.h(obj, null);
    }
}
