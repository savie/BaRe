package defpackage;

import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oi5 implements Closeable {
    public static final gv7 L = new gv7(new jx(14));
    public final gv7 G;
    public final gv7 H;
    public final gv7 I;
    public final AtomicLong J;
    public final AtomicLong K;
    public final st3 a;
    public final q63 b;
    public final long c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String k;
    public final ja1 n;
    public final Object p;
    public final String q;
    public volatile boolean r;
    public final q63 t;
    public final q63 x;
    public final q63 y;

    public oi5(st3 st3Var, q63 q63Var, long j, boolean z, String str, String str2, boolean z2, boolean z3) throws NoSuchAlgorithmException {
        q63Var.getClass();
        this.a = st3Var;
        this.b = q63Var;
        this.c = j;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.k = "Downloader: ".concat(str);
        this.n = new ja1();
        this.p = new Object();
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str2.getBytes(f51.a);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        bArrDigest.getClass();
        this.q = x50.t0(bArrDigest, "", new nk(9), 30);
        this.t = q63Var;
        this.x = new q63(q63Var.v().concat(".download"), q63Var.o());
        this.y = new q63(q63Var.v().concat(".download.meta"), q63Var.o());
        this.G = new gv7(new as4(this, 4));
        this.H = new gv7(new pr4(this, 5));
        this.I = new gv7(new lf(this, 29));
        this.J = new AtomicLong(0L);
        this.K = new AtomicLong(0L);
    }

    public final void a(ni5 ni5Var, mt3 mt3Var) {
        if (ni5Var.a()) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                AtomicLong atomicLong = this.K;
                long j = atomicLong.get();
                if (jCurrentTimeMillis - j >= 2000 && atomicLong.compareAndSet(j, jCurrentTimeMillis)) {
                    long j2 = this.J.get();
                    long j3 = this.c;
                    if (j2 > j3) {
                        j2 = j3;
                    }
                    mt3Var.invoke(Long.valueOf(j2));
                    return;
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        long j4 = ni5Var.d.get() + ni5Var.b;
        long j5 = (ni5Var.c - j4) + 1;
        if (j5 <= 0) {
            throw new IllegalStateException(("Invalid remaining byte count for chunk #" + ni5Var.a + ": " + j5).toString());
        }
        try {
            OutputStream outputStreamG = g(ni5Var, j4, j5, mt3Var);
            try {
                this.a.d(Long.valueOf(j4), Long.valueOf(ni5Var.c), Long.valueOf(j5), outputStreamG);
                outputStreamG.close();
                if (!this.r && !ni5Var.a()) {
                    h((List) this.I.getValue());
                }
                if (ni5Var.a()) {
                    if (this.r) {
                        return;
                    }
                    h((List) this.I.getValue());
                    return;
                }
                p93 p93Var = p93.a;
                String strC = p93.c(Long.valueOf(ni5Var.e));
                String strC2 = p93.c(Long.valueOf(ni5Var.d.get()));
                throw new IllegalStateException(("Chunk #" + ni5Var.a + " size '" + strC + "' doesn't match written size: " + strC2).toString());
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(outputStreamG, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            if (this.r) {
                throw th3;
            }
            h((List) this.I.getValue());
            throw th3;
        }
    }

    public final void b(final mt3 mt3Var) {
        long j = this.c;
        if (j <= 0) {
            f6.g(u48.l(j, "Remote file size must be known before using MultiThreadDownloader. totalBytes="));
            return;
        }
        io4.g(this.b);
        final List<ni5> list = (List) this.I.getValue();
        if (this.f && list.size() < 2) {
            l0.e("Multithreaded download requires at least 2 chunks.");
            return;
        }
        Long lValueOf = Long.valueOf(this.c);
        p93 p93Var = p93.a;
        String strC = p93.c(lValueOf);
        String str = list.size() == 1 ? "chunk" : "chunks";
        AtomicLong atomicLong = this.J;
        Iterator it = list.iterator();
        long j2 = 0;
        while (it.hasNext()) {
            j2 += ((ni5) it.next()).d.get();
        }
        atomicLong.set(j2);
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, this.k, "Downloading " + list.size() + TokenAuthenticationScheme.SCHEME_DELIMITER + str + " with total size " + strC, null, 4, null);
        long j3 = this.J.get();
        Long lValueOf2 = Long.valueOf(j3);
        if (j3 <= 0) {
            lValueOf2 = null;
        }
        if (lValueOf2 != null) {
            Long lValueOf3 = Long.valueOf(lValueOf2.longValue());
            p93 p93Var2 = p93.a;
            vr6.i$default(vr6Var, this.k, dj7.l("Resuming previous download session: Downloaded ", p93.c(lValueOf3), " of ", strC), null, 4, null);
        }
        try {
            System.currentTimeMillis();
            this.K.get();
            long j4 = this.J.get();
            long j5 = this.c;
            if (j4 > j5) {
                j4 = j5;
            }
            mt3Var.invoke(Long.valueOf(j4));
        } catch (Exception unused) {
        }
        int i = 0;
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        for (final ni5 ni5Var : list) {
            zn4 zn4Var = zn4.a;
            final String str2 = str;
            arrayList.add(new vn4(new bt3() { // from class: li5
                @Override // defpackage.bt3
                public final Object invoke() {
                    oi5 oi5Var = this.a;
                    ni5 ni5Var2 = ni5Var;
                    mt3 mt3Var2 = mt3Var;
                    AtomicInteger atomicInteger2 = atomicInteger;
                    List list2 = list;
                    String str3 = str2;
                    try {
                        oi5Var.a(ni5Var2, mt3Var2);
                        int iIncrementAndGet = atomicInteger2.incrementAndGet();
                        if (list2.size() > 1 && iIncrementAndGet == list2.size()) {
                            vr6.d$default(vr6.INSTANCE, oi5Var.k, iIncrementAndGet + " / " + list2.size() + TokenAuthenticationScheme.SCHEME_DELIMITER + str3 + " downloaded", null, 4, null);
                        }
                        return be8.a;
                    } catch (Exception e) {
                        Log.e(oi5Var.k, "Error while downloading Chunk #" + ni5Var2.a, e);
                        return Boolean.valueOf(copyOnWriteArrayList.add(e));
                    }
                }
            }));
            str = str2;
        }
        zn4 zn4Var2 = zn4.a;
        zn4.a(((Number) this.H.getValue()).intValue(), arrayList, true);
        boolean zIsEmpty = copyOnWriteArrayList.isEmpty();
        boolean z = this.r;
        if (!zIsEmpty) {
            if (!z) {
                this.r = true;
                f13.a(this.n);
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (hashSet.add(((Exception) obj).getMessage())) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() > 1) {
                vr6.e$default(vr6.INSTANCE, this.k, "Multiple errors during download, will throw only first error to caller.", null, 4, null);
                for (Object obj2 : arrayList2) {
                    int i2 = i + 1;
                    if (i < 0) {
                        fl1.F0();
                        throw null;
                    }
                    Exception exc = (Exception) obj2;
                    vr6 vr6Var2 = vr6.INSTANCE;
                    String str3 = this.k;
                    exc.getClass();
                    vr6.e$default(vr6Var2, str3, u48.k(i2, "Error #", ": ", io4.b(exc)), null, 4, null);
                    i = i2;
                }
            }
            Object objS0 = el1.S0(arrayList2);
            objS0.getClass();
            throw ((Throwable) objS0);
        }
        if (z) {
            l0.e("Downloader closed before finalizing output file.");
            return;
        }
        if (!list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (!((ni5) it2.next()).a()) {
                    l0.e("Download incomplete even though no chunk reported an error.");
                    return;
                }
            }
        }
        long jA = this.x.A();
        long j6 = this.c;
        if (jA != j6) {
            long jA2 = this.x.A();
            StringBuilder sbT = dj7.t("Downloaded file size mismatch. Expected=", ", Actual=", j6);
            sbT.append(jA2);
            throw new IllegalStateException(sbT.toString().toString());
        }
        try {
            System.currentTimeMillis();
            this.K.get();
            long j7 = this.J.get();
            long j8 = this.c;
            if (j7 > j8) {
                j7 = j8;
            }
            mt3Var.invoke(Long.valueOf(j7));
        } catch (Exception unused2) {
        }
        q63 q63Var = this.x;
        q63 q63Var2 = this.t;
        if (q63Var2.j() && !q63Var2.h()) {
            this.b.h();
        }
        if (q63Var2.j()) {
            g84.f("Unable to replace existing output file: ".concat(q63Var2.v()));
        } else {
            if (!q63Var.I(q63Var2)) {
                g84.f(dj7.l("Unable to publish downloaded file: ", q63Var.v(), " -> ", q63Var2.v()));
                return;
            }
            try {
                this.y.h();
            } catch (Exception unused3) {
            }
            try {
                new q63(this.y.v().concat(".tmp"), this.y.o()).h();
            } catch (Exception unused4) {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.r) {
            return;
        }
        this.r = true;
        f13.a(this.n);
        try {
            this.x.h();
        } catch (Exception unused) {
        }
        try {
            this.y.h();
        } catch (Exception unused2) {
        }
    }

    public final OutputStream g(ni5 ni5Var, long j, long j2, mt3 mt3Var) {
        mi5 mi5Var = new mi5(ni5Var, this, mt3Var);
        if (ni5Var.d.get() != 0 || ((List) this.I.getValue()).size() != 1) {
            return new h36(this.x, j, j2, this.n, mi5Var);
        }
        boolean z = q63.d;
        return new m77(this.x.F(true), j2, this.n, mi5Var);
    }

    public final void h(List list) {
        synchronized (this.p) {
            try {
                q63 q63VarT = this.y.t();
                if (q63VarT != null) {
                    q63.E(q63VarT);
                }
                Properties properties = new Properties();
                properties.setProperty("version", "1");
                properties.setProperty("cacheKeyHash", this.q);
                properties.setProperty("outputPath", this.b.v());
                properties.setProperty("totalBytes", String.valueOf(this.c));
                properties.setProperty("chunkCount", String.valueOf(list.size()));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ni5 ni5Var = (ni5) it.next();
                    properties.setProperty("chunk." + ni5Var.a + ".rangeStart", String.valueOf(ni5Var.b));
                    properties.setProperty("chunk." + ni5Var.a + ".rangeEnd", String.valueOf(ni5Var.c));
                    properties.setProperty("chunk." + ni5Var.a + ".completed", String.valueOf(ni5Var.d.get()));
                }
                q63 q63Var = new q63(this.y.v() + ".tmp", this.y.o());
                OutputStream outputStreamF = q63Var.F(true);
                try {
                    properties.store(outputStreamF, (String) null);
                    outputStreamF.close();
                    if (this.y.j() && !this.y.h()) {
                        throw new IOException("Unable to replace download manifest: " + this.y.v());
                    }
                    if (!q63Var.I(this.y)) {
                        throw new IOException("Unable to write download manifest: " + this.y.v());
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(outputStreamF, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
