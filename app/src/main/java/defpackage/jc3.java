package defpackage;

import com.google.gson.a;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jc3 {
    public static final hc3 q = new hc3();
    public static final List r = fl1.A0("https://ingest.filen.io", "https://ingest.filen.net", "https://ingest.filen-1.net", "https://ingest.filen-2.net", "https://ingest.filen-3.net", "https://ingest.filen-4.net", "https://ingest.filen-5.net", "https://ingest.filen-6.net");
    public final FilenSession a;
    public final wa3 b;
    public final List c;
    public final bt3 d;
    public final mt3 e;
    public final mt3 f;
    public final bt3 g;
    public final int h;
    public final int i;
    public final long j;
    public final bt3 k;
    public final OkHttpClient l;
    public final a m;
    public final ka n;
    public volatile boolean o;
    public final ConcurrentHashMap.KeySetView p;

    public jc3(FilenSession filenSession, wa3 wa3Var, OkHttpClient okHttpClient) {
        dl dlVar = new dl(12);
        ae1 ae1Var = new ae1(1, q, hc3.class, "secureRandomString", "secureRandomString(I)Ljava/lang/String;", 0, 4);
        zi1 zi1Var = new zi1(2);
        gc3 gc3Var = gc3.a;
        int i = Runtime.getRuntime().maxMemory() >= 402653184 ? 16 : 8;
        zk zkVar = new zk(10);
        wa3Var.getClass();
        okHttpClient.getClass();
        List list = r;
        list.getClass();
        this.a = filenSession;
        this.b = wa3Var;
        this.c = list;
        this.d = dlVar;
        this.e = ae1Var;
        this.f = zi1Var;
        this.g = gc3Var;
        this.h = i;
        this.i = 8;
        this.j = 1000L;
        this.k = zkVar;
        OkHttpClient.Builder builderB = okHttpClient.b();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderB.c(180L, timeUnit);
        builderB.y = _UtilJvmKt.b(180L, timeUnit);
        this.l = new OkHttpClient(builderB);
        t14 t14Var = new t14();
        t14Var.h = false;
        this.m = new a(t14Var);
        this.n = new ka(filenSession);
        this.p = ConcurrentHashMap.newKeySet();
    }

    public static String a(fl4 fl4Var, String str) {
        String strO;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null && (strO = qj4VarX.o()) != null) {
                if (nq7.j0(strO)) {
                    strO = null;
                }
                if (strO != null) {
                    return strO;
                }
            }
        }
        c6.f("Missing Filen upload response field: ".concat(str));
        return null;
    }

    public static String b(byte[] bArr) {
        return x50.t0(bArr, "", new hw(4), 30);
    }

    public static final void d(w40 w40Var, lh6 lh6Var, lh6 lh6Var2, kh6 kh6Var, lm lmVar) throws Throwable {
        try {
            ic3 ic3Var = (ic3) ((Future) w40Var.removeFirst()).get();
            lh6Var.a = ic3Var.a;
            lh6Var2.a = ic3Var.b;
            long j = kh6Var.a + ((long) ic3Var.c);
            kh6Var.a = j;
            lmVar.invoke(Long.valueOf(j));
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                throw cause;
            }
        }
    }

    public static final String e(byte[] bArr, jc3 jc3Var, String str) {
        byte[] bArr2 = hb3.a;
        return hb3.k(str, bArr, (byte[]) jc3Var.f.invoke(12));
    }

    public final nb3 c(BufferedInputStream bufferedInputStream, final String str, String str2, long j, lm lmVar) throws NoSuchAlgorithmException, IOException {
        ExecutorService executorService;
        str.getClass();
        if (j < 0) {
            c6.f("Filen upload length cannot be negative");
            return null;
        }
        if (this.c.isEmpty()) {
            c6.f("Filen ingest URL list cannot be empty");
            return null;
        }
        if (this.i <= 0) {
            c6.f("Filen chunk attempt count must be positive");
            return null;
        }
        String str3 = (String) this.d.invoke();
        String str4 = (String) this.e.invoke(32);
        String str5 = (String) this.e.invoke(32);
        Charset charset = f51.a;
        byte[] bytes = str5.getBytes(charset);
        bytes.getClass();
        long j2 = 0;
        String str6 = str4;
        String str7 = "blake3";
        Integer num = 2;
        Object obj = "version";
        String str8 = "key";
        Object obj2 = "metadata";
        String str9 = "size";
        Object obj3 = "parent";
        String str10 = "application/octet-stream";
        Object obj4 = "nameHashed";
        if (j == 0) {
            if (this.o) {
                l0.e("Filen upload cancelled");
                return null;
            }
            long jLongValue = ((Number) this.g.invoke()).longValue();
            String strC = new vs0().c();
            byte[] bArrDigest = MessageDigest.getInstance("SHA-512").digest();
            bArrDigest.getClass();
            String strB = b(bArrDigest);
            String strI = this.m.i(x65.r0(new pw5("name", str2), new pw5("size", 0), new pw5("mime", "application/octet-stream"), new pw5("key", new String(bytes, charset)), new pw5("lastModified", Long.valueOf(jLongValue)), new pw5("creation", Long.valueOf(jLongValue)), new pw5("blake3", strC), new pw5("hash", strB)));
            wa3 wa3Var = this.b;
            pw5 pw5Var = new pw5("uuid", str3);
            pw5 pw5Var2 = new pw5("name", e(bytes, this, str2));
            byte[] bArr = hb3.a;
            Map mapR0 = x65.r0(pw5Var, pw5Var2, new pw5(obj4, hb3.m(str2, this.a)), new pw5("size", e(bytes, this, "0")), new pw5(obj3, str), new pw5("mime", e(bytes, this, "application/octet-stream")), new pw5(obj2, this.n.e(strI, (byte[]) this.f.invoke(12))), new pw5(obj, 2));
            String apiKey = this.a.getApiKey();
            ConcurrentHashMap.KeySetView keySetView = this.p;
            keySetView.getClass();
            ah ahVar = new ah(this, 24);
            wa3Var.getClass();
            apiKey.getClass();
            wa3Var.b("POST", "/v3/upload/empty", mapR0, apiKey, keySetView, ahVar);
            if (this.o) {
                l0.e("Filen upload cancelled");
                return null;
            }
            lmVar.invoke(0L);
            return new nb3(str3, str2, str, 0L, "application/octet-stream", bytes, jLongValue, jLongValue, 0L, "", "", 2, strC, strB);
        }
        String str11 = "Filen upload cancelled";
        Object obj5 = "uuid";
        String str12 = str3;
        Object obj6 = "name";
        vs0 vs0Var = new vs0();
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
        int i = this.h;
        if (i <= 0) {
            c6.f("Filen parallel upload count must be positive");
            return null;
        }
        kh6 kh6Var = new kh6();
        lh6 lh6Var = new lh6();
        Object obj7 = "mime";
        lh6Var.a = "";
        lh6 lh6Var2 = new lh6();
        lh6Var2.a = "";
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i);
        w40 w40Var = new w40();
        Object obj8 = "hash";
        long j3 = 0;
        while (j2 < j) {
            ExecutorService executorService2 = executorServiceNewFixedThreadPool;
            try {
                if (this.o) {
                    throw new IllegalStateException(str11);
                }
                w40 w40Var2 = w40Var;
                final long j4 = j3;
                int iMin = (int) Math.min(1048576L, j - j2);
                final byte[] bArr2 = new byte[iMin];
                int i2 = 0;
                while (i2 < iMin) {
                    String str13 = str8;
                    int i3 = bufferedInputStream.read(bArr2, i2, iMin - i2);
                    if (i3 < 0) {
                        throw new IOException("Filen upload source ended early");
                    }
                    i2 += i3;
                    str8 = str13;
                }
                String str14 = str8;
                vs0Var.g(bArr2);
                messageDigest.update(bArr2);
                vs0 vs0Var2 = vs0Var;
                final byte[] bArr3 = bytes;
                String str15 = str7;
                Object obj9 = obj6;
                String str16 = str11;
                final String str17 = str6;
                Integer num2 = num;
                Object obj10 = obj;
                Object obj11 = obj2;
                Object obj12 = obj3;
                Object obj13 = obj4;
                Object obj14 = obj7;
                Object obj15 = obj5;
                Object obj16 = obj8;
                MessageDigest messageDigest2 = messageDigest;
                String str18 = str9;
                String str19 = str10;
                final String str20 = str12;
                executorService = executorService2;
                try {
                    bytes = bArr3;
                    w40Var2.addLast(executorService.submit(new Callable() { // from class: fc3
                        /* JADX WARN: Code duplicated, block: B:160:0x0330 A[Catch: all -> 0x0172, TryCatch #18 {all -> 0x0172, blocks: (B:11:0x016a, B:13:0x016e, B:18:0x0182, B:20:0x0186, B:104:0x027b, B:158:0x032c, B:160:0x0330, B:172:0x0354, B:175:0x035a, B:177:0x0362, B:179:0x036d, B:182:0x038d, B:161:0x033a, B:163:0x033e, B:147:0x030a, B:148:0x030d, B:153:0x031b, B:155:0x0327, B:156:0x032a), top: B:199:0x016a }] */
                        /* JADX WARN: Code duplicated, block: B:161:0x033a A[Catch: all -> 0x0172, TryCatch #18 {all -> 0x0172, blocks: (B:11:0x016a, B:13:0x016e, B:18:0x0182, B:20:0x0186, B:104:0x027b, B:158:0x032c, B:160:0x0330, B:172:0x0354, B:175:0x035a, B:177:0x0362, B:179:0x036d, B:182:0x038d, B:161:0x033a, B:163:0x033e, B:147:0x030a, B:148:0x030d, B:153:0x031b, B:155:0x0327, B:156:0x032a), top: B:199:0x016a }] */
                        /* JADX WARN: Code duplicated, block: B:171:0x0353  */
                        /* JADX WARN: Code duplicated, block: B:66:0x020c  */
                        /* JADX WARN: Code duplicated, block: B:78:0x0229  */
                        @Override // java.util.concurrent.Callable
                        public final Object call() throws NoSuchAlgorithmException, IOException {
                            String str21;
                            String str22;
                            String str23;
                            boolean zL;
                            int i4;
                            Throwable th;
                            Boolean boolValueOf;
                            String strO;
                            String strO2;
                            jc3 jc3Var = this.a;
                            byte[] bArr4 = bArr2;
                            byte[] bArr5 = bArr3;
                            String str24 = str20;
                            long j5 = j4;
                            String str25 = str;
                            String str26 = str17;
                            if (jc3Var.o) {
                                l0.e("Filen upload cancelled");
                                return null;
                            }
                            byte[] bArr6 = hb3.a;
                            byte[] bArr7 = (byte[]) jc3Var.f.invoke(12);
                            bArr7.getClass();
                            if (bArr7.length != 12) {
                                c6.f("Failed requirement.");
                                return null;
                            }
                            byte[] bArrU0 = x50.u0(bArr7, hb3.a(bArr4, bArr5, 1, bArr7));
                            byte[] bArrDigest2 = MessageDigest.getInstance("SHA-512").digest(bArrU0);
                            bArrDigest2.getClass();
                            String strB2 = jc3.b(bArrDigest2);
                            a aVar = jc3Var.m;
                            String str27 = "parent";
                            String str28 = "Filen upload cancelled";
                            String str29 = "uploadKey";
                            String str30 = "Invalid Filen API response for ";
                            byte[] bArr8 = bArrU0;
                            String str31 = "hash";
                            pw5[] pw5VarArr = {new pw5("uuid", str24), new pw5("index", String.valueOf(j5)), new pw5("parent", str25), new pw5("uploadKey", str26), new pw5("hash", strB2)};
                            LinkedHashMap linkedHashMap = new LinkedHashMap(x65.q0(5));
                            x65.s0(linkedHashMap, pw5VarArr);
                            String strI2 = aVar.i(linkedHashMap);
                            MessageDigest messageDigest3 = MessageDigest.getInstance("SHA-512");
                            byte[] bytes2 = strI2.getBytes(f51.a);
                            bytes2.getClass();
                            byte[] bArrDigest3 = messageDigest3.digest(bytes2);
                            bArrDigest3.getClass();
                            String strB3 = jc3.b(bArrDigest3);
                            int i5 = jc3Var.i;
                            IOException iOException = null;
                            int i6 = 0;
                            while (i6 < i5) {
                                if (jc3Var.o) {
                                    l0.e(str28);
                                    return null;
                                }
                                List list = jc3Var.c;
                                String str32 = str27;
                                int i7 = i5;
                                HttpUrl.Builder builderG = HttpUrl.Companion.b(nq7.K0((String) list.get((int) ((j5 + ((long) i6)) % ((long) list.size()))), '/') + "/v3/upload").g();
                                builderG.d("uuid", str24);
                                builderG.d("index", String.valueOf(j5));
                                builderG.d(str32, str25);
                                builderG.d(str29, str26);
                                builderG.d(str31, strB2);
                                HttpUrl httpUrlE = builderG.e();
                                Request.Builder builder = new Request.Builder();
                                builder.a = httpUrlE;
                                String str33 = str29;
                                builder.c.d("Authorization", xs1.j("Bearer ", jc3Var.a.getApiKey()));
                                builder.c.d("Accept", "application/json, text/plain, */*");
                                builder.c.d("Checksum", strB3);
                                RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
                                ai6 ai6Var = MediaType.d;
                                byte[] bArr9 = bArr8;
                                builder.c("POST", RequestBody.Companion.b(bArr9, 6, MediaType.Companion.a("application/octet-stream")));
                                Request request = new Request(builder);
                                OkHttpClient okHttpClient = jc3Var.l;
                                okHttpClient.getClass();
                                RealCall realCall = new RealCall(okHttpClient, request);
                                jc3Var.k.invoke();
                                ConcurrentHashMap.KeySetView keySetView2 = jc3Var.p;
                                keySetView2.getClass();
                                keySetView2.add(realCall);
                                try {
                                    try {
                                        if (jc3Var.o) {
                                            realCall.cancel();
                                        }
                                        try {
                                            if (jc3Var.o) {
                                                str21 = strB3;
                                                str22 = str31;
                                                str24 = str24;
                                                str31 = str30;
                                                str23 = str28;
                                                try {
                                                    throw new IllegalStateException(str23);
                                                } catch (IOException e) {
                                                    e = e;
                                                    if (e instanceof ua3) {
                                                        zL = w13.l(((ua3) e).a);
                                                    } else if (e instanceof lb3) {
                                                        zL = true;
                                                    } else {
                                                        zL = true;
                                                    }
                                                    if (!jc3Var.o) {
                                                    }
                                                    throw e;
                                                }
                                            }
                                            try {
                                                Response responseG = realCall.g();
                                                try {
                                                    try {
                                                        try {
                                                            fl4 fl4VarI = yc9.K(responseG.k.n()).i();
                                                            str21 = strB3;
                                                            try {
                                                                try {
                                                                    qj4 qj4VarX = fl4VarI.x("status");
                                                                    if (qj4VarX != null) {
                                                                        try {
                                                                            boolValueOf = Boolean.valueOf(qj4VarX.e());
                                                                        } catch (Throwable th2) {
                                                                            th = th2;
                                                                            throw th;
                                                                        }
                                                                    } else {
                                                                        boolValueOf = null;
                                                                    }
                                                                    str22 = str31;
                                                                    try {
                                                                        try {
                                                                            if (!responseG.H) {
                                                                                try {
                                                                                    int i8 = responseG.d;
                                                                                    if (i8 == 408 || i8 == 429 || i8 >= 500) {
                                                                                        throw new lb3(i8, "/v3/upload");
                                                                                    }
                                                                                } catch (Throwable th3) {
                                                                                    th = th3;
                                                                                    th = th;
                                                                                }
                                                                            }
                                                                            try {
                                                                                if (pe4.d(boolValueOf, Boolean.FALSE)) {
                                                                                    try {
                                                                                        qj4 qj4VarX2 = fl4VarI.x("code");
                                                                                        if (qj4VarX2 == null) {
                                                                                            strO = null;
                                                                                        } else {
                                                                                            if (qj4VarX2 instanceof el4) {
                                                                                                qj4VarX2 = null;
                                                                                            }
                                                                                            if (qj4VarX2 != null) {
                                                                                                strO = qj4VarX2.o();
                                                                                            } else {
                                                                                                strO = null;
                                                                                            }
                                                                                        }
                                                                                        String str34 = "";
                                                                                        if (strO == null) {
                                                                                            strO = "";
                                                                                        }
                                                                                        qj4 qj4VarX3 = fl4VarI.x("message");
                                                                                        if (qj4VarX3 == null) {
                                                                                            strO2 = null;
                                                                                        } else {
                                                                                            if (qj4VarX3 instanceof el4) {
                                                                                                qj4VarX3 = null;
                                                                                            }
                                                                                            if (qj4VarX3 != null) {
                                                                                                strO2 = qj4VarX3.o();
                                                                                            } else {
                                                                                                strO2 = null;
                                                                                            }
                                                                                        }
                                                                                        if (strO2 != null) {
                                                                                            str34 = strO2;
                                                                                        }
                                                                                        if (nq7.j0(str34)) {
                                                                                            str34 = "Filen chunk upload failed";
                                                                                        }
                                                                                        throw new ua3(strO, str34);
                                                                                    } catch (RuntimeException e2) {
                                                                                        throw new pb3(str30.concat("/v3/upload"), e2);
                                                                                    }
                                                                                }
                                                                                try {
                                                                                    str31 = str30;
                                                                                    if (!responseG.H) {
                                                                                        throw new lb3(responseG.d, "/v3/upload");
                                                                                    }
                                                                                    if (pe4.d(boolValueOf, Boolean.TRUE)) {
                                                                                        try {
                                                                                            try {
                                                                                                fl4 fl4Var = (fl4) fl4VarI.a.get("data");
                                                                                                try {
                                                                                                    fl4Var.getClass();
                                                                                                    String strA = jc3.a(fl4Var, "bucket");
                                                                                                    String strA2 = jc3.a(fl4Var, "region");
                                                                                                    try {
                                                                                                        responseG.close();
                                                                                                        ConcurrentHashMap.KeySetView keySetView3 = jc3Var.p;
                                                                                                        keySetView3.getClass();
                                                                                                        keySetView3.remove(realCall);
                                                                                                        return new ic3(strA, strA2, bArr4.length);
                                                                                                    } catch (IOException e3) {
                                                                                                        e = e3;
                                                                                                        str23 = str28;
                                                                                                        if (e instanceof ua3) {
                                                                                                            zL = w13.l(((ua3) e).a);
                                                                                                        } else if ((e instanceof lb3) || (i4 = ((lb3) e).a) == 408 || i4 == 429 || i4 >= 500) {
                                                                                                            zL = true;
                                                                                                        } else {
                                                                                                            zL = false;
                                                                                                        }
                                                                                                        if (!jc3Var.o || !zL || i6 == jc3Var.i - 1) {
                                                                                                            throw e;
                                                                                                        }
                                                                                                        IOException iOException2 = e;
                                                                                                        str28 = str23;
                                                                                                        long j6 = jc3Var.j;
                                                                                                        if (j6 > 0) {
                                                                                                            Thread.sleep(j6);
                                                                                                        }
                                                                                                        ConcurrentHashMap.KeySetView keySetView4 = jc3Var.p;
                                                                                                        keySetView4.getClass();
                                                                                                        keySetView4.remove(realCall);
                                                                                                        i6++;
                                                                                                        iOException = iOException2;
                                                                                                        str30 = str31;
                                                                                                        bArr8 = bArr9;
                                                                                                        str27 = str32;
                                                                                                        i5 = i7;
                                                                                                        str29 = str33;
                                                                                                        strB3 = str21;
                                                                                                        str31 = str22;
                                                                                                        str24 = str24;
                                                                                                    }
                                                                                                } catch (Throwable th4) {
                                                                                                    th = th4;
                                                                                                }
                                                                                            } catch (RuntimeException e4) {
                                                                                                try {
                                                                                                    throw new pb3(str31.concat("/v3/upload"), e4);
                                                                                                } catch (Throwable th5) {
                                                                                                    th = th5;
                                                                                                    th = th;
                                                                                                    throw th;
                                                                                                }
                                                                                            }
                                                                                        } catch (Throwable th6) {
                                                                                            th = th6;
                                                                                            th = th;
                                                                                            throw th;
                                                                                        }
                                                                                    } else {
                                                                                        try {
                                                                                            throw new pb3(str31.concat("/v3/upload"), new IllegalArgumentException("Missing Filen upload response status"));
                                                                                        } catch (Throwable th7) {
                                                                                            th = th7;
                                                                                        }
                                                                                    }
                                                                                    th = th;
                                                                                    throw th;
                                                                                } catch (Throwable th8) {
                                                                                    th = th8;
                                                                                }
                                                                            } catch (Throwable th9) {
                                                                                th = th9;
                                                                            }
                                                                        } catch (Throwable th10) {
                                                                            th = th10;
                                                                        }
                                                                    } catch (Throwable th11) {
                                                                        th = th11;
                                                                        th = th;
                                                                        throw th;
                                                                    }
                                                                } catch (RuntimeException e5) {
                                                                    throw new pb3(str30.concat("/v3/upload"), e5);
                                                                }
                                                            } catch (Throwable th12) {
                                                                th = th12;
                                                                th = th;
                                                                throw th;
                                                            }
                                                        } catch (RuntimeException e6) {
                                                            String str35 = str30;
                                                            if (responseG.H) {
                                                                throw new pb3(str35.concat("/v3/upload"), e6);
                                                            }
                                                            throw new lb3(responseG.d, "/v3/upload");
                                                        }
                                                        throw th;
                                                    } catch (Throwable th13) {
                                                        rs9.c(responseG, th);
                                                        throw th13;
                                                    }
                                                    th = th8;
                                                } catch (Throwable th14) {
                                                    th = th14;
                                                }
                                                th = th;
                                            } catch (IOException e7) {
                                                e = e7;
                                                str21 = strB3;
                                                str22 = str31;
                                                str24 = str24;
                                                str31 = str30;
                                            }
                                        } catch (IOException e8) {
                                            e = e8;
                                        }
                                    } catch (IOException e9) {
                                        e = e9;
                                        str21 = strB3;
                                        str22 = str31;
                                        str24 = str24;
                                        str23 = str28;
                                        str31 = str30;
                                    }
                                } catch (Throwable th15) {
                                    ConcurrentHashMap.KeySetView keySetView5 = jc3Var.p;
                                    keySetView5.getClass();
                                    keySetView5.remove(realCall);
                                    throw th15;
                                }
                            }
                            if (iOException != null) {
                                throw iOException;
                            }
                            l0.e("Required value was null.");
                            return null;
                        }
                    }));
                    j2 += (long) iMin;
                    j3 = j4 + 1;
                    if (w40Var2.c >= this.h) {
                        d(w40Var2, lh6Var, lh6Var2, kh6Var, lmVar);
                    }
                    str12 = str20;
                    executorServiceNewFixedThreadPool = executorService;
                    w40Var = w40Var2;
                    str10 = str19;
                    vs0Var = vs0Var2;
                    messageDigest = messageDigest2;
                    str9 = str18;
                    str8 = str14;
                    obj6 = obj9;
                    num = num2;
                    obj = obj10;
                    obj2 = obj11;
                    obj3 = obj12;
                    obj4 = obj13;
                    obj5 = obj15;
                    obj8 = obj16;
                    obj7 = obj14;
                    str11 = str16;
                    str6 = str17;
                    str7 = str15;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                executorService = executorService2;
            }
            try {
                ConcurrentHashMap.KeySetView keySetView2 = this.p;
                keySetView2.getClass();
                Iterator it = keySetView2.iterator();
                while (it.hasNext()) {
                    ((Call) it.next()).cancel();
                }
                throw th;
            } catch (Throwable th3) {
                executorService.shutdownNow();
                throw th3;
            }
        }
        long j5 = j3;
        String str21 = str7;
        Object obj17 = obj6;
        String str22 = str8;
        String str23 = str6;
        Integer num3 = num;
        Object obj18 = obj;
        Object obj19 = obj2;
        Object obj20 = obj3;
        Object obj21 = obj4;
        Object obj22 = obj7;
        Object obj23 = obj5;
        Object obj24 = obj8;
        vs0 vs0Var3 = vs0Var;
        MessageDigest messageDigest3 = messageDigest;
        w40 w40Var3 = w40Var;
        String str24 = str9;
        String str25 = str11;
        String str26 = str12;
        ExecutorService executorService3 = executorServiceNewFixedThreadPool;
        String str27 = str10;
        while (!w40Var3.isEmpty()) {
            d(w40Var3, lh6Var, lh6Var2, kh6Var, lmVar);
        }
        executorService3.shutdownNow();
        long jLongValue2 = ((Number) this.g.invoke()).longValue();
        String strC2 = vs0Var3.c();
        byte[] bArrDigest2 = messageDigest3.digest();
        bArrDigest2.getClass();
        String strB2 = b(bArrDigest2);
        String strI2 = this.m.i(x65.r0(new pw5(obj17, str2), new pw5(str24, Long.valueOf(j)), new pw5(obj22, str27), new pw5(str22, new String(bytes, f51.a)), new pw5("lastModified", Long.valueOf(jLongValue2)), new pw5("creation", Long.valueOf(jLongValue2)), new pw5(str21, strC2), new pw5(obj24, strB2)));
        pw5 pw5Var3 = new pw5(obj23, str26);
        byte[] bArr4 = hb3.a;
        Map mapR1 = x65.r0(pw5Var3, new pw5(obj17, hb3.k(str2, bytes, (byte[]) this.f.invoke(12))), new pw5(obj21, hb3.m(str2, this.a)), new pw5(str24, hb3.k(String.valueOf(j), bytes, (byte[]) this.f.invoke(12))), new pw5(obj20, str), new pw5(obj22, hb3.k(str27, bytes, (byte[]) this.f.invoke(12))), new pw5(obj19, this.n.e(strI2, (byte[]) this.f.invoke(12))), new pw5(obj18, num3), new pw5("chunks", Long.valueOf(j5)), new pw5("rm", this.e.invoke(32)), new pw5("uploadKey", str23));
        if (this.o) {
            l0.e(str25);
            return null;
        }
        wa3 wa3Var2 = this.b;
        String apiKey2 = this.a.getApiKey();
        ConcurrentHashMap.KeySetView keySetView3 = this.p;
        keySetView3.getClass();
        ak akVar = new ak(this, 15);
        wa3Var2.getClass();
        apiKey2.getClass();
        wa3Var2.b("POST", "/v3/upload/done", mapR1, apiKey2, keySetView3, akVar);
        if (!this.o) {
            return new nb3(str26, str2, str, j, "application/octet-stream", bytes, jLongValue2, jLongValue2, j5, (String) lh6Var.a, (String) lh6Var2.a, 2, strC2, strB2);
        }
        l0.e(str25);
        return null;
    }
}
