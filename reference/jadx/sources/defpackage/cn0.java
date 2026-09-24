package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.Socket;
import java.security.SecureRandom;
import java.util.Base64;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.function.Function;
import java.util.function.Predicate;
import okhttp3.Dispatcher;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealCall.AsyncCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cn0 implements AutoCloseable {
    public static final /* synthetic */ int k = 0;
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final String b = ki8.d();
    public final v64.a c;
    public final da6 d;
    public final OkHttpClient e;
    public final boolean f;

    static {
        try {
            RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
            RequestBody.Companion.b(new byte[0], 6, null);
            new Random(new SecureRandom().nextLong());
            wk4 wk4Var = new wk4();
            qi2 qi2Var = qi2.FAIL_ON_UNKNOWN_PROPERTIES;
            pi2 pi2Var = wk4Var.e;
            int i = pi2Var.r;
            int i2 = (~qi2Var.b) & i;
            if (i2 != i) {
                pi2Var = new pi2(pi2Var, pi2Var.a, i2);
            }
            wk4Var.e = pi2Var;
            wk4Var.b(u65.ACCEPT_CASE_INSENSITIVE_PROPERTIES, true);
            na4.B("retention", "legal-hold", "tagging", "uploadId", "acl", "attributes", new String[0]);
        } catch (NoSuchMethodError e) {
            e6.i("Unsupported OkHttp library found. Must use okhttp >= 4.11.0", e);
        }
    }

    public cn0(cn0 cn0Var) {
        this.c = cn0Var.c;
        this.d = cn0Var.d;
        this.e = cn0Var.e;
        this.f = cn0Var.f;
    }

    public static v64.e u(String str, String str2, Integer num, String str3) {
        v64.e eVar = new v64.e("delimiter", str == null ? "" : str, "max-keys", Integer.toString(num.intValue() > 0 ? num.intValue() : PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT), "prefix", str3 == null ? "" : str3);
        if (str2 != null) {
            eVar.d("encoding-type", str2);
        }
        return eVar;
    }

    public final CompletableFuture A(final ay4 ay4Var) {
        b(ay4Var);
        v64.e eVarU = u(ay4Var.r(), ay4Var.s(), Integer.valueOf(ay4Var.v()), ay4Var.w());
        if (ay4Var.x() != null) {
            eVarU.d("start-after", ay4Var.x());
        }
        if (ay4Var.q() != null) {
            eVarU.d("continuation-token", ay4Var.q());
        }
        if (ay4Var.t()) {
            eVarU.d("fetch-owner", "true");
        }
        if (ay4Var.u()) {
            eVarU.d("metadata", "true");
        }
        eVarU.d("list-type", "2");
        return n(ay4Var, null, eVarU).thenApply(new Function() { // from class: sm0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ay4 ay4Var2 = ay4Var;
                Response response = (Response) obj;
                int i = cn0.k;
                try {
                    try {
                        by4 by4Var = new by4(response.f, ay4Var2.f(), ay4Var2.g(), (ow4) by8.a(response.k.g(), ow4.class));
                        response.close();
                        return by4Var;
                    } catch (cy8 e) {
                        throw new CompletionException(e);
                    }
                } catch (Throwable th) {
                    response.close();
                    throw th;
                }
            }
        });
    }

    public final CompletableFuture D(final xb6 xb6Var) {
        b(xb6Var);
        try {
            Object[] objArrG = g(xb6Var, xb6Var.p());
            return r(xb6Var, (v64.c) objArrG[1], null, (v64.b) objArrG[0]).thenApply(new Function() { // from class: an0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    xb6 xb6Var2 = xb6Var;
                    Response response = (Response) obj;
                    int i = cn0.k;
                    try {
                        return new zr5(response.f, xb6Var2.f(), xb6Var2.g(), xb6Var2.h(), Response.b("ETag", response).replaceAll("\"", ""), Response.b("x-amz-version-id", response));
                    } finally {
                        response.close();
                    }
                }
            });
        } catch (rg5 e) {
            return ki8.c(e);
        }
    }

    public final CompletableFuture G(final wf8 wf8Var) {
        b(wf8Var);
        try {
            Object[] objArrG = g(wf8Var, null);
            return r(wf8Var, (v64.c) objArrG[1], new v64.e("partNumber", Integer.toString(wf8Var.s()), "uploadId", wf8Var.t()), (v64.b) objArrG[0]).thenApply(new Function() { // from class: pm0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    wf8 wf8Var2 = wf8Var;
                    Response response = (Response) obj;
                    int i = cn0.k;
                    try {
                        return new yf8(response.f, wf8Var2.f(), wf8Var2.g(), wf8Var2.h(), wf8Var2.t(), wf8Var2.s(), Response.b("ETag", response).replaceAll("\"", ""));
                    } finally {
                        response.close();
                    }
                }
            });
        } catch (rg5 e) {
            return ki8.c(e);
        }
    }

    public final CompletableFuture a(final w2 w2Var) {
        b(w2Var);
        v64.e eVar = new v64.e("uploadId", w2Var.l());
        v64.h.a aVar = new v64.h.a();
        aVar.c(this.b);
        aVar.b(v64.d.DELETE);
        aVar.d = null;
        aVar.e = eVar;
        aVar.c = w2Var;
        return j(aVar.a()).thenApply((Function) new qm0(0)).thenApply(new Function() { // from class: om0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                w2 w2Var2 = w2Var;
                Response response = (Response) obj;
                int i = cn0.k;
                try {
                    return new x2(response.f, w2Var2.f(), w2Var2.d(), w2Var2.h(), w2Var2.l());
                } finally {
                    response.close();
                }
            }
        });
    }

    public final void b(ll0 ll0Var) {
        if (ll0Var == null) {
            c6.f("null arguments");
            return;
        }
        if (this.c.c == null || !(ll0Var instanceof fw0)) {
            return;
        }
        String strF = ((fw0) ll0Var).f();
        if (strF.startsWith("xn--") || strF.endsWith("--s3alias") || strF.endsWith("--ol-s3")) {
            c6.f(eq3.k("bucket name '", strF, "' must not start with 'xn--' and must not end with '--s3alias' or '--ol-s3'"));
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.f) {
            ((ThreadPoolExecutor) this.e.a.a()).shutdown();
            RealConnectionPool realConnectionPool = this.e.C.a;
            Iterator it = realConnectionPool.g.iterator();
            it.getClass();
            while (true) {
                Socket socket = null;
                if (!it.hasNext()) {
                    break;
                }
                RealConnection realConnection = (RealConnection) it.next();
                realConnection.getClass();
                synchronized (realConnection) {
                    if (realConnection.K.isEmpty()) {
                        it.remove();
                        realConnection.x = true;
                        socket = realConnection.f;
                    }
                }
                if (socket != null) {
                    _UtilJvmKt.c(socket);
                }
            }
            if (realConnectionPool.g.isEmpty()) {
                realConnectionPool.e.a();
            }
            Iterator it2 = realConnectionPool.d.values().iterator();
            if (it2.hasNext()) {
                realConnectionPool.b((RealConnectionPool.AddressState) it2.next());
                throw null;
            }
        }
    }

    public final Object[] g(yb6 yb6Var, MediaType mediaType) throws ce4 {
        v64.b bVar;
        v64.c cVar = new v64.c(yb6Var.l());
        String strE = cVar.e("X-Amz-Content-Sha256");
        String strE2 = cVar.e("X-Amz-Checksum-Sha256");
        final String strG = v64.c.g("x-amz-checksum-");
        boolean zAnyMatch = Collections.unmodifiableSet(cVar.a.keySet()).stream().anyMatch(new Predicate() { // from class: x64
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                na4 na4Var = v64.c.b;
                return ((String) obj).startsWith(strG);
            }
        });
        String strE3 = cVar.e("Content-Md5");
        v64.a aVar = this.c;
        if (strE == null && strE2 == null) {
            if (aVar.a.f()) {
                strE = "UNSIGNED-PAYLOAD";
            } else {
                y51.a aVar2 = y51.a.SHA256;
                z51 z51VarA = aVar2.a();
                HashMap map = new HashMap();
                map.put(aVar2, z51VarA);
                if (yb6Var.k() != null) {
                    RandomAccessFile randomAccessFileK = yb6Var.k();
                    Long lM = yb6Var.m();
                    lM.getClass();
                    y51.e(map, null, randomAccessFileK, lM);
                } else if (yb6Var.i() != null) {
                    y51.e(map, yb6Var.i(), null, null);
                } else if (yb6Var.j() != null) {
                    y51.f(map, yb6Var.j(), yb6Var.m().intValue());
                }
                strE = y51.b(z51VarA.sum());
            }
            cVar.i("X-Amz-Content-Sha256", strE);
        }
        if (strE == null && strE2 != null) {
            strE = !aVar.a.f() ? y51.b(Base64.getDecoder().decode(strE2)) : "UNSIGNED-PAYLOAD";
            cVar.i("X-Amz-Content-Sha256", strE);
        }
        String str = strE;
        if (str != null && strE2 == null && !zAnyMatch && strE3 == null) {
            if ("UNSIGNED-PAYLOAD".equals(str)) {
                y51.a aVar3 = y51.a.CRC32C;
                z51 z51VarA2 = aVar3.a();
                HashMap map2 = new HashMap();
                map2.put(aVar3, z51VarA2);
                if (yb6Var.k() != null) {
                    RandomAccessFile randomAccessFileK2 = yb6Var.k();
                    Long lM2 = yb6Var.m();
                    lM2.getClass();
                    y51.e(map2, null, randomAccessFileK2, lM2);
                } else if (yb6Var.i() != null) {
                    y51.e(map2, yb6Var.i(), null, null);
                } else if (yb6Var.j() != null) {
                    y51.f(map2, yb6Var.j(), yb6Var.m().intValue());
                }
                cVar.i(aVar3.b(), y51.a(z51VarA2.sum()));
                cVar.i("X-Amz-Sdk-Checksum-Algorithm", aVar3.toString());
            } else {
                byte[] bArr = new byte[str.length() / 2];
                for (int i = 0; i < str.length(); i += 2) {
                    bArr[i / 2] = (byte) (Character.digit(str.charAt(i + 1), 16) + (Character.digit(str.charAt(i), 16) << 4));
                }
                cVar.i("X-Amz-Checksum-Sha256", y51.a(bArr));
                cVar.i("X-Amz-Sdk-Checksum-Algorithm", y51.a.SHA256.toString());
            }
        }
        if (yb6Var.k() != null) {
            bVar = new v64.b(yb6Var.k(), yb6Var.m().longValue(), mediaType, str, strE3);
        } else if (yb6Var.i() != null) {
            bVar = new v64.b(yb6Var.i(), mediaType, str, strE3);
        } else {
            if (yb6Var.j() == null) {
                throw new ce4("unknown body found; this should not happen");
            }
            bVar = new v64.b(yb6Var.j(), yb6Var.m().intValue(), mediaType, str, strE3);
        }
        return new Object[]{bVar, cVar};
    }

    public final CompletableFuture h(final th2 th2Var) {
        b(th2Var);
        try {
            return q(th2Var, th2Var.m() ? new v64.c("x-amz-bypass-governance-retention", "true") : null, new v64.e("delete", ""), new v64.b(new vh2(th2Var.n(), th2Var.o()), null, null, null)).thenApply(new Function() { // from class: ym0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    th2 th2Var2 = th2Var;
                    Response response = (Response) obj;
                    int i = cn0.k;
                    try {
                        try {
                            try {
                                String strN = response.k.n();
                                try {
                                    if (by8.c(wh2.b.class, strN)) {
                                        uh2 uh2Var = new uh2(response.f, th2Var2.f(), th2Var2.g(), new wh2((wh2.b) by8.b(wh2.b.class, strN)));
                                        response.close();
                                        return uh2Var;
                                    }
                                } catch (cy8 unused) {
                                }
                                uh2 uh2Var2 = new uh2(response.f, th2Var2.f(), th2Var2.g(), (wh2) by8.b(wh2.class, strN));
                                response.close();
                                return uh2Var2;
                            } catch (IOException e) {
                                throw new CompletionException(new rg5(e));
                            }
                        } catch (cy8 e2) {
                            throw new CompletionException(e2);
                        }
                    } catch (Throwable th) {
                        response.close();
                        throw th;
                    }
                }
            });
        } catch (rg5 e) {
            return ki8.c(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CompletableFuture j(final v64.h hVar) {
        CompletableFuture completableFutureCompletedFuture;
        String str = hVar.g;
        String str2 = hVar.h;
        String str3 = this.c.e;
        if (str2 != null) {
            if (str3 != null && !str3.equals(str2)) {
                c6.f(dj7.l("region must be ", str3, ", but passed ", str2));
                return null;
            }
            completableFutureCompletedFuture = CompletableFuture.completedFuture(str2);
        } else if (str3 != null && !str3.equals("")) {
            completableFutureCompletedFuture = CompletableFuture.completedFuture(str3);
        } else if (str == null || this.d == null) {
            completableFutureCompletedFuture = CompletableFuture.completedFuture("us-east-1");
        } else {
            String str4 = (String) this.a.get(str);
            if (str4 != null) {
                completableFutureCompletedFuture = CompletableFuture.completedFuture(str4);
            } else {
                final mv3 mv3Var = (mv3) mv3.h().p(str).d();
                b(mv3Var);
                v64.h.a aVar = new v64.h.a();
                aVar.c(this.b);
                aVar.b(v64.d.GET);
                aVar.c = mv3Var;
                aVar.e = new v64.e("location", null);
                completableFutureCompletedFuture = m(aVar.a(), "us-east-1").thenApply(new Function() { // from class: nm0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        String strA;
                        Response response = (Response) obj;
                        int i = cn0.k;
                        try {
                            ResponseBody responseBody = response.k;
                            try {
                                r05 r05Var = (r05) by8.a(responseBody.g(), r05.class);
                                String strA2 = r05Var.a();
                                cn0 cn0Var = this.a;
                                if (strA2 == null || r05Var.a().equals("")) {
                                    strA = "us-east-1";
                                } else {
                                    strA = (!r05Var.a().equals("EU") || cn0Var.c.c == null) ? r05Var.a() : "eu-west-1";
                                }
                                responseBody.close();
                                cn0Var.a.put(mv3Var.f(), strA);
                                return strA;
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    if (responseBody != null) {
                                        try {
                                            responseBody.close();
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        } catch (cy8 e) {
                            throw new CompletionException(e);
                        }
                    }
                });
            }
        }
        return completableFutureCompletedFuture.thenCompose(new Function() { // from class: vm0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String str5 = (String) obj;
                int i = cn0.k;
                v64.h hVar2 = hVar;
                hVar2.c.e(str5);
                return this.a.m(hVar2, str5);
            }
        });
    }

    public final CompletableFuture m(v64.h hVar, String str) {
        da6 da6Var = this.d;
        try {
            v64.f fVarA = hVar.a(this.c, str, da6Var == null ? null : ((um7) da6Var).a);
            StringBuilder sb = new StringBuilder(fVarA.b);
            OkHttpClient okHttpClient = this.e;
            Request request = fVarA.a;
            CompletableFuture completableFuture = new CompletableFuture();
            RealCall realCallA = okHttpClient.a(request);
            bn0 bn0Var = new bn0(this, completableFuture, sb, hVar, request);
            if (!realCallA.f.compareAndSet(false, true)) {
                l0.e("Already Executed");
                return null;
            }
            Platform platform = Platform.a;
            realCallA.k = Platform.a.h();
            realCallA.d.getClass();
            Dispatcher dispatcher = realCallA.a.a;
            RealCall.AsyncCall asyncCall = realCallA.new AsyncCall(bn0Var);
            dispatcher.getClass();
            Dispatcher.c(dispatcher, asyncCall, null, null, 6);
            return completableFuture;
        } catch (rg5 e) {
            return ki8.c(e);
        }
    }

    public final CompletableFuture n(fw0 fw0Var, v64.c cVar, v64.e eVar) {
        v64.h.a aVar = new v64.h.a();
        aVar.c(this.b);
        aVar.b(v64.d.GET);
        aVar.d = cVar;
        aVar.e = eVar;
        aVar.c = fw0Var;
        return j(aVar.a());
    }

    public final CompletableFuture q(fw0 fw0Var, v64.c cVar, v64.e eVar, v64.b bVar) {
        v64.h.a aVar = new v64.h.a();
        aVar.c(this.b);
        aVar.b(v64.d.POST);
        aVar.d = cVar;
        aVar.e = eVar;
        aVar.f = bVar;
        aVar.c = fw0Var;
        return j(aVar.a());
    }

    public final CompletableFuture r(yb6 yb6Var, v64.c cVar, v64.e eVar, v64.b bVar) {
        v64.h.a aVar = new v64.h.a();
        aVar.c(this.b);
        aVar.b(v64.d.PUT);
        aVar.d = cVar;
        aVar.e = eVar;
        aVar.f = bVar;
        aVar.c = yb6Var;
        return j(aVar.a());
    }

    public final CompletableFuture v(final px4 px4Var) {
        b(px4Var);
        v64.e eVarU = u(px4Var.o(), px4Var.p(), Integer.valueOf(px4Var.r()), px4Var.s());
        if (px4Var.q() != null) {
            eVarU.d("key-marker", px4Var.q());
        }
        if (px4Var.t() != null) {
            eVarU.d("version-id-marker", px4Var.t());
        }
        eVarU.d("versions", "");
        return n(px4Var, null, eVarU).thenApply(new Function() { // from class: um0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                px4 px4Var2 = px4Var;
                Response response = (Response) obj;
                int i = cn0.k;
                try {
                    try {
                        qx4 qx4Var = new qx4(response.f, px4Var2.f(), px4Var2.g(), (py4) by8.a(response.k.g(), py4.class));
                        response.close();
                        return qx4Var;
                    } catch (cy8 e) {
                        throw new CompletionException(e);
                    }
                } catch (Throwable th) {
                    response.close();
                    throw th;
                }
            }
        });
    }

    public final CompletableFuture z(final yx4 yx4Var) {
        b(yx4Var);
        v64.e eVarU = u(yx4Var.n(), yx4Var.o(), Integer.valueOf(yx4Var.q()), yx4Var.r());
        if (yx4Var.p() != null) {
            eVarU.d("marker", yx4Var.p());
        }
        return n(yx4Var, null, eVarU).thenApply(new Function() { // from class: tm0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                yx4 yx4Var2 = yx4Var;
                Response response = (Response) obj;
                int i = cn0.k;
                try {
                    try {
                        zx4 zx4Var = new zx4(response.f, yx4Var2.f(), yx4Var2.g(), (nw4) by8.a(response.k.g(), nw4.class));
                        response.close();
                        return zx4Var;
                    } catch (cy8 e) {
                        throw new CompletionException(e);
                    }
                } catch (Throwable th) {
                    response.close();
                    throw th;
                }
            }
        });
    }

    public cn0(v64.a aVar, da6 da6Var, OkHttpClient okHttpClient, boolean z) {
        this.c = aVar;
        this.d = da6Var;
        this.e = okHttpClient;
        this.f = z;
    }
}
