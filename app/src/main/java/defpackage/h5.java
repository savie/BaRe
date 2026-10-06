package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h5 implements Future {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger e = Logger.getLogger(h5.class.getName());
    public static final ho6 f;
    public static final Object k;
    public volatile Object a;
    public volatile d5 b;
    public volatile g5 c;

    static {
        ho6 f5Var;
        try {
            f5Var = new e5(AtomicReferenceFieldUpdater.newUpdater(g5.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g5.class, g5.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h5.class, g5.class, "c"), AtomicReferenceFieldUpdater.newUpdater(h5.class, d5.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h5.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            f5Var = new f5();
        }
        f = f5Var;
        if (th != null) {
            e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        k = new Object();
    }

    public static void c(h5 h5Var) {
        g5 g5Var;
        d5 d5Var;
        do {
            g5Var = h5Var.c;
        } while (!f.d(h5Var, g5Var, g5.c));
        while (g5Var != null) {
            Thread thread = g5Var.a;
            if (thread != null) {
                g5Var.a = null;
                LockSupport.unpark(thread);
            }
            g5Var = g5Var.b;
        }
        h5Var.b();
        do {
            d5Var = h5Var.b;
        } while (!f.b(h5Var, d5Var));
        d5 d5Var2 = null;
        while (d5Var != null) {
            d5 d5Var3 = d5Var.a;
            d5Var.a = d5Var2;
            d5Var2 = d5Var;
            d5Var = d5Var3;
        }
        while (d5Var2 != null) {
            d5Var2 = d5Var2.a;
            try {
                throw null;
            } catch (RuntimeException e2) {
                e.log(Level.SEVERE, "RuntimeException while executing runnable null with executor null", (Throwable) e2);
            }
        }
    }

    public static Object d(Object obj) throws ExecutionException {
        if (obj instanceof a5) {
            Throwable th = ((a5) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof c5) {
            throw new ExecutionException(((c5) obj).a);
        }
        if (obj == k) {
            return null;
        }
        return obj;
    }

    public static Object e(h5 h5Var) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = h5Var.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        try {
            Object objE = e(this);
            sb.append("SUCCESS, result=[");
            sb.append(objE == this ? "this future" : String.valueOf(objE));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        a5 a5Var;
        Object obj = this.a;
        if (obj == null) {
            if (d) {
                a5Var = new a5(new CancellationException("Future.cancel() was called."), z);
            } else {
                a5Var = z ? a5.c : a5.d;
            }
            if (f.c(this, obj, a5Var)) {
                c(this);
                return true;
            }
        }
        return false;
    }

    public final void f(g5 g5Var) {
        g5Var.a = null;
        while (true) {
            g5 g5Var2 = this.c;
            if (g5Var2 == g5.c) {
                return;
            }
            g5 g5Var3 = null;
            while (g5Var2 != null) {
                g5 g5Var4 = g5Var2.b;
                if (g5Var2.a != null) {
                    g5Var3 = g5Var2;
                } else if (g5Var3 != null) {
                    g5Var3.b = g5Var4;
                    if (g5Var3.a == null) {
                    }
                } else if (!f.d(this, g5Var2, g5Var4)) {
                }
                g5Var2 = g5Var4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        g5 g5Var = g5.c;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.a;
        if (obj != null) {
            return d(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            g5 g5Var2 = this.c;
            if (g5Var2 != g5Var) {
                g5 g5Var3 = new g5();
                while (true) {
                    ho6 ho6Var = f;
                    ho6Var.I(g5Var3, g5Var2);
                    if (ho6Var.d(this, g5Var2, g5Var3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                f(g5Var3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.a;
                            if (obj2 != null) {
                                return d(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        f(g5Var3);
                        break;
                    }
                    g5Var2 = this.c;
                    if (g5Var2 == g5Var) {
                    }
                }
            }
            return d(this.a);
        }
        while (nanos > 0) {
            Object obj3 = this.a;
            if (obj3 != null) {
                return d(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        StringBuilder sbT = dj7.t("Waited ", TokenAuthenticationScheme.SCHEME_DELIMITER, j);
        sbT.append(timeUnit.toString().toLowerCase(locale));
        String string3 = sbT.toString();
        if (nanos + 1000 < 0) {
            String strConcat = string3.concat(" (plus ");
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strConcat2 = strConcat + jConvert + TokenAuthenticationScheme.SCHEME_DELIMITER + lowerCase;
                if (z) {
                    strConcat2 = strConcat2.concat(",");
                }
                strConcat = strConcat2.concat(TokenAuthenticationScheme.SCHEME_DELIMITER);
            }
            if (z) {
                strConcat = strConcat + nanos2 + " nanoseconds ";
            }
            string3 = strConcat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(string3.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(dj7.k(string3, " for ", string));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.a instanceof a5;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.a != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.a instanceof a5) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void b() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        g5 g5Var = g5.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.a;
            if (obj2 != null) {
                return d(obj2);
            }
            g5 g5Var2 = this.c;
            if (g5Var2 != g5Var) {
                g5 g5Var3 = new g5();
                do {
                    ho6 ho6Var = f;
                    ho6Var.I(g5Var3, g5Var2);
                    if (ho6Var.d(this, g5Var2, g5Var3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.a;
                            } else {
                                f(g5Var3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return d(obj);
                    }
                    g5Var2 = this.c;
                } while (g5Var2 != g5Var);
            }
            return d(this.a);
        }
        throw new InterruptedException();
    }
}
