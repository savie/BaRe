package defpackage;

import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ur1 implements Closeable {
    public static final l15 I = o15.b(ur1.class);
    public static final jq6 J;
    public final cv6 G;
    public final ReentrantLock H;
    public final AtomicInteger a = new AtomicInteger(1);
    public final uu6 b;
    public xr1 c;
    public final la d;
    public final la e;
    public final gd f;
    public final ro k;
    public ke n;
    public final av6 p;
    public final yf1 q;
    public final tf7 r;
    public final jw5 t;
    public final di7 x;
    public final yl2 y;

    static {
        kw5[] kw5VarArr = {new us2(23), new fo8(13), new sl4(), new ge()};
        jq6 jq6Var = new jq6(6);
        jq6Var.b = kw5VarArr;
        J = jq6Var;
    }

    public ur1(di7 di7Var, av6 av6Var, cv6 cv6Var, yf1 yf1Var) {
        la laVar = new la(7);
        this.d = laVar;
        this.e = new la(7);
        gd gdVar = new gd(5);
        gdVar.b = new ReentrantReadWriteLock();
        gdVar.c = new HashMap();
        gdVar.d = new HashMap();
        this.f = gdVar;
        jt6 jt6Var = new jt6();
        this.H = new ReentrantLock();
        this.x = di7Var;
        this.p = av6Var;
        cz4 cz4Var = di7Var.n;
        u00 u00Var = new u00(6, new lk(), this, J);
        cz4Var.getClass();
        SocketFactory socketFactory = di7Var.c;
        int i = di7Var.s;
        yl2 yl2Var = new yl2();
        yl2Var.b = o15.b(yl2.class);
        yl2Var.d = new ReentrantReadWriteLock();
        new ma6();
        yl2Var.a = i;
        yl2Var.e = socketFactory;
        yl2Var.c = u00Var;
        this.y = yl2Var;
        this.G = cv6Var;
        this.q = yf1Var;
        cv6Var.a(this);
        ro roVar = new ro(14);
        roVar.b = new AtomicLong(0L);
        roVar.c = new Semaphore(1);
        this.k = roVar;
        if (di7Var.f) {
            lv1 lv1Var = di7Var.h;
            nw5 nw5Var = new nw5();
            nw5Var.a = lv1Var;
            this.r = nw5Var;
        } else {
            I.x("Signing is disabled for this connection.");
            this.r = new us2(19);
        }
        lv1 lv1Var2 = di7Var.h;
        jw5 jw5Var = new jw5();
        boolean z = false;
        new AtomicInteger(0);
        jw5Var.a = lv1Var2;
        this.t = jw5Var;
        jw5 jw5Var2 = this.t;
        int i2 = 4;
        uu6 uu6Var = new uu6(i2, z);
        uu6Var.e = laVar;
        uu6Var.f = jw5Var2;
        ls6 ls6Var = new ls6(i2, z);
        ft6 ft6Var = new ft6(i2, z);
        ft6Var.e = gdVar;
        tf7 tf7Var = this.r;
        mu6 mu6Var = new mu6(i2, z);
        mu6Var.e = laVar;
        mu6Var.f = tf7Var;
        ro roVar2 = this.k;
        ss6 ss6Var = new ss6(i2, z);
        ss6Var.e = roVar2;
        hs6 hs6Var = new hs6(i2, z);
        hs6Var.e = gdVar;
        wt6 wt6Var = new wt6(jt6Var, gdVar);
        gs6 gs6Var = new gs6(i2, z);
        gs6Var.b = new ld2(i2, z);
        wt6Var.b = gs6Var;
        hs6Var.b = wt6Var;
        ss6Var.b = hs6Var;
        mu6Var.b = ss6Var;
        ft6Var.b = mu6Var;
        ls6Var.b = ft6Var;
        uu6Var.b = ls6Var;
        this.b = uu6Var;
    }

    @o24
    private void n(d97 d97Var) {
        this.d.f(Long.valueOf(d97Var.a));
        I.D(Long.valueOf(d97Var.a), "Session << {} >> logged off");
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b A[Catch: fk7 | IOException -> 0x009a, fk7 | IOException -> 0x009a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {fk7 | IOException -> 0x009a, blocks: (B:3:0x000d, B:4:0x0011, B:6:0x0019, B:6:0x0019, B:9:0x0025, B:11:0x002d, B:18:0x003b, B:18:0x003b, B:19:0x003f, B:20:0x004c, B:21:0x0055, B:21:0x0055, B:22:0x005a, B:23:0x0061, B:23:0x0061, B:24:0x0083, B:26:0x0091, B:29:0x0096, B:30:0x0099), top: B:34:0x000d }] */
    public final j87 a(h80 h80Var) {
        ln5 ln5Var = new ln5(this, 5);
        di7 di7Var = this.x;
        iv6 iv6Var = new iv6(this, di7Var, ln5Var);
        try {
            l80 l80VarB = iv6Var.b(h80Var);
            try {
                String str = (String) h80Var.b;
                if (l80VarB instanceof fp5) {
                    di7Var.r.getClass();
                    if (h80Var.f()) {
                        if (str.equals("Guest") && ((char[]) h80Var.c).length == 0) {
                            fp5 fp5Var = (fp5) l80VarB;
                            mp5 mp5Var = new mp5();
                            mp5Var.e = new AtomicInteger(0);
                            mp5Var.a = fp5Var;
                            l80VarB = mp5Var;
                        }
                    } else {
                        fp5 fp5Var2 = (fp5) l80VarB;
                        mp5 mp5Var2 = new mp5();
                        mp5Var2.e = new AtomicInteger(0);
                        mp5Var2.a = fp5Var2;
                        l80VarB = mp5Var2;
                    }
                }
                hv6 hv6Var = new hv6();
                hv6Var.a = l80VarB;
                hv6Var.d = h80Var;
                l80VarB.c(di7Var);
                byte[] bArr = iv6Var.b.a;
                iv6Var.d(hv6Var, Arrays.copyOf(bArr, bArr.length));
                j87 j87VarE = iv6Var.e(hv6Var);
                iv6.r.E(str, h(), Long.valueOf(j87VarE.a));
                la laVar = iv6Var.d;
                Long lValueOf = Long.valueOf(j87VarE.a);
                ReentrantLock reentrantLock = (ReentrantLock) laVar.a;
                reentrantLock.lock();
                try {
                    ((HashMap) laVar.b).put(lValueOf, j87VarE);
                    return j87VarE;
                } finally {
                    reentrantLock.unlock();
                }
            } catch (IOException e) {
                e = e;
                throw new gv6(e);
            }
        } catch (fk7 | IOException e2) {
            e = e2;
        }
    }

    public final void b(boolean z) {
        if (z || this.a.decrementAndGet() <= 0) {
            cv6 cv6Var = this.G;
            yl2 yl2Var = this.y;
            l15 l15Var = I;
            if (!z) {
                try {
                    la laVar = this.d;
                    ReentrantLock reentrantLock = (ReentrantLock) laVar.a;
                    reentrantLock.lock();
                    try {
                        ArrayList<j87> arrayList = new ArrayList(((HashMap) laVar.b).values());
                        reentrantLock.unlock();
                        for (j87 j87Var : arrayList) {
                            try {
                                j87Var.m();
                            } catch (IOException e) {
                                l15Var.C(Long.valueOf(j87Var.a), e, "Exception while closing session {}");
                            }
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                } catch (Throwable th2) {
                    yl2Var.c();
                    l15Var.a(h(), "Closed connection to {}");
                    e87 e87Var = this.c.c;
                    cv6Var.a.g(new wr1(e87Var.b, e87Var.c));
                    throw th2;
                }
            }
            yl2Var.c();
            l15Var.a(h(), "Closed connection to {}");
            e87 e87Var2 = this.c.c;
            cv6Var.a.g(new wr1(e87Var2.b, e87Var2.c));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b(false);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0116  */
    /* JADX WARN: Code duplicated, block: B:29:0x0119  */
    public final void g(int i, String str) throws IOException {
        pt6 pt6VarA;
        yl2 yl2Var = this.y;
        if (yl2Var.e()) {
            l0.e(xs1.j("This connection is already connected to ", h()));
            return;
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i);
        String hostString = inetSocketAddress.getHostString();
        Socket socketCreateSocket = ((SocketFactory) yl2Var.e).createSocket(hostString, inetSocketAddress.getPort());
        yl2Var.f = socketCreateSocket;
        socketCreateSocket.setSoTimeout(yl2Var.a);
        yl2Var.g = new BufferedOutputStream(((Socket) yl2Var.f).getOutputStream(), 9000);
        InputStream inputStream = ((Socket) yl2Var.f).getInputStream();
        u00 u00Var = (u00) yl2Var.c;
        xl2 xl2Var = new xl2(hostString, inputStream, (kw5) u00Var.d, (ur1) u00Var.c);
        yl2Var.h = xl2Var;
        Thread thread = xl2Var.e;
        xl2Var.a.D(thread.getName(), "Starting PacketReader on thread: {}");
        thread.start();
        di7 di7Var = this.x;
        this.c = new xr1(di7Var.e, str, i, di7Var);
        fv6 fv6Var = new fv6(this, di7Var, this.c);
        l15 l15Var = fv6.e;
        di7 di7Var2 = fv6Var.a;
        l15Var.D(EnumSet.copyOf((Collection) di7Var2.a), "Negotiating dialects {}");
        boolean z = di7Var2.g;
        ur1 ur1Var = fv6Var.c;
        int i2 = 1;
        ij2 ij2Var = fv6Var.d;
        if (z) {
            EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) di7Var2.a);
            ds6 ds6Var = new ds6(new es6());
            ds6Var.c = enumSetCopyOf;
            long j = ur1Var.k.f(1)[0];
            if (j != 0) {
                l0.e("The SMBv1 SMB_COM_NEGOTIATE packet needs to be the first packet sent.");
                return;
            }
            jk6 jk6Var = new jk6(ds6Var, j, UUID.randomUUID());
            ur1Var.f.m(jk6Var);
            ij2Var.a = ds6Var;
            ur1Var.y.f(ds6Var);
            m86 m86Var = jk6Var.a;
            m86Var.getClass();
            new AtomicBoolean(false);
            new ReentrantReadWriteLock();
            try {
                Object objA = m86Var.a(di7Var2.o, TimeUnit.MILLISECONDS);
                if (objA == null) {
                    throw ((nh4) m86Var.d).r(new TimeoutException("Timeout expired"));
                }
                rt6 rt6Var = (rt6) objA;
                if (!(rt6Var instanceof pt6)) {
                    y5.g(rt6Var, "Expected a SMB2 NEGOTIATE Response to our SMB_COM_NEGOTIATE, but got: ");
                    return;
                } else {
                    pt6VarA = (pt6) rt6Var;
                    if (pt6VarA.f == us6.SMB_2XX) {
                        pt6VarA = fv6Var.a();
                    }
                }
            } catch (Throwable th) {
                try {
                    throw new ExecutionException(th);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new va8(e);
                } catch (ExecutionException e2) {
                    e = e2;
                    if (e instanceof va8) {
                        throw new va8(e);
                    }
                    throw ((va8) e);
                } catch (TimeoutException e3) {
                    e = e3;
                    if (e instanceof va8) {
                        throw new va8(e);
                    }
                    throw ((va8) e);
                }
            }
        } else {
            pt6VarA = fv6Var.a();
        }
        ij2Var.b = pt6VarA;
        if (!bp5.a(((ut6) pt6VarA.a).j)) {
            throw new yu6((ut6) pt6VarA.a, "Failure during dialect negotiation");
        }
        pt6 pt6Var = (pt6) ij2Var.b;
        us6 us6Var = pt6Var.f;
        int i3 = 2;
        wu6 wu6Var = wu6.d;
        us6 us6Var2 = us6.SMB_3_1_1;
        if (us6Var == us6Var2) {
            List<mt6> list = pt6Var.m;
            if (list == null) {
                l0.e("negotiate context list is null for SMB 3.1.1 dialect");
                return;
            }
            boolean z2 = false;
            int i4 = 0;
            int i5 = 0;
            for (mt6 mt6Var : list) {
                int iOrdinal = mt6Var.a.ordinal();
                if (iOrdinal == 0) {
                    if (z2) {
                        l0.e("SMB2_PREAUTH_INTEGRITY_CAPABILITIES should only appear once in the NegotiateContextList");
                        return;
                    }
                    List list2 = ((vt6) mt6Var).b;
                    if (list2.size() != i2) {
                        l0.e("The SMB2PreauthIntegrityCapabilities NegotiateContext does not contain exactly 1 hash algorithm");
                        return;
                    }
                    ij2Var.d = (xu6) list2.get(0);
                    byte[] bArrP = vm4.p((ev6) ij2Var.a);
                    byte[] bArrP2 = vm4.p((pt6) ij2Var.b);
                    ((xu6) ij2Var.d).getClass();
                    try {
                        di7Var2.h.getClass();
                        qg0 qg0Var = new qg0("SHA-512");
                        hl2 hl2Var = qg0Var.a;
                        byte[] bArr = new byte[hl2Var.c()];
                        hl2Var.reset();
                        qg0Var.b(bArr);
                        hl2Var.update(bArrP, 0, bArrP.length);
                        byte[] bArrA = qg0Var.a();
                        hl2Var.reset();
                        qg0Var.b(bArrA);
                        hl2Var.update(bArrP2, 0, bArrP2.length);
                        ij2Var.e = qg0Var.a();
                        z2 = true;
                    } catch (h67 e4) {
                        throw new gv6("Cannot get the message digest for SHA-512", e4);
                    }
                } else if (iOrdinal != i2) {
                    if (iOrdinal != i3) {
                        l0.e("unknown negotiate context type");
                        return;
                    }
                    if (i5 != 0) {
                        l0.e("SMB2_COMPRESSION_CAPABILITIES should only appear once in the NegotiateContextList");
                        return;
                    }
                    ArrayList arrayList = ((ms6) mt6Var).b;
                    if (arrayList.size() == 0) {
                        l0.e("The SMB2CompressionCapabilities NegotiateContext should contain at least 1 algorithm");
                        return;
                    }
                    if (arrayList.size() == i2 && arrayList.get(0) == tu6.NONE) {
                        l15Var.w("SMB3CompressionAlgorithm is 'NONE', continuing without compression");
                    } else {
                        EnumSet.copyOf((Collection) arrayList);
                    }
                    i5 = i2;
                } else {
                    if (i4 != 0) {
                        l0.e("SMB2_ENCRYPTION_CAPABILITIES should only appear once in the NegotiateContextList");
                        return;
                    }
                    List list3 = ((ws6) mt6Var).b;
                    if (list3.size() != i2) {
                        l0.e("The SMB2EncryptionCapabilities NegotiateContext does not contain exactly 1 cipher");
                        return;
                    } else {
                        ij2Var.c = (wu6) list3.get(0);
                        i4 = i2;
                    }
                }
                di7Var2 = di7Var2;
                i2 = 1;
                i3 = 2;
            }
        } else if (us6Var.a() && ((pt6) ij2Var.b).h.contains(bt6.SMB2_GLOBAL_CAP_ENCRYPTION)) {
            ij2Var.c = wu6Var;
        }
        xr1 xr1Var = fv6Var.b;
        e87 e87Var = xr1Var.c;
        pt6 pt6Var2 = (pt6) ij2Var.b;
        UUID uuid = pt6Var2.g;
        us6 us6Var3 = pt6Var2.f;
        int i6 = pt6Var2.e;
        EnumSet enumSet = pt6Var2.h;
        boolean z3 = e87Var.a;
        String str2 = e87Var.b;
        if (z3) {
            l0.e(eq3.k("Server object '", str2, "' already initialized"));
            return;
        }
        e87Var.a = true;
        e87Var.d = uuid;
        e87Var.e = us6Var3;
        e87Var.f = i6;
        e87Var.g = enumSet;
        yf1 yf1Var = ur1Var.q;
        ReentrantLock reentrantLock = (ReentrantLock) yf1Var.b;
        reentrantLock.lock();
        try {
            e87 e87Var2 = (e87) ((HashMap) yf1Var.c).get(str2);
            reentrantLock.unlock();
            if (e87Var2 == null) {
                yf1 yf1Var2 = ur1Var.q;
                ReentrantLock reentrantLock2 = (ReentrantLock) yf1Var2.b;
                reentrantLock2.lock();
                try {
                    ((HashMap) yf1Var2.c).put(str2, e87Var);
                    reentrantLock2.unlock();
                    ij2Var.f = e87Var;
                } catch (Throwable th2) {
                    reentrantLock2.unlock();
                    throw th2;
                }
            } else {
                boolean zEquals = e87Var2.d.equals(e87Var.d);
                boolean zEquals2 = e87Var2.e.equals(e87Var.e);
                boolean z4 = e87Var2.f == e87Var.f;
                boolean zEquals3 = e87Var2.g.equals(e87Var.g);
                if (!zEquals || !zEquals2 || !z4 || !zEquals3) {
                    throw new va8(eq3.k("Different server found for same hostname '", str2, "', disconnecting..."));
                }
                ij2Var.f = e87Var2;
            }
            pt6 pt6Var3 = (pt6) ij2Var.b;
            xr1Var.c = (e87) ij2Var.f;
            us6 us6Var4 = pt6Var3.f;
            int iMax = pt6Var3.i;
            int iMax2 = pt6Var3.j;
            int iMax3 = pt6Var3.k;
            boolean zA = xr1Var.a(bt6.SMB2_GLOBAL_CAP_LARGE_MTU);
            ru3 ru3Var = new ru3(2);
            ru3Var.e = us6Var4;
            if (!zA) {
                iMax = Math.max(iMax, 65536);
            }
            ru3Var.b = iMax;
            if (!zA) {
                iMax2 = Math.max(iMax2, 65536);
            }
            ru3Var.c = iMax2;
            if (!zA) {
                iMax3 = Math.max(iMax3, 65536);
            }
            ru3Var.d = iMax3;
            xr1Var.b = ru3Var;
            xr1Var.i = (wu6) ij2Var.c;
            xr1Var.g = (xu6) ij2Var.d;
            byte[] bArr2 = (byte[]) ij2Var.e;
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            xr1Var.h = bArr2;
            System.currentTimeMillis();
            pt6Var3.l.getClass();
            l15Var.D(xr1Var, "Negotiated the following connection settings: {}");
            xr1 xr1Var2 = this.c;
            jw5 jw5Var = this.t;
            jw5Var.getClass();
            us6 us6Var5 = (us6) xr1Var2.b.e;
            jw5Var.c = us6Var5;
            if (us6Var5.equals(us6Var2)) {
                jw5Var.b = xr1Var2.i;
            } else {
                jw5Var.b = wu6Var;
            }
            jw5.d.a(jw5Var.b, "Initialized PacketEncryptor with Cipher << {} >>");
            ke keVar = new ke(14);
            keVar.b = new fo8(16);
            this.n = keVar;
            I.a(h(), "Successfully connected to: {}");
        } catch (Throwable th3) {
            reentrantLock.unlock();
            throw th3;
        }
    }

    public final String h() {
        return this.c.c.b;
    }

    public final p21 j(rt6 rt6Var) {
        p21 p21Var;
        ro roVar = this.k;
        if (rt6Var.e() instanceof is6) {
            p21Var = null;
        } else {
            ReentrantLock reentrantLock = this.H;
            reentrantLock.lock();
            try {
                int iAvailablePermits = ((Semaphore) roVar.c).availablePermits();
                int i = 1;
                int iAbs = Math.abs((rt6Var.d() - 1) / 65536) + 1;
                l15 l15Var = I;
                if (iAbs > 1 && !this.c.a(bt6.SMB2_GLOBAL_CAP_LARGE_MTU)) {
                    l15Var.g(h(), "Connection to {} does not support multi-credit requests.");
                } else if (iAbs < iAvailablePermits) {
                    i = iAbs;
                } else if (iAbs > 1 && iAvailablePermits > 1) {
                    i = iAvailablePermits - 1;
                }
                ((ut6) rt6Var.c()).b = i;
                if (iAvailablePermits == 0) {
                    l15Var.i(((ut6) rt6Var.c()).e, "There are no credits left to send {}, will block until there are more credits available.");
                }
                ((ut6) rt6Var.c()).f = roVar.f(i)[0];
                ((ut6) rt6Var.c()).c = Math.max((512 - iAvailablePermits) - i, i);
                l15Var.o("Granted {} (out of {}) credits to {}", Integer.valueOf(i), Integer.valueOf(iAvailablePermits), rt6Var);
                reentrantLock.unlock();
                jk6 jk6Var = new jk6(rt6Var.e(), ((ut6) rt6Var.c()).f, UUID.randomUUID());
                this.f.m(jk6Var);
                tr1 tr1Var = new tr1(this, jk6Var, ((ut6) rt6Var.c()).h);
                m86 m86Var = jk6Var.a;
                m86Var.getClass();
                n86 n86Var = new n86();
                n86Var.a = m86Var;
                p21Var = new p21(n86Var, tr1Var);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        this.y.f(rt6Var);
        return p21Var;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:12:0x001d  */
    public final rt6 m(rt6 rt6Var) throws va8 {
        p21 p21VarJ = j(rt6Var);
        try {
            return (rt6) p21VarJ.a.get(this.x.o, TimeUnit.MILLISECONDS);
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
    }
}
