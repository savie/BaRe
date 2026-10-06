package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j87 implements AutoCloseable {
    public static final l15 x = o15.b(j87.class);
    public long a;
    public final ur1 b;
    public final di7 c;
    public final cv6 d;
    public final ke e;
    public final tf7 f;
    public final jw5 k;
    public final l22 n;
    public final HashMap p;
    public final ReentrantReadWriteLock q;
    public final h80 r;
    public final n87 t;

    public j87(ur1 ur1Var, di7 di7Var, h80 h80Var, cv6 cv6Var, ke keVar, tf7 tf7Var, jw5 jw5Var) {
        l22 l22Var = new l22((byte) 0, 8);
        l22Var.b = new ReentrantReadWriteLock();
        l22Var.c = new HashMap();
        l22Var.d = new HashMap();
        this.n = l22Var;
        this.p = new HashMap();
        this.q = new ReentrantReadWriteLock();
        this.b = ur1Var;
        this.c = di7Var;
        this.r = h80Var;
        this.d = cv6Var;
        this.e = keVar;
        this.f = tf7Var;
        this.t = new n87();
        this.k = jw5Var;
        if (cv6Var != null) {
            cv6Var.a(this);
        }
    }

    @o24
    private void g(bb8 bb8Var) {
        long j = bb8Var.a;
        long j2 = bb8Var.b;
        if (j == this.a) {
            x.D(Long.valueOf(j2), "Notified of TreeDisconnected <<{}>>");
            l22 l22Var = this.n;
            ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) l22Var.b;
            reentrantReadWriteLock.writeLock().lock();
            try {
                vc7 vc7Var = (vc7) ((HashMap) l22Var.c).remove(Long.valueOf(j2));
                if (vc7Var != null) {
                    ((HashMap) l22Var.d).remove(vc7Var.b.b.b);
                }
            } finally {
                reentrantReadWriteLock.writeLock().unlock();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x011f A[Catch: va8 -> 0x0137, TryCatch #3 {va8 -> 0x0137, blocks: (B:11:0x0050, B:12:0x007b, B:13:0x0081, B:14:0x0084, B:17:0x0092, B:22:0x00a8, B:24:0x00b2, B:26:0x00ce, B:33:0x00e5, B:29:0x00d7, B:32:0x00e0, B:35:0x00e9, B:36:0x00f0, B:37:0x00f1, B:38:0x00f8, B:39:0x00f9, B:40:0x0117, B:44:0x011b, B:46:0x011f, B:48:0x0128, B:47:0x0122, B:50:0x012a, B:51:0x0136), top: B:63:0x0050, inners: #4, #5 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0122 A[Catch: va8 -> 0x0137, TryCatch #3 {va8 -> 0x0137, blocks: (B:11:0x0050, B:12:0x007b, B:13:0x0081, B:14:0x0084, B:17:0x0092, B:22:0x00a8, B:24:0x00b2, B:26:0x00ce, B:33:0x00e5, B:29:0x00d7, B:32:0x00e0, B:35:0x00e9, B:36:0x00f0, B:37:0x00f1, B:38:0x00f8, B:39:0x00f9, B:40:0x0117, B:44:0x011b, B:46:0x011f, B:48:0x0128, B:47:0x0122, B:50:0x012a, B:51:0x0136), top: B:63:0x0050, inners: #4, #5 }] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final vc7 a(String str) throws va8 {
        vc7 c66Var;
        if (str.contains("\\")) {
            c6.f(eq3.k("Share name (", str, ") cannot contain '\\' characters."));
            return null;
        }
        l22 l22Var = this.n;
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) l22Var.b;
        reentrantReadWriteLock.readLock().lock();
        try {
            vc7 vc7Var = (vc7) ((HashMap) l22Var.d).get(str);
            reentrantReadWriteLock.readLock().unlock();
            l15 l15Var = x;
            if (vc7Var != null) {
                l15Var.m(vc7Var, str, "Returning cached Share {} for {}");
                return vc7Var;
            }
            ke keVar = this.e;
            ur1 ur1Var = this.b;
            fi7 fi7Var = new fi7(ur1Var.h(), str, null);
            l15Var.y(fi7Var, Long.valueOf(this.a), "Connecting to {} on session {}");
            try {
                ou6 ou6Var = new ou6(9, (us6) ur1Var.c.b.e, it6.SMB2_TREE_CONNECT, this.a, 0L);
                ou6Var.e = fi7Var;
                ((ut6) ou6Var.a).c = 256;
                try {
                    pu6 pu6Var = (pu6) n(ou6Var).a.get(this.c.o, TimeUnit.MILLISECONDS);
                    try {
                        vc7 vc7Var2 = (vc7) keVar.o(this, pu6Var, fi7Var, new cd(this, fi7Var));
                        if (vc7Var2 != null) {
                            return vc7Var2;
                        }
                    } catch (ny5 unused) {
                    }
                    dv6 dv6Var = pu6Var.a;
                    if ((((ut6) dv6Var).j >>> 30) == 3) {
                        l15Var.k(((ut6) dv6Var).toString());
                        throw new yu6((ut6) pu6Var.a, "Could not connect to " + fi7Var);
                    }
                    if (pu6Var.g.contains(ku6.SMB2_SHARE_CAP_ASYMMETRIC)) {
                        throw new gv6("ASYMMETRIC capability unsupported");
                    }
                    ab8 ab8Var = new ab8(((ut6) pu6Var.a).i, fi7Var, this, this.c, ur1Var.c, this.d, pu6Var.f);
                    byte b = pu6Var.e;
                    if (b == 1) {
                        c66Var = new wm2(fi7Var, ab8Var, keVar);
                    } else if (b == 2) {
                        c66Var = new l06(fi7Var, ab8Var);
                    } else {
                        if (b != 3) {
                            throw new gv6("Unknown ShareType returned in the TREE_CONNECT Response");
                        }
                        c66Var = new c66(fi7Var, ab8Var);
                    }
                    l22Var.g(c66Var);
                    return c66Var;
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
            } catch (va8 e4) {
                throw new gv6(e4);
            }
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    public final j87 b(fi7 fi7Var) {
        try {
            return this.b.p.b(445, fi7Var.a).a(this.r);
        } catch (IOException e) {
            it6 it6Var = it6.SMB2_NEGOTIATE;
            throw new yu6(4294967295L, "Could not connect to DFS root " + fi7Var, e);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        m();
    }

    public final j87 h(fi7 fi7Var) {
        HashMap map = this.p;
        ReentrantReadWriteLock reentrantReadWriteLock = this.q;
        reentrantReadWriteLock.readLock().lock();
        try {
            String str = fi7Var.a;
            j87 j87Var = (j87) map.get(str);
            if (j87Var != null) {
                reentrantReadWriteLock.readLock().unlock();
                return j87Var;
            }
            reentrantReadWriteLock.readLock().unlock();
            reentrantReadWriteLock.writeLock().lock();
            try {
                j87 j87VarB = (j87) map.get(str);
                if (j87VarB == null) {
                    j87VarB = b(fi7Var);
                    map.put(str, j87VarB);
                }
                reentrantReadWriteLock.readLock().lock();
                reentrantReadWriteLock.writeLock().unlock();
                reentrantReadWriteLock.readLock().unlock();
                return j87VarB;
            } catch (Throwable th) {
                reentrantReadWriteLock.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            reentrantReadWriteLock.readLock().unlock();
            throw th2;
        }
    }

    public final SecretKey j(ut6 ut6Var, boolean z) {
        boolean zA = ((us6) this.b.c.b.e).a();
        n87 n87Var = this.t;
        if (!zA) {
            return n87Var.c;
        }
        if (ut6Var.e == it6.SMB2_SESSION_SETUP) {
            if (z) {
                return n87Var.d;
            }
            if (ut6Var.j != 0) {
                return n87Var.d;
            }
        }
        return n87Var.d;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0113 A[Catch: all -> 0x004d, TryCatch #6 {all -> 0x004d, blocks: (B:3:0x0008, B:5:0x0031, B:6:0x003c, B:8:0x0042, B:9:0x0049, B:14:0x0051, B:15:0x005f, B:26:0x00a0, B:27:0x00c6, B:28:0x00cc, B:32:0x00e7, B:33:0x0108, B:40:0x010f, B:42:0x0113, B:44:0x011c, B:43:0x0116, B:45:0x011d, B:46:0x0129, B:47:0x012a, B:48:0x0131, B:50:0x0133, B:51:0x013a, B:16:0x0066, B:17:0x0070, B:19:0x0076, B:20:0x008d, B:24:0x0094, B:4:0x0024), top: B:60:0x0008, inners: #1, #2, #5, #7 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0116 A[Catch: all -> 0x004d, TryCatch #6 {all -> 0x004d, blocks: (B:3:0x0008, B:5:0x0031, B:6:0x003c, B:8:0x0042, B:9:0x0049, B:14:0x0051, B:15:0x005f, B:26:0x00a0, B:27:0x00c6, B:28:0x00cc, B:32:0x00e7, B:33:0x0108, B:40:0x010f, B:42:0x0113, B:44:0x011c, B:43:0x0116, B:45:0x011d, B:46:0x0129, B:47:0x012a, B:48:0x0131, B:50:0x0133, B:51:0x013a, B:16:0x0066, B:17:0x0070, B:19:0x0076, B:20:0x008d, B:24:0x0094, B:4:0x0024), top: B:60:0x0008, inners: #1, #2, #5, #7 }] */
    public final void m() {
        cv6 cv6Var = this.d;
        ur1 ur1Var = this.b;
        ReentrantReadWriteLock reentrantReadWriteLock = this.q;
        l15 l15Var = x;
        try {
            l15Var.y(Long.valueOf(this.a), ur1Var.h(), "Logging off session {} from host {}");
            l22 l22Var = this.n;
            ReentrantReadWriteLock reentrantReadWriteLock2 = (ReentrantReadWriteLock) l22Var.b;
            reentrantReadWriteLock2.readLock().lock();
            try {
                ArrayList<vc7> arrayList = new ArrayList(((HashMap) l22Var.c).values());
                reentrantReadWriteLock2.readLock().unlock();
                for (vc7 vc7Var : arrayList) {
                    try {
                        vc7Var.close();
                    } catch (IOException e) {
                        l15Var.e(Long.valueOf(vc7Var.b.a), e, "Caught exception while closing TreeConnect with id: {}");
                    }
                }
                reentrantReadWriteLock.writeLock().lock();
                try {
                    for (j87 j87Var : this.p.values()) {
                        l15Var.y(Long.valueOf(j87Var.a), Long.valueOf(this.a), "Logging off nested session {} for session {}");
                        try {
                            j87Var.m();
                        } catch (va8 unused) {
                            l15Var.t(Long.valueOf(j87Var.a), "Caught exception while logging off nested session {}");
                        }
                    }
                    reentrantReadWriteLock.writeLock().unlock();
                    try {
                        ht6 ht6Var = (ht6) n(new ht6(4, (us6) ur1Var.c.b.e, it6.SMB2_LOGOFF, this.a, 0L)).a.get(this.c.o, TimeUnit.MILLISECONDS);
                        if (bp5.a(((ut6) ht6Var.a).j)) {
                            cv6Var.a.g(new d97(this.a));
                            return;
                        }
                        throw new yu6((ut6) ht6Var.a, "Could not logoff session <<" + this.a + ">>");
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                        throw new va8(e2);
                    } catch (ExecutionException e3) {
                        e = e3;
                        if (e instanceof va8) {
                            throw new va8(e);
                        }
                    } catch (TimeoutException e4) {
                        e = e4;
                        if (e instanceof va8) {
                            throw new va8(e);
                        }
                    }
                } catch (Throwable th) {
                    reentrantReadWriteLock.writeLock().unlock();
                    throw th;
                }
            } catch (Throwable th2) {
                reentrantReadWriteLock2.readLock().unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            cv6Var.a.g(new d97(this.a));
            throw th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0048  */
    public final p21 n(rt6 rt6Var) throws va8 {
        boolean z;
        SecretKey secretKeyJ = j((ut6) rt6Var.c(), true);
        n87 n87Var = this.t;
        if (n87Var.a && secretKeyJ == null) {
            throw new va8("Message signing is required, but no signing key is negotiated");
        }
        boolean z2 = n87Var.b;
        if (z2 && n87Var.f == null) {
            throw new va8("Message encryption is required, but no encryption key is negotiated");
        }
        SecretKeySpec secretKeySpec = n87Var.f;
        ur1 ur1Var = this.b;
        if (secretKeySpec != null) {
            xr1 xr1Var = ur1Var.c;
            z = ((us6) xr1Var.b.e).a() && xr1Var.b();
        }
        if (!z && !z2) {
            return ur1Var.j(this.f.f(rt6Var, secretKeyJ));
        }
        SecretKeySpec secretKeySpec2 = n87Var.f;
        jw5 jw5Var = this.k;
        jw5Var.getClass();
        if (secretKeySpec2 != null) {
            rt6Var = new iw5(jw5Var, rt6Var, secretKeySpec2);
        } else {
            jw5.d.D(((ut6) rt6Var.c()).e, "Not wrapping {} as encrypted, as no key is set.");
        }
        return ur1Var.j(rt6Var);
    }
}
