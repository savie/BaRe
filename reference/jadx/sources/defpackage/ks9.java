package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ks9 implements ke9 {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger e = Logger.getLogger(ks9.class.getName());
    public static final zh8 f;
    public static final Object k;
    public volatile Object a;
    public volatile hl9 b;
    public volatile jr9 c;

    static {
        zh8 xq9Var;
        try {
            xq9Var = new ko9(AtomicReferenceFieldUpdater.newUpdater(jr9.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(jr9.class, jr9.class, "b"), AtomicReferenceFieldUpdater.newUpdater(ks9.class, jr9.class, "c"), AtomicReferenceFieldUpdater.newUpdater(ks9.class, hl9.class, "b"), AtomicReferenceFieldUpdater.newUpdater(ks9.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            xq9Var = new xq9(20);
        }
        Throwable th2 = th;
        f = xq9Var;
        if (th2 != null) {
            e.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        k = new Object();
    }

    public static void b(ks9 ks9Var) {
        jr9 jr9Var;
        zh8 zh8Var;
        hl9 hl9Var;
        hl9 hl9Var2;
        hl9 hl9Var3;
        do {
            jr9Var = ks9Var.c;
            zh8Var = f;
        } while (!zh8Var.T(ks9Var, jr9Var, jr9.c));
        while (true) {
            hl9Var = null;
            if (jr9Var == null) {
                break;
            }
            Thread thread = jr9Var.a;
            if (thread != null) {
                jr9Var.a = null;
                LockSupport.unpark(thread);
            }
            jr9Var = jr9Var.b;
        }
        do {
            hl9Var2 = ks9Var.b;
        } while (!zh8Var.R(ks9Var, hl9Var2, hl9.d));
        while (true) {
            hl9Var3 = hl9Var;
            hl9Var = hl9Var2;
            if (hl9Var == null) {
                break;
            }
            hl9Var2 = hl9Var.c;
            hl9Var.c = hl9Var3;
        }
        while (hl9Var3 != null) {
            Runnable runnable = hl9Var3.a;
            hl9 hl9Var4 = hl9Var3.c;
            d(runnable, hl9Var3.b);
            hl9Var3 = hl9Var4;
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            e.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "executeListener", dj7.l("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    public static final Object f(Object obj) throws ExecutionException {
        if (obj instanceof bg9) {
            Throwable th = ((bg9) obj).a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof kj9) {
            throw new ExecutionException(((kj9) obj).a);
        }
        if (obj == k) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String a() {
        if (this instanceof ScheduledFuture) {
            return fz5.m("remaining delay=[", " ms]", ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
        }
        return null;
    }

    public final void c(StringBuilder sb) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e3) {
                sb.append("FAILURE, cause=[");
                sb.append(e3.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(obj == this ? "this future" : String.valueOf(obj));
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        bg9 bg9Var;
        Object obj = this.a;
        if (obj != null) {
            return false;
        }
        if (d) {
            bg9Var = new bg9(new CancellationException("Future.cancel() was called."));
        } else {
            bg9Var = z ? bg9.b : bg9.c;
        }
        if (!f.S(this, obj, bg9Var)) {
            return false;
        }
        b(this);
        return true;
    }

    public final void e(jr9 jr9Var) {
        jr9Var.a = null;
        while (true) {
            jr9 jr9Var2 = this.c;
            if (jr9Var2 != jr9.c) {
                jr9 jr9Var3 = null;
                while (jr9Var2 != null) {
                    jr9 jr9Var4 = jr9Var2.b;
                    if (jr9Var2.a != null) {
                        jr9Var3 = jr9Var2;
                    } else if (jr9Var3 != null) {
                        jr9Var3.b = jr9Var4;
                        if (jr9Var3.a == null) {
                        }
                    } else if (!f.T(this, jr9Var2, jr9Var4)) {
                    }
                    jr9Var2 = jr9Var4;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.a;
        if (obj != null) {
            return f(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            jr9 jr9Var = this.c;
            jr9 jr9Var2 = jr9.c;
            if (jr9Var != jr9Var2) {
                jr9 jr9Var3 = new jr9();
                while (true) {
                    zh8 zh8Var = f;
                    zh8Var.P(jr9Var3, jr9Var);
                    if (zh8Var.T(this, jr9Var, jr9Var3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                e(jr9Var3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.a;
                            if (obj2 != null) {
                                return f(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        e(jr9Var3);
                        break;
                    }
                    jr9Var = this.c;
                    if (jr9Var == jr9Var2) {
                    }
                }
            }
            return f(this.a);
        }
        while (nanos > 0) {
            Object obj3 = this.a;
            if (obj3 != null) {
                return f(obj3);
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
        String strConcat = "Waited " + j + TokenAuthenticationScheme.SCHEME_DELIMITER + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            boolean z = true;
            if (jConvert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (jConvert > 0) {
                String strConcat3 = strConcat2 + jConvert + TokenAuthenticationScheme.SCHEME_DELIMITER + lowerCase;
                if (z) {
                    strConcat3 = strConcat3.concat(",");
                }
                strConcat2 = strConcat3.concat(TokenAuthenticationScheme.SCHEME_DELIMITER);
            }
            if (z) {
                strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(dj7.k(strConcat, " for ", string));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.a instanceof bg9;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.a != null;
    }

    @Override // defpackage.ke9
    public final void o(Runnable runnable, Executor executor) {
        executor.getClass();
        hl9 hl9Var = this.b;
        hl9 hl9Var2 = hl9.d;
        if (hl9Var != hl9Var2) {
            hl9 hl9Var3 = new hl9(runnable, executor);
            do {
                hl9Var3.c = hl9Var;
                if (f.R(this, hl9Var, hl9Var3)) {
                    return;
                } else {
                    hl9Var = this.b;
                }
            } while (hl9Var != hl9Var2);
        }
        d(runnable, executor);
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.a instanceof bg9) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            c(sb);
        } else {
            try {
                strConcat = a();
            } catch (RuntimeException e2) {
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e2.getClass()));
            }
            if (strConcat != null && !strConcat.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strConcat);
                sb.append("]");
            } else if (isDone()) {
                c(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.a;
            if (obj2 != null) {
                return f(obj2);
            }
            jr9 jr9Var = this.c;
            jr9 jr9Var2 = jr9.c;
            if (jr9Var != jr9Var2) {
                jr9 jr9Var3 = new jr9();
                do {
                    zh8 zh8Var = f;
                    zh8Var.P(jr9Var3, jr9Var);
                    if (zh8Var.T(this, jr9Var, jr9Var3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.a;
                            } else {
                                e(jr9Var3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return f(obj);
                    }
                    jr9Var = this.c;
                } while (jr9Var != jr9Var2);
            }
            return f(this.a);
        }
        throw new InterruptedException();
    }
}
