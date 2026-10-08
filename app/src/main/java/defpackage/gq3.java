package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gq3 implements ju2 {
    public final Context a;
    public final fq3 b;
    public final hx0 c;
    public final Object d = new Object();
    public Handler e;
    public ThreadPoolExecutor f;
    public ThreadPoolExecutor k;
    public nc8 n;

    public gq3(Context context, fq3 fq3Var) {
        yc9.f(context, "Context cannot be null");
        this.a = context.getApplicationContext();
        this.b = fq3Var;
        this.c = hq3.d;
    }

    public final void a() {
        synchronized (this.d) {
            try {
                this.n = null;
                Handler handler = this.e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.e = null;
                ThreadPoolExecutor threadPoolExecutor = this.k;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.k = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final sq3 b() {
        try {
            hx0 hx0Var = this.c;
            Context context = this.a;
            fq3 fq3Var = this.b;
            hx0Var.getClass();
            ArrayList arrayList = new ArrayList(1);
            Object obj = new Object[]{fq3Var}[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            ph3 ph3VarA = dq3.a(context, Collections.unmodifiableList(arrayList));
            int i = ph3VarA.a;
            if (i != 0) {
                g84.h(xs1.h(i, "fetchFonts failed (", ")"));
                return null;
            }
            sq3[] sq3VarArr = (sq3[]) ph3VarA.b.get(0);
            if (sq3VarArr != null && sq3VarArr.length != 0) {
                return sq3VarArr[0];
            }
            g84.h("fetchFonts failed (empty result)");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            e6.i("provider not found", e);
            return null;
        }
    }

    @Override // defpackage.ju2
    public final void c(nc8 nc8Var) {
        synchronized (this.d) {
            this.n = nc8Var;
        }
        synchronized (this.d) {
            try {
                if (this.n == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new zp1("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.k = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new vn1(this, 4));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
