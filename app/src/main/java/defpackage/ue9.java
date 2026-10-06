package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ue9 extends uc9 implements ke9 {
    public ke9 n;
    public ScheduledFuture p;

    public static Object c(Object obj) throws ExecutionException {
        if (obj instanceof jc9) {
            Throwable th = ((jc9) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof mc9) {
            throw new ExecutionException(((mc9) obj).a);
        }
        if (obj == uc9.d) {
            return null;
        }
        return obj;
    }

    public static boolean e(Object obj) {
        return !(obj instanceof kc9);
    }

    public static Object f(ke9 ke9Var) {
        Object obj;
        Throwable thB;
        if (ke9Var instanceof ue9) {
            Object jc9Var = ((ue9) ke9Var).a;
            if (jc9Var instanceof jc9) {
                jc9 jc9Var2 = (jc9) jc9Var;
                if (jc9Var2.a) {
                    Throwable th = jc9Var2.b;
                    jc9Var = th != null ? new jc9(th, false) : jc9.d;
                }
            }
            Objects.requireNonNull(jc9Var);
            return jc9Var;
        }
        if ((ke9Var instanceof uc9) && (thB = ((uc9) ke9Var).b()) != null) {
            return new mc9(thB);
        }
        boolean zIsCancelled = ke9Var.isCancelled();
        boolean z = true;
        if ((!uc9.f) && zIsCancelled) {
            jc9 jc9Var3 = jc9.d;
            Objects.requireNonNull(jc9Var3);
            return jc9Var3;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = ke9Var.get();
                        break;
                    } catch (Error e) {
                        e = e;
                        return new mc9(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th2) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            } catch (Error | Exception e2) {
                e = e2;
                return new mc9(e);
            } catch (CancellationException e3) {
                return !zIsCancelled ? new mc9(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(ke9Var)), e3)) : new jc9(e3, false);
            } catch (ExecutionException e4) {
                return zIsCancelled ? new jc9(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(ke9Var)), e4), false) : new mc9(e4.getCause());
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (zIsCancelled) {
            return new jc9(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(ke9Var))), false);
        }
        return obj == null ? uc9.d : obj;
    }

    public static void h(ue9 ue9Var) {
        nc9 nc9Var = null;
        while (true) {
            ue9Var.getClass();
            for (sc9 sc9VarD0 = uc9.k.d0(ue9Var); sc9VarD0 != null; sc9VarD0 = sc9VarD0.b) {
                Thread thread = sc9VarD0.a;
                if (thread != null) {
                    sc9VarD0.a = null;
                    LockSupport.unpark(thread);
                }
            }
            ke9 ke9Var = ue9Var.n;
            if ((ue9Var.a instanceof jc9) & (ke9Var != null)) {
                Object obj = ue9Var.a;
                ke9Var.cancel((obj instanceof jc9) && ((jc9) obj).a);
            }
            ScheduledFuture scheduledFuture = ue9Var.p;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            ue9Var.n = null;
            ue9Var.p = null;
            nc9 nc9Var2 = nc9Var;
            nc9 nc9VarB0 = uc9.k.b0(ue9Var);
            nc9 nc9Var3 = nc9Var2;
            while (nc9VarB0 != null) {
                nc9 nc9Var4 = nc9VarB0.c;
                nc9VarB0.c = nc9Var3;
                nc9Var3 = nc9VarB0;
                nc9VarB0 = nc9Var4;
            }
            while (nc9Var3 != null) {
                Runnable runnable = nc9Var3.a;
                nc9 nc9Var5 = nc9Var3.c;
                Objects.requireNonNull(runnable);
                if (runnable instanceof kc9) {
                    kc9 kc9Var = (kc9) runnable;
                    ue9Var = kc9Var.a;
                    if (ue9Var.a != kc9Var) {
                        continue;
                    } else if (uc9.k.h0(ue9Var, kc9Var, f(kc9Var.b))) {
                        nc9Var = nc9Var5;
                    }
                } else {
                    Executor executor = nc9Var3.b;
                    Objects.requireNonNull(executor);
                    i(runnable, executor);
                }
                nc9Var3 = nc9Var5;
            }
            return;
        }
    }

    public static void i(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            uc9.e.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", dj7.l("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e);
        }
    }

    @Override // defpackage.uc9
    public final Throwable b() {
        if (!(this instanceof ue9)) {
            return null;
        }
        Object obj = this.a;
        if (obj instanceof mc9) {
            return ((mc9) obj).a;
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        jc9 jc9Var;
        Object obj = this.a;
        if (!(obj instanceof kc9) && !(obj == null)) {
            return false;
        }
        if (uc9.f) {
            jc9Var = new jc9(new CancellationException("Future.cancel() was called."), z);
        } else {
            jc9Var = z ? jc9.c : jc9.d;
            Objects.requireNonNull(jc9Var);
        }
        boolean z2 = false;
        while (true) {
            if (uc9.k.h0(this, obj, jc9Var)) {
                h(this);
                if (obj instanceof kc9) {
                    ke9 ke9Var = ((kc9) obj).b;
                    if (ke9Var instanceof ue9) {
                        this = (ue9) ke9Var;
                        obj = this.a;
                        if ((obj == null) | (obj instanceof kc9)) {
                            z2 = true;
                        }
                    } else {
                        ke9Var.cancel(z);
                    }
                }
                return true;
            }
            obj = this.a;
            if (e(obj)) {
                return z2;
            }
        }
    }

    public final String d() {
        ke9 ke9Var = this.n;
        ScheduledFuture scheduledFuture = this.p;
        if (ke9Var == null) {
            return null;
        }
        String strK = eq3.k("inputFuture=[", ke9Var.toString(), "]");
        if (scheduledFuture != null) {
            long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
            if (delay > 0) {
                return strK + ", remaining delay=[" + delay + " ms]";
            }
        }
        return strK;
    }

    public final void g(StringBuilder sb) {
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
            } catch (ExecutionException e) {
                sb.append("FAILURE, cause=[");
                sb.append(e.getCause());
                sb.append("]");
                return;
            } catch (Exception e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (obj == null) {
            sb.append("null");
        } else if (obj == this) {
            sb.append("this future");
        } else {
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long j2;
        sc9 sc9Var = sc9.c;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.a;
        if ((obj != null) && e(obj)) {
            return c(obj);
        }
        long j3 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            sc9 sc9Var2 = this.c;
            if (sc9Var2 != sc9Var) {
                sc9 sc9Var3 = new sc9();
                while (true) {
                    ho6 ho6Var = uc9.k;
                    ho6Var.e0(sc9Var3, sc9Var2);
                    if (ho6Var.i0(this, sc9Var2, sc9Var3)) {
                        j2 = j3;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                a(sc9Var3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.a;
                            if ((obj2 != null) && e(obj2)) {
                                return c(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        a(sc9Var3);
                        break;
                    }
                    long j4 = j3;
                    sc9Var2 = this.c;
                    if (sc9Var2 != sc9Var) {
                        j3 = j4;
                    }
                }
            }
            Object obj3 = this.a;
            Objects.requireNonNull(obj3);
            return c(obj3);
        }
        j2 = 0;
        while (nanos > j2) {
            Object obj4 = this.a;
            if ((obj4 != null) && e(obj4)) {
                return c(obj4);
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
        if (nanos + 1000 < j2) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j5 = -nanos;
            long jConvert = timeUnit.convert(j5, TimeUnit.NANOSECONDS);
            long nanos2 = j5 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == j2 || nanos2 > 1000;
            if (jConvert > j2) {
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
        return this.a instanceof jc9;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.a;
        return (obj != null) & e(obj);
    }

    @Override // defpackage.ke9
    public final void o(Runnable runnable, Executor executor) {
        nc9 nc9Var;
        nc9 nc9Var2 = nc9.d;
        if (executor == null) {
            f6.n("Executor was null.");
            return;
        }
        if (!isDone() && (nc9Var = this.b) != nc9Var2) {
            nc9 nc9Var3 = new nc9(runnable, executor);
            do {
                nc9Var3.c = nc9Var;
                if (uc9.k.g0(this, nc9Var, nc9Var3)) {
                    return;
                } else {
                    nc9Var = this.b;
                }
            } while (nc9Var != nc9Var2);
        }
        i(runnable, executor);
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.a instanceof jc9) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            g(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.a;
            if (obj instanceof kc9) {
                sb.append(", setFuture=[");
                ke9 ke9Var = ((kc9) obj).b;
                try {
                    if (ke9Var == this) {
                        sb.append("this future");
                    } else {
                        sb.append(ke9Var);
                    }
                } catch (Throwable th) {
                    if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
                        throw th;
                    }
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strConcat = d();
                    if (strConcat == null || strConcat.isEmpty()) {
                        strConcat = null;
                    }
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    strConcat = "Exception thrown from implementation: ".concat(String.valueOf(th2.getClass()));
                }
                if (strConcat != null) {
                    sb.append(", info=[");
                    sb.append(strConcat);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                g(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        sc9 sc9Var = sc9.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.a;
            if ((obj2 != null) & e(obj2)) {
                return c(obj2);
            }
            sc9 sc9Var2 = this.c;
            if (sc9Var2 != sc9Var) {
                sc9 sc9Var3 = new sc9();
                do {
                    ho6 ho6Var = uc9.k;
                    ho6Var.e0(sc9Var3, sc9Var2);
                    if (ho6Var.i0(this, sc9Var2, sc9Var3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.a;
                            } else {
                                a(sc9Var3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & e(obj)));
                        return c(obj);
                    }
                    sc9Var2 = this.c;
                } while (sc9Var2 != sc9Var);
            }
            Object obj3 = this.a;
            Objects.requireNonNull(obj3);
            return c(obj3);
        }
        throw new InterruptedException();
    }
}
