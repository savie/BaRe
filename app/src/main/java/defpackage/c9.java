package defpackage;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c9 implements Runnable {
    public final /* synthetic */ int a = 0;
    public final Object b;
    public final /* synthetic */ Object c;

    public c9(y89 y89Var, String str) {
        this.c = y89Var;
        ly8.e(str);
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                try {
                    Method method = e9.d;
                    Object obj2 = this.c;
                    if (method != null) {
                        method.invoke(obj, obj2, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        e9.e.invoke(obj, obj2, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e) {
                    if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                        throw e;
                    }
                    return;
                } catch (Throwable th) {
                    Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                    return;
                }
            default:
                FirebaseApp firebaseApp = FirebaseApp.getInstance((String) obj);
                o49.d(firebaseApp).getClass();
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(firebaseApp);
                if (firebaseAuth.c() != null) {
                    Task taskB = firebaseAuth.b(true);
                    y89.f.f("Token refreshing started", new Object[0]);
                    taskB.addOnFailureListener(new s79(this, 12));
                    return;
                }
                return;
        }
    }

    public c9(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }
}
