package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.fragment.app.o;
import androidx.fragment.app.u;
import com.bumptech.glide.a;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zk6 implements Handler.Callback {
    public static final fo8 e = new fo8(11);
    public volatile yk6 a;
    public final es3 c;
    public final k50 b = new k50(0);
    public final ro d = new ro(e);

    public zk6() {
        this.c = (v24.f && v24.e) ? new hh3() : new lv1(12);
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void b(List list, k50 k50Var) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            if (oVar != null && oVar.getView() != null) {
                k50Var.put(oVar.getView(), oVar);
                b(oVar.getChildFragmentManager().c.f(), k50Var);
            }
        }
    }

    public final yk6 c(Context context) {
        if (context == null) {
            c6.f("You cannot start a load on a null Context");
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof u) {
                return d((u) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return c(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.a == null) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        this.a = new yk6(a.a(context.getApplicationContext()), new q34(5), new nh4(7), context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.a;
    }

    public final yk6 d(u uVar) {
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return c(uVar.getApplicationContext());
        }
        if (uVar.isDestroyed()) {
            c6.f("You cannot start a load for a destroyed activity");
            return null;
        }
        this.c.c(uVar);
        Activity activityA = a(uVar);
        return this.d.m(uVar, a.a(uVar.getApplicationContext()), uVar.getLifecycle(), uVar.getSupportFragmentManager(), activityA == null || !activityA.isFinishing());
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
