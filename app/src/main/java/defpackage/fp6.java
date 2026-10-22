package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.swiftapps.sba.SbaLibaegisCryptoNative;
import com.swiftapps.sba.SbaRuntimeNative;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class fp6 extends y84 {
    private static final long CACHE_TTL_MILLIS = 30000;
    private static final long COMPLETED_OPERATION_TTL_MILLIS = 300000;
    private static final yo6 Companion = new yo6();
    private static final int MAX_ARCHIVE_INFO_CACHE_ENTRIES = 4;
    private static final int MAX_TAR_ENTRY_CACHE_ENTRIES = 2;
    private static final String RAW_REMOVABLE_STORAGE_PREFIX = "/mnt/media_rw/";
    private final LinkedHashMap<wo6, xo6> archiveInfoCache;
    private final Object cacheLock;
    private final Context context;
    private final ExecutorService executor;
    private final AtomicLong operationIds;
    private final ConcurrentHashMap<Long, ap6> operations;
    private final LinkedHashMap<ep6, xo6> tarEntryCache;

    public fp6(Context context) {
        attachInterface(this, "org.swiftapps.rootservice.IRootAidlInterface");
        this.context = context;
        this.operationIds = new AtomicLong(1L);
        this.operations = new ConcurrentHashMap<>();
        this.executor = Executors.newCachedThreadPool();
        this.cacheLock = new Object();
        this.archiveInfoCache = new LinkedHashMap<>();
        this.tarEntryCache = new LinkedHashMap<>();
    }

    public static void g(LinkedHashMap linkedHashMap, long j) {
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            if (j - ((xo6) ((Map.Entry) it.next()).getValue()).b >= 30000) {
                it.remove();
            }
        }
    }

    public static zo6 j(String str) {
        File absoluteFile = new File(str).getAbsoluteFile();
        String path = absoluteFile.getPath();
        path.getClass();
        return new zo6(absoluteFile.length(), absoluteFile.lastModified(), path);
    }

    public static ap6 l(long j, String str) {
        return new ap6(new AtomicReference(new o17(j, 0, 0, 0, null, str, 0L, 0L, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560)));
    }

    public static void m(ap6 ap6Var, o17 o17Var) {
        ap6Var.d.set(o17Var);
        int i = o17Var.b;
        if (i == 0 || i == 1) {
            return;
        }
        ap6Var.c.compareAndSet(0L, SystemClock.elapsedRealtime());
    }

    public static void n(ap6 ap6Var) throws zz6 {
        if (((Boolean) ap6Var.b.get()).booleanValue()) {
            throw new zz6(null, 3);
        }
    }

    public static RemoteException o(String str, Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            message = th.getClass().getSimpleName();
        }
        RemoteException remoteException = new RemoteException(dj7.k(str, ": ", message));
        remoteException.initCause(th);
        return remoteException;
    }

    public static int p(Throwable th) {
        if (th instanceof zz6) {
            return 0;
        }
        if (th instanceof IllegalArgumentException) {
            return 3;
        }
        if (th instanceof yy6) {
            return 4;
        }
        return th instanceof IOException ? 5 : 6;
    }

    public static int q(Throwable th) {
        if (th instanceof pz6) {
            return 1;
        }
        if (th instanceof sz6) {
            return 2;
        }
        if (th instanceof rz6) {
            return 4;
        }
        if (th instanceof nz6) {
            return 5;
        }
        return th instanceof yy6 ? 3 : 0;
    }

    public static void r(String str, String str2) throws RemoteException {
        if (nq7.j0(str2)) {
            throw new RemoteException(str.concat(" path is blank"));
        }
        if (!new File(str2).isAbsolute()) {
            throw new RemoteException(dj7.k(str, " path must be absolute: ", str2));
        }
    }

    public static void s(long j) {
        if (j >= 0) {
            return;
        }
        f6.g(u48.l(j, "SBA root progressUpdateIntervalMillis must be >= 0: "));
    }

    public final Object a(LinkedHashMap linkedHashMap, Object obj, int i, bt3 bt3Var) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        synchronized (this.cacheLock) {
            g(linkedHashMap, jElapsedRealtime);
            xo6 xo6Var = (xo6) linkedHashMap.get(obj);
            if (xo6Var != null) {
                if (jElapsedRealtime - xo6Var.b >= 30000) {
                    xo6Var = null;
                }
                if (xo6Var != null) {
                    return xo6Var.a;
                }
            }
            Object objInvoke = bt3Var.invoke();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            synchronized (this.cacheLock) {
                g(linkedHashMap, jElapsedRealtime2);
                xo6 xo6Var2 = (xo6) linkedHashMap.get(obj);
                if (xo6Var2 != null) {
                    xo6 xo6Var3 = jElapsedRealtime2 - xo6Var2.b < 30000 ? xo6Var2 : null;
                    if (xo6Var3 != null) {
                        return xo6Var3.a;
                    }
                }
                linkedHashMap.put(obj, new xo6(objInvoke, jElapsedRealtime2));
                Iterator it = linkedHashMap.keySet().iterator();
                while (linkedHashMap.size() > i && it.hasNext()) {
                    it.next();
                    it.remove();
                }
                return objInvoke;
            }
        }
    }

    @Override // defpackage.z84
    public void cancelSba(long j) throws RemoteException {
        AtomicReference atomicReference;
        ap6 ap6Var = this.operations.get(Long.valueOf(j));
        if (ap6Var == null || (atomicReference = ap6Var.b) == null) {
            return;
        }
        atomicReference.set(Boolean.TRUE);
    }

    @Override // defpackage.z84
    public long createSba(final i17 i17Var, final e94 e94Var) throws RemoteException {
        i17Var.getClass();
        f();
        final long andIncrement = this.operationIds.getAndIncrement();
        final ap6 ap6VarL = l(andIncrement, i17Var.a);
        this.operations.put(Long.valueOf(andIncrement), ap6VarL);
        this.executor.execute(new Runnable() { // from class: so6
            /* JADX WARN: Code duplicated, block: B:30:0x010d  */
            /* JADX WARN: Code duplicated, block: B:31:0x010f  */
            /* JADX WARN: Code duplicated, block: B:39:0x0155  */
            /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                ap6 ap6Var;
                kh6 kh6Var;
                lh6 lh6Var;
                char c;
                int i;
                i17 i17Var2;
                char[] cArr;
                fp6 fp6Var = this.a;
                long j = andIncrement;
                i17 i17Var3 = i17Var;
                e94 e94Var2 = e94Var;
                ap6 ap6Var2 = ap6VarL;
                Object obj = ap6Var2.d.get();
                obj.getClass();
                fp6.m(ap6Var2, o17.c((o17) obj));
                kh6 kh6Var2 = new kh6();
                lh6 lh6Var2 = new lh6();
                try {
                    fp6.n(ap6Var2);
                    long j2 = i17Var3.p;
                    String str = i17Var3.a;
                    fp6.s(j2);
                    dp6 dp6Var = new dp6(j, e94Var2, i17Var3.p);
                    h17 h17VarJ = jd4.j(i17Var3);
                    File file = h17VarJ.a;
                    ArrayList arrayList = h17VarJ.b;
                    f27 f27Var = h17VarJ.c;
                    cy0 cy0Var = h17VarJ.d;
                    zv1 zv1Var = h17VarJ.e;
                    String str2 = h17VarJ.f;
                    boolean z = h17VarJ.g;
                    try {
                        char c2 = 0;
                        try {
                            tu0.d(file, arrayList, f27Var, cy0Var, zv1Var, str2, i17Var3.p, new pf(ap6Var2, 9), new qo6(c2, kh6Var2, dp6Var), new ro6(lh6Var2, fp6Var), z);
                            fp6Var.k(str);
                            ap6Var = ap6Var2;
                            try {
                                j = j;
                                kh6Var = kh6Var2;
                                lh6Var = lh6Var2;
                                try {
                                    fp6.m(ap6Var, new o17(j, 2, 0, 0, null, i17Var3.a, new File(str).length(), ap6Var.a(), (String) lh6Var2.a, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130568));
                                    char[] cArr2 = i17Var3.k;
                                    if (cArr2 != null) {
                                        Arrays.fill(cArr2, 0, cArr2.length, (char) 0);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    i17Var3 = i17Var3;
                                    c2 = 0;
                                    try {
                                        if (th instanceof zz6) {
                                            i = 4;
                                        } else {
                                            i = 3;
                                        }
                                        try {
                                            i17Var2 = i17Var3;
                                            try {
                                                fp6.m(ap6Var, new o17(j, i, fp6.p(th), fp6.q(th), th.getMessage(), i17Var3.a, kh6Var.a, ap6Var.a(), (String) lh6Var.a, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560));
                                                cArr = i17Var2.k;
                                                if (cArr != null) {
                                                    Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                i17Var3 = i17Var2;
                                                c = 0;
                                                char[] cArr3 = i17Var3.k;
                                                if (cArr3 != null) {
                                                    Arrays.fill(cArr3, (int) c, cArr3.length, c);
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            c = c2;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        c = c2;
                                    }
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                kh6Var = kh6Var2;
                                lh6Var = lh6Var2;
                                j = j;
                                if (th instanceof zz6) {
                                    i = 4;
                                } else {
                                    i = 3;
                                }
                                i17Var2 = i17Var3;
                                fp6.m(ap6Var, new o17(j, i, fp6.p(th), fp6.q(th), th.getMessage(), i17Var3.a, kh6Var.a, ap6Var.a(), (String) lh6Var.a, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560));
                                cArr = i17Var2.k;
                                if (cArr != null) {
                                    Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            ap6Var = ap6Var2;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        i17Var3 = i17Var3;
                        ap6Var = ap6Var2;
                        kh6Var = kh6Var2;
                        lh6Var = lh6Var2;
                        j = j;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    i17Var3 = i17Var3;
                    ap6Var = ap6Var2;
                    kh6Var = kh6Var2;
                    lh6Var = lh6Var2;
                }
            }
        });
        return andIncrement;
    }

    @Override // defpackage.z84
    public long extractSba(final m17 m17Var, final e94 e94Var) throws RemoteException {
        m17Var.getClass();
        f();
        final long andIncrement = this.operationIds.getAndIncrement();
        final ap6 ap6VarL = l(andIncrement, m17Var.b);
        this.operations.put(Long.valueOf(andIncrement), ap6VarL);
        this.executor.execute(new Runnable() { // from class: po6
            /* JADX WARN: Code duplicated, block: B:26:0x00e4  */
            /* JADX WARN: Code duplicated, block: B:27:0x00e6  */
            /* JADX WARN: Code duplicated, block: B:35:0x012c  */
            /* JADX WARN: Code duplicated, block: B:62:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                ap6 ap6Var;
                kh6 kh6Var;
                lh6 lh6Var;
                m17 m17Var2;
                int i;
                m17 m17Var3;
                char[] cArr;
                fp6 fp6Var = this.a;
                long j = andIncrement;
                m17 m17Var4 = m17Var;
                e94 e94Var2 = e94Var;
                ap6 ap6Var2 = ap6VarL;
                Object obj = ap6Var2.d.get();
                obj.getClass();
                fp6.m(ap6Var2, o17.c((o17) obj));
                final kh6 kh6Var2 = new kh6();
                lh6 lh6Var2 = new lh6();
                try {
                    fp6.n(ap6Var2);
                    fp6.s(m17Var4.k);
                    final dp6 dp6Var = new dp6(j, e94Var2, m17Var4.k);
                    l17 l17VarN = jd4.n(m17Var4);
                    try {
                        tu0.k(l17VarN.a, l17VarN.b, l17VarN.c, l17VarN.d, l17VarN.e, l17VarN.f, m17Var4.k, new lb(ap6Var2), new h07() { // from class: vo6
                            @Override // defpackage.h07
                            public final void a(f07 f07Var) {
                                kh6Var2.a = f07Var.f;
                                dp6Var.a(f07Var);
                            }
                        }, new cz(lh6Var2, fp6Var), l17VarN.g);
                        ap6Var = ap6Var2;
                        try {
                            j = j;
                            lh6Var = lh6Var2;
                            kh6Var = kh6Var2;
                            try {
                                fp6.m(ap6Var, new o17(j, 2, 0, 0, null, m17Var4.b, kh6Var2.a, ap6Var.a(), (String) lh6Var2.a, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130568));
                                char[] cArr2 = m17Var4.e;
                                if (cArr2 != null) {
                                    Arrays.fill(cArr2, 0, cArr2.length, (char) 0);
                                }
                            } catch (Throwable th) {
                                th = th;
                                m17Var4 = m17Var4;
                                char c = 0;
                                try {
                                    if (th instanceof zz6) {
                                        i = 4;
                                    } else {
                                        i = 3;
                                    }
                                    try {
                                        m17Var3 = m17Var4;
                                        try {
                                            fp6.m(ap6Var, new o17(j, i, fp6.p(th), fp6.q(th), th.getMessage(), m17Var4.b, kh6Var.a, ap6Var.a(), (String) lh6Var.a, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560));
                                            cArr = m17Var3.e;
                                            if (cArr != null) {
                                                Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            m17Var2 = m17Var3;
                                            c = 0;
                                            char[] cArr3 = m17Var2.e;
                                            if (cArr3 != null) {
                                                Arrays.fill(cArr3, (int) c, cArr3.length, c);
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        m17Var2 = m17Var4;
                                        c = 0;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    m17Var2 = m17Var4;
                                }
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            kh6Var = kh6Var2;
                            lh6Var = lh6Var2;
                            j = j;
                            char c2 = 0;
                            if (th instanceof zz6) {
                                i = 4;
                            } else {
                                i = 3;
                            }
                            m17Var3 = m17Var4;
                            fp6.m(ap6Var, new o17(j, i, fp6.p(th), fp6.q(th), th.getMessage(), m17Var4.b, kh6Var.a, ap6Var.a(), (String) lh6Var.a, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560));
                            cArr = m17Var3.e;
                            if (cArr != null) {
                                Arrays.fill(cArr, 0, cArr.length, (char) 0);
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        ap6Var = ap6Var2;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    m17Var4 = m17Var4;
                    ap6Var = ap6Var2;
                    kh6Var = kh6Var2;
                    lh6Var = lh6Var2;
                }
            }
        });
        return andIncrement;
    }

    @Override // defpackage.z84
    public long extractTar(final s17 s17Var, final e94 e94Var) throws RemoteException {
        s17Var.getClass();
        f();
        final long andIncrement = this.operationIds.getAndIncrement();
        final ap6 ap6VarL = l(andIncrement, s17Var.b);
        this.operations.put(Long.valueOf(andIncrement), ap6VarL);
        this.executor.execute(new Runnable(this) { // from class: to6
            /* JADX WARN: Code duplicated, block: B:30:0x00cc  */
            /* JADX WARN: Code duplicated, block: B:32:0x00cf  */
            @Override // java.lang.Runnable
            public final void run() {
                ap6 ap6Var;
                kh6 kh6Var;
                int i;
                long j = andIncrement;
                s17 s17Var2 = s17Var;
                e94 e94Var2 = e94Var;
                ap6 ap6Var2 = ap6VarL;
                Object obj = ap6Var2.d.get();
                obj.getClass();
                fp6.m(ap6Var2, o17.c((o17) obj));
                final kh6 kh6Var2 = new kh6();
                try {
                    fp6.n(ap6Var2);
                    fp6.s(s17Var2.e);
                    final dp6 dp6Var = new dp6(j, e94Var2, s17Var2.e);
                    r17 r17VarI = jd4.I(s17Var2);
                    d27 d27VarH = z85.h(r17VarI.a, r17VarI.b, r17VarI.c, r17VarI.d, s17Var2.e, new rn1(ap6Var2, 6), new h07() { // from class: uo6
                        @Override // defpackage.h07
                        public final void a(f07 f07Var) {
                            kh6Var2.a = f07Var.f;
                            dp6Var.a(f07Var);
                        }
                    });
                    try {
                        try {
                            try {
                                j = j;
                                kh6Var = kh6Var2;
                                s17Var2 = s17Var2;
                                try {
                                    ap6Var = ap6Var2;
                                    try {
                                        fp6.m(ap6Var, new o17(j, 2, 0, 0, null, s17Var2.b, d27VarH.a, ap6Var2.a(), null, d27VarH.b, d27VarH.c, d27VarH.d, d27VarH.e, d27VarH.f, d27VarH.g, d27VarH.h, d27VarH.i, 8));
                                    } catch (Throwable th) {
                                        th = th;
                                        if (th instanceof zz6) {
                                            i = 4;
                                        } else {
                                            i = 3;
                                        }
                                        Throwable th2 = th;
                                        ap6 ap6Var3 = ap6Var;
                                        fp6.m(ap6Var3, new o17(j, i, fp6.p(th2), fp6.q(th2), th2.getMessage(), s17Var2.b, kh6Var.a, ap6Var3.a(), null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560));
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    ap6Var = ap6Var2;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                ap6Var = ap6Var2;
                                kh6Var = kh6Var2;
                                s17Var2 = s17Var2;
                                j = j;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            ap6Var = ap6Var2;
                            kh6Var = kh6Var2;
                            s17Var2 = s17Var2;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        ap6Var = ap6Var2;
                        kh6Var = kh6Var2;
                        if (th instanceof zz6) {
                            i = 4;
                        } else {
                            i = 3;
                        }
                        Throwable th7 = th;
                        ap6 ap6Var4 = ap6Var;
                        fp6.m(ap6Var4, new o17(j, i, fp6.p(th7), fp6.q(th7), th7.getMessage(), s17Var2.b, kh6Var.a, ap6Var4.a(), null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560));
                    }
                } catch (Throwable th8) {
                    th = th8;
                    ap6Var = ap6Var2;
                }
            }
        });
        return andIncrement;
    }

    public final void f() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (Map.Entry<Long, ap6> entry : this.operations.entrySet()) {
            long jLongValue = entry.getKey().longValue();
            ap6 value = entry.getValue();
            long j = value.c.get();
            if (j > 0 && jElapsedRealtime - j >= 300000) {
                this.operations.remove(Long.valueOf(jLongValue), value);
            }
        }
    }

    @Override // defpackage.z84
    public PackageInfo getPackageArchiveInfo(String str, int i) throws RemoteException {
        str.getClass();
        Context context = this.context;
        if (context == null) {
            throw new RemoteException("getPackageArchiveInfo() requires an Android Context");
        }
        r("getPackageArchiveInfo", str);
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, i);
        } catch (Throwable th) {
            throw o(u48.m("getPackageArchiveInfo(path=", str, ", flags=", i, ")"), th);
        }
    }

    @Override // defpackage.z84
    public ParcelFileDescriptor getParcelFileDescriptor(String str, int i) throws RemoteException {
        str.getClass();
        r("getParcelFileDescriptor", str);
        if (i != 268435456 && i != 738197504 && i != 939524096) {
            throw new RemoteException(fz5.j(i, "Unsupported getParcelFileDescriptor mode: "));
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(new File(str), i);
            parcelFileDescriptorOpen.getClass();
            return parcelFileDescriptorOpen;
        } catch (Throwable th) {
            throw o(u48.m("getParcelFileDescriptor(path=", str, ", mode=", i, ")"), th);
        }
    }

    @Override // defpackage.z84
    public int getPid() {
        return Process.myPid();
    }

    @Override // defpackage.z84
    public String getSbaNativeVersion() throws RemoteException {
        try {
            return new xz6(SbaRuntimeNative.a.version(), SbaLibaegisCryptoNative.a.isAvailable()).a;
        } catch (Throwable th) {
            throw new RemoteException(xs1.j("getSbaNativeVersion(): ", th.getMessage()));
        }
    }

    @Override // defpackage.z84
    public o17 getSbaResult(long j) throws RemoteException {
        f();
        ap6 ap6Var = this.operations.get(Long.valueOf(j));
        if (ap6Var != null) {
            o17 o17Var = (o17) ap6Var.d.get();
            o17Var.getClass();
            int i = o17Var.b;
            if (i != 0 && i != 1) {
                this.operations.remove(Long.valueOf(j), ap6Var);
            }
            return o17Var;
        }
        return new o17(j, 3, 1, 0, u48.l(j, "Unknown SBA root operation: "), null, 0L, 0L, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 130560);
    }

    @Override // defpackage.z84
    public int getUid() {
        return Process.myUid();
    }

    @Override // defpackage.z84
    public boolean isSbaAegis256Available() throws RemoteException {
        try {
            return new xz6(SbaRuntimeNative.a.version(), SbaLibaegisCryptoNative.a.isAvailable()).b;
        } catch (Throwable th) {
            throw new RemoteException(xs1.j("isSbaAegis256Available(): ", th.getMessage()));
        }
    }

    @Override // defpackage.z84
    public boolean isSbaFile(String str) throws RemoteException {
        str.getClass();
        r("isSbaFile", str);
        try {
            File file = new File(str);
            long length = file.length();
            byte[] bArr = zv1.c;
            if (length >= 4) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        byte[] bArr2 = new byte[4];
                        boolean z = fileInputStream.read(bArr2) == 4 && Arrays.equals(bArr2, bArr);
                        fileInputStream.close();
                        return z;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(fileInputStream, th);
                            throw th2;
                        }
                    }
                } catch (IOException unused) {
                }
            }
            return false;
        } catch (Throwable th3) {
            throw o("isSbaFile(path=" + str + ")", th3);
        }
    }

    public final void k(String str) throws IOException {
        if (Process.myUid() != 0) {
            return;
        }
        Context context = this.context;
        if (context == null) {
            y5.m("Failed to hand off root-created SBA output because service Context is unavailable");
            return;
        }
        int i = context.getApplicationInfo().uid;
        try {
            Os.chown(str, i, i);
        } catch (Throwable th) {
            if (!(th instanceof ErrnoException) || th.errno != OsConstants.EPERM || !uq7.V(str, RAW_REMOVABLE_STORAGE_PREFIX, false)) {
                throw new IOException(u48.k(i, "Failed to hand off root-created SBA output to app uid ", ": ", str), th);
            }
        }
    }

    @Override // defpackage.z84
    public q17 listSbaTarEntries(String str, String str2, char[] cArr, int i, int i2) throws RemoteException {
        List list;
        str.getClass();
        str2.getClass();
        r("listSbaTarEntries", str);
        try {
            yi0 yi0Var = new yi0(3, str, str2, cArr);
            if (cArr == null) {
                list = (List) a(this.tarEntryCache, new ep6(j(str), str2), 2, yi0Var);
            } else {
                list = (List) yi0Var.invoke();
            }
            q17 q17VarL = pe4.l(list, i, i2);
            if (cArr != null) {
                Arrays.fill(cArr, 0, cArr.length, (char) 0);
            }
            return q17VarL;
        } catch (Throwable th) {
            try {
                throw o("listSbaTarEntries(path=" + str + ", entry=" + str2 + ")", th);
            } catch (Throwable th2) {
                if (cArr != null) {
                    Arrays.fill(cArr, 0, cArr.length, (char) 0);
                }
                throw th2;
            }
        }
    }

    @Override // defpackage.z84
    public q17 listTarEntries(String str, int i, int i2) throws RemoteException {
        str.getClass();
        r("listTarEntries", str);
        try {
            return pe4.l((List) a(this.tarEntryCache, new ep6(j(str), null), 2, new cr1(str, 1)), i, i2);
        } catch (Throwable th) {
            throw o("listTarEntries(path=" + str + ")", th);
        }
    }

    @Override // defpackage.z84
    public f17 readSbaInfo(String str) throws RemoteException {
        str.getClass();
        r("readSbaInfo", str);
        try {
            return l73.l((ky6) a(this.archiveInfoCache, new wo6(j(str)), 4, new v95(str, 1)));
        } catch (Throwable th) {
            throw o("readSbaInfo(path=" + str + ")", th);
        }
    }

    @Override // defpackage.z84
    public f17 readSbaInfoPage(String str, int i, int i2) throws RemoteException {
        str.getClass();
        r("readSbaInfo", str);
        try {
            return l73.m((ky6) a(this.archiveInfoCache, new wo6(j(str)), 4, new v95(str, 1)), i, i2);
        } catch (Throwable th) {
            throw o("readSbaInfo(path=" + str + ")", th);
        }
    }
}
