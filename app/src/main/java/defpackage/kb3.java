package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kb3 extends InputStream {
    public static final List L = fl1.A0("https://egest.filen.io", "https://egest.filen.net", "https://egest.filen-1.net", "https://egest.filen-2.net", "https://egest.filen-3.net", "https://egest.filen-4.net", "https://egest.filen-5.net", "https://egest.filen-6.net");
    public boolean G;
    public volatile boolean H;
    public final ExecutorService I;
    public final w40 J;
    public final ConcurrentHashMap.KeySetView K;
    public final nb3 a;
    public final List b;
    public final int c;
    public final int d;
    public final long e;
    public final bt3 f;
    public final OkHttpClient k;
    public long n;
    public byte[] p;
    public int q;
    public long r;
    public final long t;
    public final vs0 x;
    public final MessageDigest y;

    public kb3(nb3 nb3Var, OkHttpClient okHttpClient, String str) {
        long jMaxMemory = Runtime.getRuntime().maxMemory();
        int i = jMaxMemory >= 536870912 ? 32 : jMaxMemory >= 402653184 ? 16 : 8;
        el elVar = new el(13);
        okHttpClient.getClass();
        str.getClass();
        List list = L;
        list.getClass();
        this.a = nb3Var;
        this.b = list;
        this.c = i;
        this.d = 8;
        this.e = 1000L;
        this.f = elVar;
        OkHttpClient.Builder builderB = okHttpClient.b();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderB.c(60L, timeUnit);
        builderB.y = _UtilJvmKt.b(60L, timeUnit);
        this.k = new OkHttpClient(builderB);
        this.p = new byte[0];
        long j = nb3Var.d;
        this.t = j != 0 ? 1 + ((j - 1) / 1048576) : 0L;
        String str2 = nb3Var.m;
        vs0 vs0Var = (nq7.j0(str2) ? null : str2) != null ? new vs0() : null;
        this.x = vs0Var;
        this.y = (vs0Var != null || nq7.j0(nb3Var.n)) ? null : MessageDigest.getInstance("SHA-512");
        this.I = Executors.newFixedThreadPool(i);
        this.J = new w40();
        this.K = ConcurrentHashMap.newKeySet();
        if (list.isEmpty()) {
            c6.f("Filen egest URL list cannot be empty");
            throw null;
        }
        if (x13.F(j, nb3Var.i)) {
            return;
        }
        c6.f("Inconsistent Filen file size and chunk count");
        throw null;
    }

    public final void a() {
        boolean zEqualsIgnoreCase;
        if (this.G) {
            return;
        }
        nb3 nb3Var = this.a;
        String str = nb3Var.m;
        String str2 = nb3Var.n;
        if (nq7.j0(str) && nq7.j0(str2)) {
            this.G = true;
            return;
        }
        vs0 vs0Var = this.x;
        if (vs0Var != null) {
            zEqualsIgnoreCase = vs0Var.c().equalsIgnoreCase(nb3Var.m);
        } else {
            MessageDigest messageDigest = this.y;
            if (messageDigest != null) {
                byte[] bArrDigest = messageDigest.digest();
                bArrDigest.getClass();
                zEqualsIgnoreCase = x50.t0(bArrDigest, "", new sh(6), 30).equalsIgnoreCase(str2);
            } else {
                zEqualsIgnoreCase = true;
            }
        }
        if (!zEqualsIgnoreCase) {
            throw new SecurityException("Filen file integrity verification failed");
        }
        this.G = true;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.H = true;
        ConcurrentHashMap.KeySetView keySetView = this.K;
        keySetView.getClass();
        Iterator it = keySetView.iterator();
        while (it.hasNext()) {
            ((Call) it.next()).cancel();
        }
        this.I.shutdownNow();
        this.J.clear();
        this.p = new byte[0];
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws Throwable {
        bArr.getClass();
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            c6.f("Failed requirement.");
            return 0;
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.H) {
            l0.e("Stream is closed");
            return 0;
        }
        if (this.r >= this.a.d) {
            a();
            return -1;
        }
        int i3 = 0;
        while (i3 < i2 && this.r < this.a.d) {
            if (this.q >= this.p.length) {
                w40 w40Var = this.J;
                while (w40Var.c < this.c) {
                    final long j = this.n;
                    if (j >= this.t) {
                        break;
                    }
                    this.n = 1 + j;
                    w40Var.addLast(this.I.submit(new Callable() { // from class: jb3
                        @Override // java.util.concurrent.Callable
                        public final Object call() throws IOException {
                            int i4;
                            kb3 kb3Var = this.a;
                            long j2 = j;
                            long j3 = kb3Var.a.d - (j2 * 1048576);
                            long j4 = 0;
                            if (j3 <= 0) {
                                y5.m("Filen file metadata contains an unexpected chunk");
                                return null;
                            }
                            int iMin = (int) Math.min(1048576L, j3);
                            int i5 = kb3Var.d;
                            int i6 = 0;
                            IOException e = null;
                            while (i6 < i5) {
                                if (kb3Var.H) {
                                    l0.e("Filen download cancelled");
                                    return null;
                                }
                                int size = (int) ((((long) i6) + j2) % ((long) kb3Var.b.size()));
                                Request.Builder builder = new Request.Builder();
                                String strK0 = nq7.K0((String) kb3Var.b.get(size), '/');
                                nb3 nb3Var = kb3Var.a;
                                long j5 = j4;
                                builder.d(strK0 + "/" + nb3Var.k + "/" + nb3Var.j + "/" + nb3Var.a + "/" + j2);
                                Request request = new Request(builder);
                                OkHttpClient okHttpClient = kb3Var.k;
                                okHttpClient.getClass();
                                RealCall realCall = new RealCall(okHttpClient, request);
                                kb3Var.f.invoke();
                                ConcurrentHashMap.KeySetView keySetView = kb3Var.K;
                                keySetView.getClass();
                                keySetView.add(realCall);
                                try {
                                    if (kb3Var.H) {
                                        realCall.cancel();
                                    }
                                    if (kb3Var.H) {
                                        throw new IllegalStateException("Filen download cancelled");
                                    }
                                    Response responseG = realCall.g();
                                    try {
                                        if (!responseG.H) {
                                            throw new lb3(responseG.d, request.a.b());
                                        }
                                        byte[] bArrB = responseG.k.b();
                                        responseG.close();
                                        try {
                                            byte[] bArr2 = hb3.a;
                                            byte[] bArrB2 = hb3.b(bArrB, kb3Var.a.f);
                                            if (bArrB2.length == iMin) {
                                                ConcurrentHashMap.KeySetView keySetView2 = kb3Var.K;
                                                keySetView2.getClass();
                                                keySetView2.remove(realCall);
                                                return bArrB2;
                                            }
                                            throw new fb3(j2, new IllegalArgumentException("Expected " + iMin + " plaintext bytes, received " + bArrB2.length));
                                        } catch (RuntimeException e2) {
                                            throw new fb3(j2, e2);
                                        }
                                    } catch (Throwable th) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            rs9.c(responseG, th);
                                            throw th2;
                                        }
                                    }
                                } catch (IOException e3) {
                                    e = e3;
                                    try {
                                        boolean z = !(e instanceof lb3) || (i4 = ((lb3) e).a) == 408 || i4 == 429 || i4 >= 500;
                                        if (kb3Var.H || !z || i6 == kb3Var.d - 1) {
                                            throw e;
                                        }
                                        long j6 = kb3Var.e;
                                        if (j6 > j5) {
                                            Thread.sleep(j6);
                                        }
                                        ConcurrentHashMap.KeySetView keySetView3 = kb3Var.K;
                                        keySetView3.getClass();
                                        keySetView3.remove(realCall);
                                        i6++;
                                        j4 = j5;
                                    } catch (Throwable th3) {
                                        ConcurrentHashMap.KeySetView keySetView4 = kb3Var.K;
                                        keySetView4.getClass();
                                        keySetView4.remove(realCall);
                                        throw th3;
                                    }
                                }
                            }
                            if (e != null) {
                                throw e;
                            }
                            l0.e("Required value was null.");
                            return null;
                        }
                    }));
                }
                try {
                    Object obj = ((Future) w40Var.removeFirst()).get();
                    obj.getClass();
                    byte[] bArr2 = (byte[]) obj;
                    this.p = bArr2;
                    vs0 vs0Var = this.x;
                    if (vs0Var != null) {
                        vs0Var.g(bArr2);
                    }
                    MessageDigest messageDigest = this.y;
                    if (messageDigest != null) {
                        messageDigest.update(this.p);
                    }
                    this.q = 0;
                } catch (ExecutionException e) {
                    ConcurrentHashMap.KeySetView keySetView = this.K;
                    keySetView.getClass();
                    Iterator it = keySetView.iterator();
                    while (it.hasNext()) {
                        ((Call) it.next()).cancel();
                    }
                    Throwable cause = e.getCause();
                    if (cause == null) {
                        throw e;
                    }
                    throw cause;
                }
            }
            int iMin = (int) Math.min(i2 - i3, Math.min(this.p.length - this.q, this.a.d - this.r));
            System.arraycopy(this.p, this.q, bArr, i + i3, iMin);
            this.q += iMin;
            i3 += iMin;
            this.r += (long) iMin;
        }
        if (this.r == this.a.d) {
            a();
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) < 0) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
