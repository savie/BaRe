package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vc7 implements AutoCloseable {
    public static final us2 G;
    public static final fo8 y;
    public final fi7 a;
    public final ab8 b;
    public final long c;
    public final j87 d;
    public final us6 e;
    public final int f;
    public final long k;
    public final int n;
    public final long p;
    public final int q;
    public final long r;
    public final long t;
    public final AtomicBoolean x = new AtomicBoolean(false);

    static {
        new nr6(1, new byte[]{-1, -1, -1, -1, -1, -1, -1, -1}, new byte[]{-1, -1, -1, -1, -1, -1, -1, -1});
        y = new fo8(15);
        G = new us2(25);
    }

    public vc7(fi7 fi7Var, ab8 ab8Var) {
        this.a = fi7Var;
        this.b = ab8Var;
        j87 j87Var = ab8Var.c;
        this.d = j87Var;
        ru3 ru3Var = ab8Var.d;
        this.e = (us6) ru3Var.e;
        di7 di7Var = ab8Var.e;
        this.f = Math.min(di7Var.i, ru3Var.c);
        this.k = di7Var.j;
        this.n = Math.min(di7Var.k, ru3Var.d);
        this.p = di7Var.l;
        this.q = Math.min(di7Var.m, ru3Var.b);
        this.r = di7Var.o;
        this.t = j87Var.a;
        this.c = ab8Var.a;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018 A[Catch: va8 -> 0x0067, TryCatch #4 {va8 -> 0x0067, blocks: (B:4:0x0006, B:5:0x0008, B:6:0x000e, B:10:0x0014, B:12:0x0018, B:14:0x0021, B:13:0x001b, B:16:0x0023, B:17:0x002f, B:18:0x0030, B:19:0x0036, B:28:0x006a, B:29:0x006f, B:31:0x0071, B:32:0x007d), top: B:35:0x0004, inners: #6, #5, #4 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x001b A[Catch: va8 -> 0x0067, TryCatch #4 {va8 -> 0x0067, blocks: (B:4:0x0006, B:5:0x0008, B:6:0x000e, B:10:0x0014, B:12:0x0018, B:14:0x0021, B:13:0x001b, B:16:0x0023, B:17:0x002f, B:18:0x0030, B:19:0x0036, B:28:0x006a, B:29:0x006f, B:31:0x0071, B:32:0x007d), top: B:35:0x0004, inners: #6, #5, #4 }] */
    public static rt6 a(p21 p21Var, String str, Object obj, zm7 zm7Var, long j) throws va8 {
        rt6 rt6Var;
        try {
            if (j > 0) {
                try {
                    rt6Var = (rt6) p21Var.a.get(j, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new va8(e);
                } catch (ExecutionException e2) {
                    e = e2;
                    if (e instanceof va8) {
                        throw ((va8) e);
                    }
                    throw new va8(e);
                } catch (TimeoutException e3) {
                    e = e3;
                    if (e instanceof va8) {
                        throw ((va8) e);
                    }
                    throw new va8(e);
                }
            } else {
                try {
                    rt6Var = (rt6) p21Var.a.get();
                } catch (InterruptedException e4) {
                    Thread.currentThread().interrupt();
                    throw new va8(e4);
                } catch (ExecutionException e5) {
                    throw new va8(e5);
                }
            }
            if (zm7Var.c(((ut6) rt6Var.c()).j)) {
                return rt6Var;
            }
            throw new yu6((ut6) rt6Var.c(), str + " failed for " + obj);
        } catch (va8 e6) {
            throw new gv6(e6);
        }
    }

    public final p21 b(rt6 rt6Var) {
        if (this.x.get()) {
            throw new gv6(getClass().getSimpleName().concat(" has already been closed"));
        }
        try {
            return this.d.n(rt6Var);
        } catch (va8 e) {
            throw new gv6(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007a A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:5:0x0013, B:6:0x002e, B:7:0x0034, B:11:0x0051, B:12:0x006a, B:21:0x0076, B:23:0x007a, B:25:0x0083, B:24:0x007d, B:26:0x0084, B:27:0x0090), top: B:31:0x0013, inners: #4, #3 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x007d A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:5:0x0013, B:6:0x002e, B:7:0x0034, B:11:0x0051, B:12:0x006a, B:21:0x0076, B:23:0x007a, B:25:0x0083, B:24:0x007d, B:26:0x0084, B:27:0x0090), top: B:31:0x0013, inners: #4, #3 }] */
    @Override // java.lang.AutoCloseable
    public final void close() {
        Throwable th;
        if (this.x.getAndSet(true)) {
            return;
        }
        ab8 ab8Var = this.b;
        long j = ab8Var.a;
        cv6 cv6Var = ab8Var.f;
        j87 j87Var = ab8Var.c;
        try {
            try {
                rt6 rt6Var = (rt6) j87Var.n(new at6(4, (us6) ab8Var.d.e, it6.SMB2_TREE_DISCONNECT, j87Var.a, j)).a.get(ab8Var.e.o, TimeUnit.MILLISECONDS);
                if (bp5.a(((ut6) rt6Var.c()).j)) {
                    cv6Var.a.g(new bb8(j87Var.a, j));
                } else {
                    throw new yu6((ut6) rt6Var.c(), "Error closing connection to " + ab8Var.b);
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new va8(e);
            } catch (ExecutionException e2) {
                e = e2;
                th = e;
                if (th instanceof va8) {
                    throw new va8(th);
                }
            } catch (TimeoutException e3) {
                e = e3;
                th = e;
                if (th instanceof va8) {
                    throw new va8(th);
                }
            }
        } catch (Throwable th2) {
            cv6Var.a.g(new bb8(j87Var.a, j));
            throw th2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        fi7 fi7Var = ((vc7) obj).a;
        fi7 fi7Var2 = this.a;
        if (fi7Var2 == null) {
            if (fi7Var != null) {
                return false;
            }
        } else if (!fi7Var2.equals(fi7Var)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        fi7 fi7Var = this.a;
        return 31 + (fi7Var == null ? 0 : fi7Var.hashCode());
    }
}
