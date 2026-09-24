package defpackage;

import android.graphics.drawable.Drawable;
import android.os.Looper;
import com.jcraft.jsch.SftpATTRS;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tk6 implements vk6, Future, px7 {
    public Object a;
    public kk6 b;
    public boolean c;
    public boolean d;
    public boolean e;
    public fy3 f;

    @Override // defpackage.px7
    public final synchronized void b(Object obj, x98 x98Var) {
    }

    @Override // defpackage.px7
    public final void c(fh7 fh7Var) {
        fh7Var.m(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.c = true;
                notifyAll();
                kk6 kk6Var = null;
                if (z) {
                    kk6 kk6Var2 = this.b;
                    this.b = null;
                    kk6Var = kk6Var2;
                }
                if (kk6Var != null) {
                    kk6Var.clear();
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.px7
    public final synchronized void d(kk6 kk6Var) {
        this.b = kk6Var;
    }

    @Override // defpackage.vk6
    public final synchronized void f(fy3 fy3Var, px7 px7Var) {
        this.e = true;
        this.f = fy3Var;
        notifyAll();
    }

    @Override // defpackage.px7
    public final synchronized void g(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return n(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // defpackage.vk6
    public final synchronized void i(Object obj, Object obj2, px7 px7Var, int i) {
        this.d = true;
        this.a = obj;
        notifyAll();
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isCancelled() {
        return this.c;
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isDone() {
        return this.c || this.d || this.e;
    }

    @Override // defpackage.px7
    public final synchronized kk6 k() {
        return this.b;
    }

    public final synchronized Object n(Long l) {
        if (!isDone()) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalArgumentException("You must call this method on a background thread");
            }
        }
        if (this.c) {
            throw new CancellationException();
        }
        if (this.e) {
            throw new ExecutionException(this.f);
        }
        if (this.d) {
            return this.a;
        }
        if (l == null) {
            wait(0L);
        } else if (l.longValue() > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jLongValue = l.longValue() + jCurrentTimeMillis;
            while (!isDone() && jCurrentTimeMillis < jLongValue) {
                wait(jLongValue - jCurrentTimeMillis);
                jCurrentTimeMillis = System.currentTimeMillis();
            }
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.e) {
            throw new ExecutionException(this.f);
        }
        if (this.c) {
            throw new CancellationException();
        }
        if (this.d) {
            return this.a;
        }
        throw new TimeoutException();
    }

    public final String toString() {
        kk6 kk6Var;
        String str;
        String strN = dj7.n(new StringBuilder(), super.toString(), "[status=");
        synchronized (this) {
            try {
                kk6Var = null;
                if (this.c) {
                    str = "CANCELLED";
                } else if (this.e) {
                    str = "FAILURE";
                } else if (this.d) {
                    str = "SUCCESS";
                } else {
                    str = "PENDING";
                    kk6Var = this.b;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (kk6Var == null) {
            return dj7.k(strN, str, "]");
        }
        return strN + str + ", request=[" + kk6Var + "]]";
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        try {
            return n(null);
        } catch (TimeoutException e) {
            e6.e(e);
            return null;
        }
    }

    @Override // defpackage.du4
    public final void e() {
    }

    @Override // defpackage.du4
    public final void h() {
    }

    @Override // defpackage.du4
    public final void m() {
    }

    @Override // defpackage.px7
    public final void a(fh7 fh7Var) {
    }

    @Override // defpackage.px7
    public final void j(Drawable drawable) {
    }

    @Override // defpackage.px7
    public final void l(Drawable drawable) {
    }
}
