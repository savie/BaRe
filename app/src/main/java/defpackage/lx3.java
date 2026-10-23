package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.a;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lx3 {
    public final gl7 a;
    public final Handler b;
    public final ArrayList c;
    public final yk6 d;
    public final nr0 e;
    public boolean f;
    public boolean g;
    public pk6 h;
    public jx3 i;
    public boolean j;
    public jx3 k;
    public Bitmap l;
    public jx3 m;
    public int n;
    public int o;
    public int p;

    public lx3(a aVar, gl7 gl7Var, int i, int i2, Bitmap bitmap) {
        nr0 nr0Var = aVar.a;
        dy3 dy3Var = aVar.c;
        yk6 yk6VarC = a.c(dy3Var.getBaseContext());
        pk6 pk6VarX = a.c(dy3Var.getBaseContext()).f(Bitmap.class).a(yk6.r).a(((bl6) ((bl6) ((bl6) new bl6().d(km2.a)).v()).r()).j(i, i2));
        this.c = new ArrayList();
        this.d = yk6VarC;
        Handler handler = new Handler(Looper.getMainLooper(), new kx3(this, 0));
        this.e = nr0Var;
        this.b = handler;
        this.h = pk6VarX;
        this.a = gl7Var;
        c(ge8.b, bitmap);
    }

    public final void a() {
        int i;
        int i2;
        if (!this.f || this.g) {
            return;
        }
        jx3 jx3Var = this.m;
        if (jx3Var != null) {
            this.m = null;
            b(jx3Var);
            return;
        }
        this.g = true;
        gl7 gl7Var = this.a;
        nx3 nx3Var = gl7Var.l;
        int i3 = nx3Var.c;
        if (i3 <= 0 || (i2 = gl7Var.k) < 0) {
            i = 0;
        } else {
            i = (i2 < 0 || i2 >= i3) ? -1 : ((ix3) nx3Var.e.get(i2)).i;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i);
        int i4 = (gl7Var.k + 1) % gl7Var.l.c;
        gl7Var.k = i4;
        this.k = new jx3(this.b, i4, jUptimeMillis);
        pk6 pk6VarD = this.h.a((bl6) new bl6().q(new nr5(Double.valueOf(Math.random())))).D(gl7Var);
        pk6VarD.A(this.k, null, pk6VarD, xh8.e);
    }

    public final void b(jx3 jx3Var) {
        this.g = false;
        boolean z = this.j;
        Handler handler = this.b;
        if (z) {
            handler.obtainMessage(2, jx3Var).sendToTarget();
            return;
        }
        if (!this.f) {
            this.m = jx3Var;
            return;
        }
        if (jx3Var.k != null) {
            Bitmap bitmap = this.l;
            if (bitmap != null) {
                this.e.f(bitmap);
                this.l = null;
            }
            jx3 jx3Var2 = this.i;
            this.i = jx3Var;
            ArrayList arrayList = this.c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                fx3 fx3Var = (fx3) arrayList.get(size);
                Object callback = fx3Var.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    fx3Var.stop();
                    fx3Var.invalidateSelf();
                } else {
                    fx3Var.invalidateSelf();
                    lx3 lx3Var = fx3Var.a.a;
                    jx3 jx3Var3 = lx3Var.i;
                    if ((jx3Var3 != null ? jx3Var3.e : -1) == lx3Var.a.l.c - 1) {
                        fx3Var.f++;
                    }
                    int i = fx3Var.k;
                    if (i != -1 && fx3Var.f >= i) {
                        fx3Var.stop();
                    }
                }
            }
            if (jx3Var2 != null) {
                handler.obtainMessage(2, jx3Var2).sendToTarget();
            }
        }
        a();
    }

    public final void c(l98 l98Var, Bitmap bitmap) {
        ms8.j(l98Var, "Argument must not be null");
        ms8.j(bitmap, "Argument must not be null");
        this.l = bitmap;
        this.h = this.h.a(new bl6().t(l98Var, true));
        this.n = xh8.l(bitmap);
        this.o = bitmap.getWidth();
        this.p = bitmap.getHeight();
    }
}
