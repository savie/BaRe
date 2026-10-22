package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import java.util.function.Supplier;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class pg5 extends cn0 {
    public static final /* synthetic */ int n = 0;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        public v64.a a = null;
        public String b;
        public um7 c;
        public OkHttpClient d;
        public boolean e;
    }

    public /* synthetic */ pg5(v64.a aVar, um7 um7Var, OkHttpClient okHttpClient, boolean z) {
        this(aVar, (da6) um7Var, okHttpClient, z);
    }

    public static void W(CompletionException completionException) throws rg5 {
        Throwable cause = completionException.getCause();
        if (cause instanceof rg5) {
            throw ((rg5) cause);
        }
        Throwable cause2 = cause.getCause();
        if (cause2 != null) {
            cause = cause2;
        }
        throw new RuntimeException(cause);
    }

    public final CompletableFuture J(gw0 gw0Var) {
        v64.h.a aVar = new v64.h.a();
        aVar.c(this.b);
        aVar.b(v64.d.HEAD);
        aVar.d = null;
        aVar.e = null;
        aVar.c = gw0Var;
        final v64.h hVarA = aVar.a();
        int i = 1;
        return j(hVarA).exceptionally((Function) new wm0(0)).thenCompose(new Function(this) { // from class: xm0
            public final /* synthetic */ cn0 a;

            {
                this.a = this;
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Response response = (Response) obj;
                int i2 = cn0.k;
                cn0 cn0Var = this.a;
                if (response == null) {
                    return cn0Var.j(hVarA);
                }
                cn0Var.getClass();
                return CompletableFuture.completedFuture(response);
            }
        }).exceptionally((Function) new w81(i)).thenApply((Function) new qm0(i));
    }

    public final CompletableFuture O(lw3 lw3Var) {
        b(lw3Var);
        lw3Var.k(this.c.a.f());
        return n(lw3Var, lw3Var.o(), lw3Var.i() != null ? new v64.e("versionId", lw3Var.i()) : null).thenApply((Function) new zm0(lw3Var, 1));
    }

    public final CompletableFuture S(bc6 bc6Var) {
        b(bc6Var);
        v64.a aVar = this.c;
        bc6Var.t(aVar.a.f());
        try {
            return U(bc6Var, bc6Var.F() != null ? bc6Var.F() : bc6Var.E(), bc6Var.j(), !aVar.a.f());
        } catch (IOException e) {
            return ki8.c(new rg5(e));
        }
    }

    public final CompletableFuture U(final bc6 bc6Var, Object obj, MediaType mediaType, final boolean z) {
        int i;
        boolean z2;
        y51.a[] aVarArr;
        hx5 hx5Var;
        ox0 ox0Var;
        RandomAccessFile randomAccessFile = obj instanceof RandomAccessFile ? (RandomAccessFile) obj : null;
        InputStream inputStream = obj instanceof InputStream ? (InputStream) obj : null;
        byte[] bArr = obj instanceof byte[] ? (byte[]) obj : null;
        y51.a aVarU = bc6Var.u() != null ? bc6Var.u() : y51.a.CRC32C;
        y51.a aVar = y51.a.SHA256;
        boolean z3 = aVarU == aVar;
        y51.a[] aVarArr2 = (!z || z3) ? new y51.a[]{aVarU} : new y51.a[]{aVarU, aVar};
        int iX = bc6Var.x();
        if (inputStream != null) {
            try {
                aVarArr = aVarArr2;
                z2 = z3;
                i = 1;
                hx5Var = new hx5(inputStream, bc6Var.v(), bc6Var.y(), bc6Var.x(), aVarArr);
                ox0Var = new ox0(hx5Var.f == 1 ? bc6Var.v().longValue() : bc6Var.y());
                hx5Var.a(ox0Var);
                iX = hx5Var.f;
            } catch (rg5 e) {
                return ki8.c(e);
            }
        } else {
            i = 1;
            z2 = z3;
            aVarArr = aVarArr2;
            hx5Var = null;
            ox0Var = null;
        }
        if (iX == i) {
            if (inputStream != null) {
                return D(new xb6(bc6Var, ox0Var, mediaType, y51.c(hx5Var.g, z, z2)));
            }
            boolean z4 = z2;
            if (bc6Var.v() == null) {
                return ki8.c(new rg5("object size is null; this should not happen"));
            }
            Long lV = bc6Var.v();
            long jLongValue = lV.longValue();
            try {
                HashMap mapD = y51.d(aVarArr);
                if (randomAccessFile == null) {
                    int i2 = (int) jLongValue;
                    y51.f(mapD, bArr, i2);
                    return D(new xb6(bc6Var, bArr, i2, mediaType, y51.c(mapD, z, z4)));
                }
                long filePointer = randomAccessFile.getFilePointer();
                y51.e(mapD, null, randomAccessFile, lV);
                randomAccessFile.seek(filePointer);
                return D(new xb6(bc6Var, randomAccessFile, jLongValue, mediaType, y51.c(mapD, z, z4)));
            } catch (IOException e2) {
                return ki8.c(new rg5(e2));
            } catch (rg5 e3) {
                return ki8.c(e3);
            }
        }
        final boolean z5 = z2;
        if (bc6Var.u() != null) {
            y51.a aVarU2 = bc6Var.u();
            aVarU2.getClass();
            if (aVarU2 != y51.a.CRC32 && aVarU2 != y51.a.CRC32C && aVarU2 != y51.a.SHA1 && aVarU2 != aVar) {
                z5.d(bc6Var.u(), " for multipart upload", "unsupported checksum ");
                return null;
            }
        }
        if (randomAccessFile != null) {
            try {
                hx5 hx5Var2 = new hx5(randomAccessFile, bc6Var.v().longValue(), bc6Var.y(), bc6Var.x(), aVarArr);
                ox0Var = new ox0(bc6Var.y());
                hx5Var2.a(ox0Var);
                hx5Var = hx5Var2;
            } catch (rg5 e4) {
                return ki8.c(e4);
            }
        }
        int iW = bc6Var.w();
        if (iW <= 0) {
            iW = i;
        }
        int i3 = hx5Var.f;
        if (i3 > 0 && iW > i3) {
            iW = i3;
        }
        final String[] strArr = {null};
        s12 s12Var = new s12(bc6Var, mediaType, aVarU);
        b(s12Var);
        final int i4 = iW;
        final hx5 hx5Var3 = hx5Var;
        final ox0 ox0Var2 = ox0Var;
        return q(s12Var, s12Var.k(), new v64.e("uploads", ""), null).thenApply((Function) new zm0(s12Var, 0)).thenCompose(new Function() { // from class: bg5
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                int i5 = pg5.n;
                final String strC = ((t12) obj2).a.c();
                strArr[0] = strC;
                final pg5 pg5Var = this.a;
                final int i6 = i4;
                final dc6 dc6Var = bc6Var;
                final hx5 hx5Var4 = hx5Var3;
                final boolean z6 = z;
                final boolean z7 = z5;
                final ox0 ox0Var3 = ox0Var2;
                if (i6 == 1) {
                    long jY = dc6Var.y();
                    return CompletableFuture.supplyAsync(new fg5(dc6Var, strC, hx5Var4, ox0Var3, z6, z7)).thenCompose((Function) new gg5(pg5Var)).thenCompose((Function) new hg5(pg5Var, new ArrayList(), ox0Var3, hx5Var4, dc6Var, strC, z6, z7, jY));
                }
                final vx0 vx0Var = new vx0(i6, dc6Var.y());
                final ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i6);
                final ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i6);
                final CountDownLatch countDownLatch = new CountDownLatch(i6);
                final List listSynchronizedList = Collections.synchronizedList(new ArrayList());
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                final ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                return CompletableFuture.supplyAsync(new Supplier() { // from class: eg5
                    @Override // java.util.function.Supplier
                    public final Object get() throws Throwable {
                        ExecutorService executorService;
                        final pg5 pg5Var2 = pg5Var;
                        dc6 dc6Var2 = dc6Var;
                        String str = strC;
                        hx5 hx5Var5 = hx5Var4;
                        ox0 ox0Var4 = ox0Var3;
                        boolean z8 = z6;
                        boolean z9 = z7;
                        int i7 = pg5.n;
                        int i8 = 0;
                        while (true) {
                            int i9 = i6;
                            ExecutorService executorService2 = executorServiceNewFixedThreadPool;
                            final AtomicBoolean atomicBoolean2 = atomicBoolean;
                            final ArrayBlockingQueue arrayBlockingQueue2 = arrayBlockingQueue;
                            final vx0 vx0Var2 = vx0Var;
                            final List list = listSynchronizedList;
                            final ConcurrentLinkedQueue concurrentLinkedQueue2 = concurrentLinkedQueue;
                            final CountDownLatch countDownLatch2 = countDownLatch;
                            if (i8 >= i9) {
                                arrayBlockingQueue2.put(new wf8.b(new wf8(dc6Var2, str, hx5Var5.i, ox0Var4, y51.c(hx5Var5.g, z8, z9))));
                                while (hx5Var5.i != hx5Var5.f && !atomicBoolean2.get()) {
                                    ox0 ox0VarA = vx0Var2.a();
                                    hx5Var5.a(ox0VarA);
                                    arrayBlockingQueue2.put(new wf8.b(new wf8(dc6Var2, str, hx5Var5.i, ox0VarA, y51.c(hx5Var5.g, z8, z9))));
                                }
                                for (int i10 = 0; i10 < i9; i10++) {
                                    arrayBlockingQueue2.put(new wf8.b(null));
                                }
                                countDownLatch2.await();
                                executorService2.shutdown();
                                if (concurrentLinkedQueue2.isEmpty()) {
                                    list.sort(Comparator.comparingInt(new ag5()));
                                    executorService2.shutdownNow();
                                    return list;
                                }
                                CompletionException completionException = new CompletionException("uploadPartsParallelly failed", (Throwable) concurrentLinkedQueue2.peek());
                                concurrentLinkedQueue2.stream().skip(1L).forEach(new nw1(completionException, 1));
                                throw completionException;
                            }
                            int i11 = i8;
                            try {
                                executorService = executorService2;
                                try {
                                    try {
                                        if (executorService.submit(new Runnable() { // from class: zf5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                pg5 pg5Var3 = pg5Var2;
                                                AtomicBoolean atomicBoolean3 = atomicBoolean2;
                                                ArrayBlockingQueue arrayBlockingQueue3 = arrayBlockingQueue2;
                                                vx0 vx0Var3 = vx0Var2;
                                                List list2 = list;
                                                ConcurrentLinkedQueue concurrentLinkedQueue3 = concurrentLinkedQueue2;
                                                CountDownLatch countDownLatch3 = countDownLatch2;
                                                int i12 = pg5.n;
                                                while (!atomicBoolean3.get()) {
                                                    try {
                                                        try {
                                                            wf8.b bVar = (wf8.b) arrayBlockingQueue3.take();
                                                            if (bVar.a() == null) {
                                                                break;
                                                            }
                                                            yf8 yf8Var = (yf8) pg5Var3.G(bVar.a()).join();
                                                            ox0 ox0VarI = bVar.a().i();
                                                            try {
                                                                ox0VarI.reset();
                                                                vx0Var3.a.offer(ox0VarI);
                                                                list2.add(yf8Var);
                                                            } catch (rg5 e5) {
                                                                throw new RuntimeException(e5);
                                                            }
                                                        } catch (Throwable th) {
                                                            countDownLatch3.countDown();
                                                            throw th;
                                                        }
                                                    } catch (InterruptedException e6) {
                                                        atomicBoolean3.set(true);
                                                        concurrentLinkedQueue3.add(e6);
                                                        countDownLatch3.countDown();
                                                        return;
                                                    }
                                                }
                                                countDownLatch3.countDown();
                                            }
                                        }) == null) {
                                            throw new RuntimeException("uploadExecutor.submit() returns null; this should not happen");
                                        }
                                        i8 = i11 + 1;
                                    } catch (Throwable th) {
                                        th = th;
                                        executorService.shutdownNow();
                                        throw th;
                                    }
                                } catch (InterruptedException e5) {
                                    e = e5;
                                    throw new CompletionException(e);
                                } catch (rg5 e6) {
                                    e = e6;
                                    throw new CompletionException(e);
                                }
                            } catch (InterruptedException e7) {
                                e = e7;
                                throw new CompletionException(e);
                            } catch (rg5 e8) {
                                e = e8;
                                throw new CompletionException(e);
                            } catch (Throwable th2) {
                                th = th2;
                                executorService = executorService2;
                            }
                        }
                    }
                });
            }
        }).thenCompose(new Function() { // from class: cg5
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                int i5 = pg5.n;
                int i6 = 0;
                hn1 hn1Var = new hn1(bc6Var, strArr[0], (gx5[]) ((List) obj2).stream().map(new q40(2)).toArray(new b51(1)));
                pg5 pg5Var = this.a;
                pg5Var.b(hn1Var);
                hn1Var.r(pg5Var.c.a.f());
                try {
                    return pg5Var.q(hn1Var, hn1Var.p() != null ? hn1Var.p().a : null, new v64.e("uploadId", hn1Var.q()), new v64.b(new dn1(hn1Var.o()), null, null, null)).thenApply((Function) new rm0(hn1Var, i6));
                } catch (rg5 e5) {
                    return ki8.c(e5);
                }
            }
        }).exceptionally(new Function() { // from class: dg5
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                pg5 pg5Var = this.a;
                dc6 dc6Var = bc6Var;
                int i5 = pg5.n;
                Throwable cause = ((Throwable) obj2).getCause();
                String str = strArr[0];
                if (str != null) {
                    try {
                        pg5Var.a(new w2(dc6Var, str)).join();
                    } catch (CompletionException e5) {
                        cause.addSuppressed(e5.getCause());
                    }
                }
                throw new CompletionException(cause);
            }
        });
    }

    private pg5(v64.a aVar, da6 da6Var, OkHttpClient okHttpClient, boolean z) {
        super(aVar, da6Var, okHttpClient, z);
    }

    public pg5(pg5 pg5Var) {
        super(pg5Var);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class b implements Iterator {
        public dn6 a;
        public Iterator b;
        public Iterator c;
        public Iterator d;
        public boolean e;
        public xx4 f;
        public String k;

        private b(pg5 pg5Var) {
            this.e = false;
        }

        public final synchronized void a() {
            try {
                b();
            } catch (rg5 e) {
                this.a = new dn6(e);
            }
            xx4 xx4Var = this.f;
            if (xx4Var != null) {
                this.b = xx4Var.b().iterator();
                this.c = this.f.c().iterator();
                this.d = this.f.a().iterator();
            } else {
                this.b = Collections.emptyIterator();
                this.c = Collections.emptyIterator();
                this.d = Collections.emptyIterator();
            }
        }

        public abstract void b();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.e) {
                return false;
            }
            if (this.a == null && this.b == null && this.c == null && this.d == null) {
                a();
            }
            if (this.a == null && !this.b.hasNext() && !this.c.hasNext() && !this.d.hasNext() && this.f.f()) {
                a();
            }
            if (this.a != null || this.b.hasNext() || this.c.hasNext() || this.d.hasNext()) {
                return true;
            }
            this.e = true;
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            qg4 qg4VarA;
            if (this.e) {
                m0.d();
                return null;
            }
            if (this.a == null && this.b == null && this.c == null && this.d == null) {
                a();
            }
            if (this.a == null && !this.b.hasNext() && !this.c.hasNext() && !this.d.hasNext() && this.f.f()) {
                a();
            }
            dn6 dn6Var = this.a;
            if (dn6Var != null) {
                this.e = true;
                return dn6Var;
            }
            if (this.b.hasNext()) {
                qg4VarA = (qg4) this.b.next();
                qg4VarA.k(this.f.e());
                this.k = qg4VarA.h();
            } else if (this.c.hasNext()) {
                qg4VarA = (qg4) this.c.next();
            } else {
                qg4VarA = this.d.hasNext() ? ((xx4.a) this.d.next()).a() : null;
            }
            if (qg4VarA != null) {
                qg4VarA.k(this.f.e());
                return new dn6(qg4VarA);
            }
            this.e = true;
            m0.d();
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        public /* synthetic */ b(pg5 pg5Var, int i) {
            this(pg5Var);
        }
    }
}
