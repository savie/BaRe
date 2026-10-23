package defpackage;

import android.content.SharedPreferences;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wq5 extends ag8 {
    public final mq5 i;
    public final st5 j;
    public final long k;
    public final String l;
    public final long m;
    public InputStream n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wq5(mq5 mq5Var, st5 st5Var, rf8 rf8Var) {
        int i;
        super(rf8Var);
        st5Var.getClass();
        rf8Var.getClass();
        this.i = mq5Var;
        this.j = st5Var;
        this.k = 2000L;
        this.l = "OUploadSession";
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("onedrive_chunk_size", 5);
            long jI = l73.i(((long) l73.h(i, 5, 60)) * 1048576, 5242880L, 62914560L) / 327680;
            this.m = (jI < 1 ? 1L : jI) * 327680;
        } catch (ClassCastException unused) {
            i = 5;
        }
    }

    public static final void l(wq5 wq5Var, kh6 kh6Var, g30 g30Var, long j, long j2, boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!z) {
            long j3 = wq5Var.k;
            if (j3 > 0) {
                long j4 = kh6Var.a;
                if (j4 > 0 && jCurrentTimeMillis - j4 < j3) {
                    return;
                }
            }
        }
        kh6Var.a = jCurrentTimeMillis;
        if (j2 > j) {
            j2 = j;
        }
        g30Var.invoke(Long.valueOf(j2), Long.valueOf(j));
    }

    /* JADX WARN: Code duplicated, block: B:22:0x003d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044  */
    /* JADX WARN: Code duplicated, block: B:27:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:0x004c  */
    /* JADX WARN: Code duplicated, block: B:30:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:35:0x005a  */
    /* JADX WARN: Code duplicated, block: B:38:0x0091 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0097  */
    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    /* JADX WARN: Code duplicated, block: B:43:0x009b A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a8 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b5 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00bb A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c1 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d2 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:68:0x0102 A[Catch: all -> 0x00a4, TRY_LEAVE, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x016a A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:36:0x0087, B:38:0x0091, B:43:0x009b, B:47:0x00ad, B:49:0x00b5, B:54:0x00c1, B:55:0x00cc, B:57:0x00d2, B:59:0x00e1, B:62:0x00e8, B:65:0x00f6, B:66:0x00fa, B:68:0x0102, B:52:0x00bb, B:76:0x0162, B:77:0x0169, B:46:0x00a8, B:78:0x016a, B:79:0x0185), top: B:86:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x00f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00cc A[SYNTHETIC] */
    public static final boolean m(wq5 wq5Var, kh6 kh6Var, xt5 xt5Var, long j, lh6 lh6Var, kh6 kh6Var2, g30 g30Var, Exception exc) throws Exception {
        int i;
        int i2;
        mt5 mt5Var;
        Long l;
        String str;
        Response responseG;
        String strN;
        fl4 fl4Var;
        qj4 qj4VarX;
        xi4 xi4VarG;
        ArrayList arrayList;
        Long l2;
        InputStream inputStreamW;
        String strA;
        Long lY;
        int i3;
        ai6 ai6Var = nf1.a;
        if (x13.H(exc)) {
            i = wq5Var.f;
            i2 = wq5Var.e;
            if (i < i2) {
                if (exc instanceof mt5) {
                    mt5Var = (mt5) exc;
                } else {
                    mt5Var = null;
                }
                if (mt5Var != null) {
                    l = mt5Var.c;
                } else {
                    l = null;
                }
                if (wq5Var.h(l)) {
                    wq5Var.f++;
                    st5 st5Var = wq5Var.j;
                    str = xt5Var.a;
                    st5Var.getClass();
                    Request.Builder builder = new Request.Builder();
                    builder.d(str);
                    builder.b();
                    Request request = new Request(builder);
                    OkHttpClient okHttpClient = st5Var.c;
                    okHttpClient.getClass();
                    responseG = new RealCall(okHttpClient, request).g();
                    try {
                        strN = responseG.k.n();
                        if (responseG.H) {
                            throw new mt5("GET", str, responseG.d, strN, st5.o(responseG));
                        }
                        if (!nq7.j0(strN)) {
                            strN = null;
                        }
                        if (strN != null) {
                            fl4Var = yc9.K(strN).i();
                        } else {
                            fl4Var = new fl4();
                        }
                        qj4VarX = fl4Var.x("nextExpectedRanges");
                        if (qj4VarX != null) {
                            if (qj4VarX instanceof xi4) {
                                xi4VarG = qj4VarX.g();
                            } else {
                                xi4VarG = null;
                            }
                            if (xi4VarG != null) {
                                arrayList = new ArrayList();
                                for (qj4 qj4Var : xi4VarG.a) {
                                    qj4Var.getClass();
                                    strA = st5.a(qj4Var);
                                    if (strA != null || nq7.j0(strA)) {
                                        lY = null;
                                    } else {
                                        lY = uq7.Y(nq7.D0(strA, '-'));
                                    }
                                    if (lY != null) {
                                        arrayList.add(lY);
                                    }
                                }
                                l2 = (Long) el1.d1(arrayList);
                                if (l2 != null) {
                                    long jI = l73.i(l2.longValue(), 0L, j);
                                    responseG.close();
                                    kh6Var.a = jI;
                                    wq5Var.i();
                                    long j2 = kh6Var.a;
                                    wq5Var.i();
                                    q63 q63Var = wq5Var.a.a;
                                    boolean z = q63.d;
                                    inputStreamW = q63Var.w(true);
                                    try {
                                        l73.C(inputStreamW, j2);
                                        wq5Var.n = inputStreamW;
                                        lh6Var.a = inputStreamW;
                                        l(wq5Var, kh6Var2, g30Var, j, kh6Var.a, true);
                                        vr6.i$default(vr6.INSTANCE, wq5Var.l, dj7.j("Retrying upload session (", wq5Var.f, "/", ")", i2), null, 4, null);
                                        return true;
                                    } catch (Exception e) {
                                        f13.a(inputStreamW);
                                        throw e;
                                    }
                                }
                            }
                        }
                        throw new IOException("OneDrive upload session status did not contain nextExpectedRanges");
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(responseG, th);
                            throw th2;
                        }
                    }
                }
            }
        } else {
            String message = exc.getMessage();
            if (message == null) {
                message = "";
            }
            if (nq7.Z(message, "retry if necessary", false) || ((exc instanceof mt5) && ((i3 = ((mt5) exc).a) == 408 || i3 == 429 || ((500 <= i3 && i3 < 600) || i3 == 404)))) {
                i = wq5Var.f;
                i2 = wq5Var.e;
                if (i < i2) {
                    if (exc instanceof mt5) {
                        mt5Var = (mt5) exc;
                    } else {
                        mt5Var = null;
                    }
                    if (mt5Var != null) {
                        l = mt5Var.c;
                    } else {
                        l = null;
                    }
                    if (wq5Var.h(l)) {
                        wq5Var.f++;
                        st5 st5Var2 = wq5Var.j;
                        str = xt5Var.a;
                        st5Var2.getClass();
                        Request.Builder builder2 = new Request.Builder();
                        builder2.d(str);
                        builder2.b();
                        Request request2 = new Request(builder2);
                        OkHttpClient okHttpClient2 = st5Var2.c;
                        okHttpClient2.getClass();
                        responseG = new RealCall(okHttpClient2, request2).g();
                        strN = responseG.k.n();
                        if (responseG.H) {
                            throw new mt5("GET", str, responseG.d, strN, st5.o(responseG));
                        }
                        if (!nq7.j0(strN)) {
                            strN = null;
                        }
                        if (strN != null) {
                            fl4Var = yc9.K(strN).i();
                        } else {
                            fl4Var = new fl4();
                        }
                        qj4VarX = fl4Var.x("nextExpectedRanges");
                        if (qj4VarX != null) {
                            if (qj4VarX instanceof xi4) {
                                xi4VarG = null;
                            } else {
                                xi4VarG = qj4VarX.g();
                            }
                            if (xi4VarG != null) {
                                arrayList = new ArrayList();
                                while (r3.hasNext()) {
                                    qj4Var.getClass();
                                    strA = st5.a(qj4Var);
                                    if (strA != null) {
                                        lY = null;
                                    } else {
                                        lY = null;
                                    }
                                    if (lY != null) {
                                        arrayList.add(lY);
                                    }
                                }
                                l2 = (Long) el1.d1(arrayList);
                                if (l2 != null) {
                                    long jI2 = l73.i(l2.longValue(), 0L, j);
                                    responseG.close();
                                    kh6Var.a = jI2;
                                    wq5Var.i();
                                    long j3 = kh6Var.a;
                                    wq5Var.i();
                                    q63 q63Var2 = wq5Var.a.a;
                                    boolean z2 = q63.d;
                                    inputStreamW = q63Var2.w(true);
                                    l73.C(inputStreamW, j3);
                                    wq5Var.n = inputStreamW;
                                    lh6Var.a = inputStreamW;
                                    l(wq5Var, kh6Var2, g30Var, j, kh6Var.a, true);
                                    vr6.i$default(vr6.INSTANCE, wq5Var.l, dj7.j("Retrying upload session (", wq5Var.f, "/", ")", i2), null, 4, null);
                                    return true;
                                }
                            }
                        }
                        throw new IOException("OneDrive upload session status did not contain nextExpectedRanges");
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.ag8
    public final void b() {
        tb1 tb1Var = tb1.a;
        String displayNameEn = qb1.f().getDisplayNameEn();
        vr6.w$default(vr6.INSTANCE, this.l, eq3.k("Closing connection with ", displayNameEn, ", may result in unknown errors"), null, 4, null);
        i();
    }

    @Override // defpackage.ag8
    public final String d() {
        return this.l;
    }

    @Override // defpackage.ag8
    public final void f() {
        StringBuilder sb = new StringBuilder();
        tb1 tb1Var = tb1.a;
        sb.append(qb1.c().i());
        rf8 rf8Var = this.a;
        if (rf8Var.c) {
            sb.append("/");
            sb.append(qb1.e());
        }
        sb.append("/");
        sb.append(rf8Var.b());
        j(sb.toString(), new g30(this, 3));
    }

    public final void i() {
        f13.a(this.n);
        this.n = null;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x009d  */
    public final void j(String str, g30 g30Var) {
        boolean z;
        mq5 mq5Var = this.i;
        try {
            try {
                mq5Var.invoke();
                if (k(str, g30Var) != null) {
                    this.d.a = str;
                }
                i();
            } catch (Exception e) {
                vr6 vr6Var = vr6.INSTANCE;
                vr6.e$default(vr6Var, this.l, "executeUpload:", e, null, 8, null);
                if (e instanceof mt5) {
                    vr6.e$default(vr6Var, this.l, l73.E((mt5) e), null, 4, null);
                }
                if (e()) {
                    i();
                    return;
                }
                int i = this.f;
                int i2 = this.e;
                boolean z2 = i < i2;
                ai6 ai6Var = nf1.a;
                if (x13.H(e)) {
                    z = true;
                } else {
                    String message = e.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    if (nq7.Z(message, "retry if necessary", false) || x13.B(e)) {
                        z = true;
                    } else {
                        if (e instanceof mt5) {
                            int i3 = ((mt5) e).a;
                            if ((i3 == 408 || i3 == 429 || (500 <= i3 && i3 < 600)) || ((mt5) e).a == 404) {
                                z = true;
                            }
                        }
                        z = false;
                    }
                }
                if (z2 && z) {
                    if (!x13.B(e) || ((Boolean) mq5Var.invoke()).booleanValue()) {
                        mt5 mt5Var = e instanceof mt5 ? (mt5) e : null;
                        if (!h(mt5Var != null ? mt5Var.c : null)) {
                            i();
                            return;
                        }
                        int i4 = this.f + 1;
                        this.f = i4;
                        vr6.i$default(vr6Var, this.l, "executeUpload: Retrying upload (" + i4 + "/" + i2 + ")", null, 4, null);
                        j(str, g30Var);
                        i();
                        return;
                    }
                    vr6.w$default(vr6Var, this.l, "Authentication failed with cloud, disabled retrying!", null, 4, null);
                }
                a(e, false);
                i();
            }
        } catch (Throwable th) {
            i();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x014e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0152 A[SYNTHETIC] */
    public final pt5 k(String str, g30 g30Var) throws Exception {
        Object bn6Var;
        String str2;
        lh6 lh6Var;
        kh6 kh6Var;
        xt5 xt5Var;
        lh6 lh6Var2;
        kh6 kh6Var2;
        Exception exc;
        wq5 wq5Var = this;
        st5 st5Var = wq5Var.j;
        st5Var.getClass();
        fl4 fl4Var = new fl4();
        fl4 fl4Var2 = new fl4();
        fl4Var2.u("@microsoft.graph.conflictBehavior", "replace");
        fl4Var.p("item", fl4Var2);
        Request.Builder builder = new Request.Builder();
        builder.a = st5Var.r("/me/drive/root:/" + st5.m(str) + ":/createUploadSession");
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        builder.c("POST", RequestBody.Companion.a(fl4Var.toString(), st5.f));
        qj4 qj4VarX = st5Var.f(new Request(builder)).x("uploadUrl");
        String strA = qj4VarX != null ? st5.a(qj4VarX) : null;
        if (strA == null) {
            y5.m("OneDrive upload session response did not contain uploadUrl");
            return null;
        }
        xt5 xt5Var2 = new xt5(strA);
        try {
            bn6Var = new URI(strA).getHost();
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = null;
        }
        String str3 = (String) bn6Var;
        rf8 rf8Var = wq5Var.a;
        long jA = rf8Var.a.A();
        lh6 lh6Var3 = new lh6();
        wq5Var.i();
        q63 q63Var = rf8Var.a;
        boolean z = q63.d;
        InputStream inputStreamW = q63Var.w(true);
        try {
            l73.C(inputStreamW, 0L);
            wq5Var.n = inputStreamW;
            lh6Var3.a = inputStreamW;
            kh6 kh6Var3 = new kh6();
            kh6 kh6Var4 = new kh6();
            while (kh6Var3.a < jA && !wq5Var.e()) {
                try {
                    kh6 kh6Var5 = kh6Var4;
                    long j = kh6Var3.a;
                    str2 = str3;
                    try {
                        long jMin = Math.min(wq5Var.m, jA - j);
                        kh6 kh6Var6 = new kh6();
                        try {
                            st5 st5Var2 = wq5Var.j;
                            kh6Var = kh6Var3;
                            try {
                                String str4 = xt5Var2.a;
                                InputStream inputStream = (InputStream) lh6Var3.a;
                                long j2 = jA;
                                try {
                                    vq5 vq5Var = new vq5(kh6Var6, j, wq5Var, kh6Var5, g30Var, j2);
                                    kh6Var5 = kh6Var5;
                                    lh6Var = lh6Var3;
                                    try {
                                        wt5 wt5VarN = st5Var2.n(str4, inputStream, j, jMin, j2, vq5Var);
                                        jA = j2;
                                        try {
                                            long j3 = kh6Var.a + jMin;
                                            kh6Var.a = j3;
                                            l(this, kh6Var5, g30Var, jA, j3, true);
                                            if (wt5VarN.a) {
                                                return wt5VarN.b;
                                            }
                                            wq5Var = this;
                                            kh6Var4 = kh6Var5;
                                            lh6Var3 = lh6Var;
                                            kh6Var3 = kh6Var;
                                            str3 = str2;
                                        } catch (Exception e) {
                                            e = e;
                                            wq5Var = this;
                                            vr6.i$default(vr6.INSTANCE, wq5Var.l, xs1.j("Upload session host=", str2), null, 4, null);
                                            throw e;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        jA = j2;
                                        wq5Var = this;
                                        xt5Var = xt5Var2;
                                        lh6Var2 = lh6Var;
                                        kh6Var2 = kh6Var;
                                        exc = e;
                                        kh6Var = kh6Var2;
                                        if (m(wq5Var, kh6Var2, xt5Var, jA, lh6Var2, kh6Var5, g30Var, exc)) {
                                            throw exc;
                                        }
                                        xt5Var2 = xt5Var;
                                        lh6Var3 = lh6Var2;
                                        kh6Var4 = kh6Var5;
                                        vr6.i$default(vr6.INSTANCE, wq5Var.l, xs1.j("Upload session host=", str2), null, 4, null);
                                        throw e;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    kh6Var5 = kh6Var5;
                                    jA = j2;
                                    lh6Var = lh6Var3;
                                    wq5Var = this;
                                    xt5Var = xt5Var2;
                                    lh6Var2 = lh6Var;
                                    kh6Var2 = kh6Var;
                                    exc = e;
                                    kh6Var = kh6Var2;
                                    if (m(wq5Var, kh6Var2, xt5Var, jA, lh6Var2, kh6Var5, g30Var, exc)) {
                                        throw exc;
                                    }
                                    xt5Var2 = xt5Var;
                                    lh6Var3 = lh6Var2;
                                    kh6Var4 = kh6Var5;
                                    kh6Var3 = kh6Var;
                                    str3 = str2;
                                    vr6.i$default(vr6.INSTANCE, wq5Var.l, xs1.j("Upload session host=", str2), null, 4, null);
                                    throw e;
                                }
                            } catch (Exception e4) {
                                e = e4;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            lh6Var = lh6Var3;
                            kh6Var = kh6Var3;
                        }
                    } catch (Exception e6) {
                        e = e6;
                    }
                } catch (Exception e7) {
                    e = e7;
                    str2 = str3;
                }
            }
            return null;
        } catch (Exception e8) {
            f13.a(inputStreamW);
            throw e8;
        }
    }
}
