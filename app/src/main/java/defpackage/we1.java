package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.SystemClock;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class we1 {
    public final Context a;
    public volatile boolean b;
    public volatile ag8 c;
    public volatile no2 d;
    public volatile xh2 e;

    public we1(Context context) {
        this.a = context;
    }

    public static String B(we1 we1Var, sd1 sd1Var, ke keVar, tb1 tb1Var, q63 q63Var, int i, String str, int i2) {
        boolean z = (i2 & 32) == 0;
        String str2 = (i2 & 64) != 0 ? null : str;
        we1Var.a();
        ag8 ag8VarD = tb1Var.d(new rf8(q63Var, i, z, null, false));
        if (str2 != null && !nq7.j0(str2)) {
            ag8VarD.getClass();
            ag8VarD.b = str2;
        }
        we1Var.c = ag8VarD;
        le1 le1Var = new le1(keVar, sd1Var, we1Var, q63Var, 0);
        ag8VarD.getClass();
        ag8VarD.g = le1Var;
        try {
            zf8 zf8VarC = ag8VarD.c();
            we1Var.c = null;
            we1Var.a();
            if (!zf8VarC.a()) {
                String string = we1Var.a.getString(R.string.cloud_diagnostics_upload_failed, zf8VarC.b());
                string.getClass();
                g84.f(string);
                return null;
            }
            String str3 = zf8VarC.a;
            if (str3 == null || nq7.j0(str3)) {
                str3 = null;
            }
            if (str3 != null) {
                return str3;
            }
            String string2 = we1Var.a.getString(R.string.cloud_diagnostics_upload_missing_file_id);
            string2.getClass();
            g84.f(string2);
            return null;
        } catch (Throwable th) {
            we1Var.c = null;
            throw th;
        }
    }

    public static boolean E(ig3 ig3Var) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        ig3Var.a();
        ui8.b(".info/connected");
        zc2 zc2Var = new zc2(ig3Var.c, new gy5(".info/connected"));
        w00 w00Var = new w00(1, countDownLatch, atomicReference);
        zc2Var.c(w00Var);
        try {
            boolean zAwait = countDownLatch.await(15L, TimeUnit.SECONDS);
            wc2 wc2Var = (wc2) atomicReference.get();
            if (wc2Var != null) {
                throw new IllegalStateException(wc2Var.b);
            }
            zc2Var.g(w00Var);
            return zAwait;
        } catch (Throwable th) {
            zc2Var.g(w00Var);
            throw th;
        }
    }

    public static Object F(dd1 dd1Var, bt3 bt3Var) {
        int iQ = ho6.q();
        int iW = ho6.w();
        int iV = ho6.v();
        boolean z = ho6.z();
        int iY = ho6.y();
        try {
            int i = ue1.b[dd1Var.ordinal()];
            if (i == 1) {
                ho6.T(5);
            } else if (i == 2) {
                ho6.X(5);
            } else if (i == 3) {
                ho6.Y(5);
            } else if (i == 4 || i == 5) {
                ho6.W(5);
                ho6.U(true);
            }
            return bt3Var.invoke();
        } finally {
            ho6.T(iQ);
            ho6.X(iW);
            ho6.W(iV);
            ho6.U(z);
            ho6.Y(iY);
        }
    }

    public static String G(File file, long j) throws NoSuchAlgorithmException, IOException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bArr = new byte[65536];
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 8192);
        long j2 = 0;
        while (j > 0) {
            try {
                int iMin = (int) Math.min(65536L, j);
                for (int i = 0; i < iMin; i++) {
                    bArr[i] = (byte) (((((long) i) + j2) * 31) + 17);
                }
                bufferedOutputStream.write(bArr, 0, iMin);
                messageDigest.update(bArr, 0, iMin);
                long j3 = iMin;
                j2 += j3;
                j -= j3;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(bufferedOutputStream, th);
                    throw th2;
                }
            }
        }
        bufferedOutputStream.close();
        messageDigest.getClass();
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return x50.t0(bArrDigest, "", new nk(3), 30);
    }

    public static void c(qe1 qe1Var) {
        qe1Var.a.h();
        o(qe1Var.b);
        qe1Var.d.h();
    }

    public static void d(re1 re1Var) {
        q63 q63Var = new q63(re1Var.b, 2);
        re1Var.a.h();
        q63Var.h();
        new q63(q63Var.v().concat(".download"), q63Var.o()).h();
        new q63(q63Var.v().concat(".download.meta"), q63Var.o()).h();
        re1Var.c.h();
    }

    public static String h(Throwable th) {
        String message = th.getMessage();
        if (message != null) {
            if (nq7.j0(message)) {
                message = null;
            }
            if (message != null) {
                return message;
            }
        }
        return th.getClass().getSimpleName();
    }

    public static String n(long j) {
        p93 p93Var = p93.a;
        return p93.c(Long.valueOf(j));
    }

    public static void o(q63 q63Var) {
        q63Var.h();
        new q63(q63Var.v().concat(".download"), q63Var.o()).h();
        new q63(q63Var.v().concat(".download.meta"), q63Var.o()).h();
    }

    public static final te1 p(lh6 lh6Var, ArrayList arrayList, we1 we1Var, tb1 tb1Var) {
        td1 td1Var;
        te1 te1Var = (te1) lh6Var.a;
        if (te1Var != null) {
            return te1Var;
        }
        Set set = ud1.a;
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((qd1) it.next()).a);
        }
        int i = ue1.b[tb1Var.g().ordinal()];
        long j = i != 6 ? i != 7 ? 12582912L : 17825792L : 51048576L;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (ud1.a.contains((sd1) obj)) {
                arrayList3.add(obj);
            }
        }
        if (arrayList3.isEmpty()) {
            td1Var = null;
        } else {
            if (arrayList3.contains(sd1.LARGE_ROUND_TRIP)) {
                j = 83886080;
            } else if (!arrayList3.contains(sd1.PROVIDER_TRANSFER_PIPELINE)) {
                j = 33554432;
            }
            td1Var = new td1(j, arrayList3, arrayList3.contains(sd1.PROVIDER_TRANSFER_PIPELINE));
        }
        if (td1Var == null) {
            return null;
        }
        te1 te1Var2 = new te1(we1Var, tb1Var, td1Var);
        lh6Var.a = te1Var2;
        return te1Var2;
    }

    public static /* synthetic */ String y(we1 we1Var, tb1 tb1Var, sd1 sd1Var, ke keVar, long j) {
        return we1Var.x(tb1Var, sd1Var, keVar, j, new oe1(false, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [we1] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v5, types: [we1] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [we1] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [we1] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    public final pd1 A(sd1 sd1Var, tb1 tb1Var, boolean z, ke keVar, te1 te1Var) {
        pd1 pd1Var;
        String strT;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            try {
                ?? r4 = "Required value was null.";
                try {
                    switch (ue1.a[sd1Var.ordinal()]) {
                        case 1:
                            strT = t();
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var = pd1Var.a;
                            rd1Var.getClass();
                            String str = pd1Var.b;
                            str.getClass();
                            return new pd1(rd1Var, str, lValueOf);
                        case 2:
                            strT = s(z);
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf2 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var2 = pd1Var.a;
                            rd1Var2.getClass();
                            String str2 = pd1Var.b;
                            str2.getClass();
                            return new pd1(rd1Var2, str2, lValueOf2);
                        case 3:
                            if (tb1Var == null) {
                                throw new IllegalArgumentException("Required value was null.");
                            }
                            strT = q(tb1Var);
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf3 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var3 = pd1Var.a;
                            rd1Var3.getClass();
                            String str3 = pd1Var.b;
                            str3.getClass();
                            return new pd1(rd1Var3, str3, lValueOf3);
                        case 4:
                            if (tb1Var == null) {
                                throw new IllegalArgumentException("Required value was null.");
                            }
                            strT = r(tb1Var, sd1Var, keVar);
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf4 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var4 = pd1Var.a;
                            rd1Var4.getClass();
                            String str4 = pd1Var.b;
                            str4.getClass();
                            return new pd1(rd1Var4, str4, lValueOf4);
                        case 5:
                            if (tb1Var == null) {
                                throw new IllegalArgumentException("Required value was null.");
                            }
                            ?? r5 = this;
                            strT = y(r5, tb1Var, sd1Var, keVar, 65536L);
                            r4 = r5;
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf5 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var5 = pd1Var.a;
                            rd1Var5.getClass();
                            String str5 = pd1Var.b;
                            str5.getClass();
                            return new pd1(rd1Var5, str5, lValueOf5);
                        case 6:
                            if (te1Var != null) {
                                strT = te1Var.e(sd1Var, keVar);
                            } else {
                                if (tb1Var == null) {
                                    throw new IllegalArgumentException("Required value was null.");
                                }
                                ?? r6 = this;
                                strT = y(r6, tb1Var, sd1Var, keVar, 83886080L);
                                r4 = r6;
                                break;
                            }
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf6 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var6 = pd1Var.a;
                            rd1Var6.getClass();
                            String str6 = pd1Var.b;
                            str6.getClass();
                            return new pd1(rd1Var6, str6, lValueOf6);
                        case 7:
                            if (te1Var != null) {
                                strT = te1Var.g(sd1Var, keVar);
                            } else {
                                if (tb1Var == null) {
                                    throw new IllegalArgumentException("Required value was null.");
                                }
                                strT = w(tb1Var, sd1Var, keVar);
                            }
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf7 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var7 = pd1Var.a;
                            rd1Var7.getClass();
                            String str7 = pd1Var.b;
                            str7.getClass();
                            return new pd1(rd1Var7, str7, lValueOf7);
                        case 8:
                            if (te1Var != null) {
                                strT = te1Var.f(sd1Var, keVar);
                            } else {
                                if (tb1Var == null) {
                                    throw new IllegalArgumentException("Required value was null.");
                                }
                                strT = u(tb1Var, sd1Var, keVar);
                            }
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf8 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var8 = pd1Var.a;
                            rd1Var8.getClass();
                            String str8 = pd1Var.b;
                            str8.getClass();
                            return new pd1(rd1Var8, str8, lValueOf8);
                        case XmlPullParser.COMMENT /* 9 */:
                            if (tb1Var == null) {
                                throw new IllegalArgumentException("Required value was null.");
                            }
                            strT = v(tb1Var, sd1Var, keVar);
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf9 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var9 = pd1Var.a;
                            rd1Var9.getClass();
                            String str9 = pd1Var.b;
                            str9.getClass();
                            return new pd1(rd1Var9, str9, lValueOf9);
                        case 10:
                            if (tb1Var == null) {
                                throw new IllegalArgumentException("Required value was null.");
                            }
                            strT = z(tb1Var, sd1Var, keVar);
                            pd1Var = new pd1(rd1.PASSED, strT, null);
                            Long lValueOf10 = Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime);
                            rd1 rd1Var10 = pd1Var.a;
                            rd1Var10.getClass();
                            String str10 = pd1Var.b;
                            str10.getClass();
                            return new pd1(rd1Var10, str10, lValueOf10);
                        default:
                            throw new mn5();
                    }
                } catch (CancellationException unused) {
                    this = r4;
                    rd1 rd1Var11 = rd1.SKIPPED;
                    String string = this.a.getString(R.string.cancelled);
                    string.getClass();
                    pd1Var = new pd1(rd1Var11, string, null);
                }
            } catch (CancellationException unused2) {
            }
        } catch (kd1 e) {
            pd1Var = new pd1(rd1.ACTION_REQUIRED, h(e), null);
        } catch (Throwable th) {
            pd1Var = new pd1(rd1.FAILED, h(th), null);
        }
    }

    public final void C(long j, q63 q63Var, String str) throws NoSuchAlgorithmException, IOException {
        boolean zJ = q63Var.j();
        Context context = this.a;
        if (!zJ) {
            String string = context.getString(R.string.cloud_diagnostics_download_missing);
            string.getClass();
            g84.f(string);
            return;
        }
        if (q63Var.A() != j) {
            String string2 = context.getString(R.string.cloud_diagnostics_download_size_mismatch, n(j), n(q63Var.A()));
            string2.getClass();
            g84.f(string2);
            return;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bArr = new byte[65536];
        InputStream inputStreamW = q63Var.w(true);
        BufferedInputStream bufferedInputStream = inputStreamW instanceof BufferedInputStream ? (BufferedInputStream) inputStreamW : new BufferedInputStream(inputStreamW, 8192);
        while (true) {
            try {
                int i = bufferedInputStream.read(bArr);
                if (i < 0) {
                    break;
                } else {
                    messageDigest.update(bArr, 0, i);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(bufferedInputStream, th);
                    throw th2;
                }
            }
        }
        bufferedInputStream.close();
        messageDigest.getClass();
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        if (x50.t0(bArrDigest, "", new nk(3), 30).equals(str)) {
            return;
        }
        String string3 = context.getString(R.string.cloud_diagnostics_download_hash_mismatch);
        string3.getClass();
        g84.f(string3);
    }

    public final void D(File file) {
        boolean zExists = file.exists();
        Context context = this.a;
        if (!zExists) {
            String string = context.getString(R.string.cloud_diagnostics_download_missing);
            string.getClass();
            g84.f(string);
        } else {
            if (file.length() <= 0) {
                String string2 = context.getString(R.string.cloud_diagnostics_thumbnail_empty);
                string2.getClass();
                g84.f(string2);
                return;
            }
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getPath());
            if (bitmapDecodeFile != null && bitmapDecodeFile.getWidth() > 0 && bitmapDecodeFile.getHeight() > 0) {
                bitmapDecodeFile.recycle();
                return;
            }
            String string3 = context.getString(R.string.cloud_diagnostics_thumbnail_decode_failed);
            string3.getClass();
            g84.f(string3);
        }
    }

    public final void a() {
        if (this.b) {
            throw new CancellationException(this.a.getString(R.string.cancelled));
        }
    }

    public final void b(sd1 sd1Var, ke keVar, tb1 tb1Var, String str) {
        try {
            g(sd1Var, keVar, tb1Var, str, true);
        } catch (Throwable unused) {
        }
    }

    public final qe1 e(long j) throws NoSuchAlgorithmException, IOException {
        File fileF = f("round-trip");
        String strH = dj7.h(System.nanoTime(), ".bin", dj7.t("cloud-diagnostics-", "-", System.currentTimeMillis()));
        File file = new File(fileF, strH);
        File file2 = new File(fileF, "downloaded-".concat(strH));
        return new qe1(new q63(file, 1), new q63(file2, 2), G(file, j), new q63(fileF, 2));
    }

    public final File f(String str) {
        Context context = this.a;
        File file = new File(context.getCacheDir(), "cloud-diagnostics");
        if (!file.exists() && !file.mkdirs()) {
            String string = context.getString(R.string.cloud_diagnostics_cache_dir_failed);
            string.getClass();
            g84.f(string);
            return null;
        }
        File file2 = new File(file, str + "-" + System.currentTimeMillis() + "-" + System.nanoTime());
        if (file2.mkdirs()) {
            return file2;
        }
        String string2 = context.getString(R.string.cloud_diagnostics_cache_dir_failed);
        string2.getClass();
        g84.f(string2);
        return null;
    }

    public final void g(sd1 sd1Var, ke keVar, tb1 tb1Var, String str, boolean z) {
        if (!z) {
            a();
        }
        String string = this.a.getString(R.string.cloud_diagnostics_deleting_file);
        string.getClass();
        keVar.g(sd1Var, string);
        xh2 xh2VarB = tb1Var.b(new jd1(el1.v1(new LinkedHashSet(nc8.I(str)))));
        this.e = xh2VarB;
        try {
            jq6 jq6VarC = xh2VarB.c();
            this.e = null;
            if (!z) {
                a();
            }
            if (jq6VarC.q()) {
                return;
            }
            String string2 = this.a.getString(R.string.cloud_diagnostics_delete_failed, jq6VarC.b());
            string2.getClass();
            g84.f(string2);
        } catch (Throwable th) {
            this.e = null;
            throw th;
        }
    }

    public final void i(sd1 sd1Var, ke keVar, File file, bt3 bt3Var) throws InterruptedException {
        int i = 0;
        IllegalStateException th = null;
        while (true) {
            Context context = this.a;
            if (i >= 6) {
                e6.j(context.getString(R.string.cloud_diagnostics_thumbnail_failed, 6), th);
                return;
            }
            a();
            file.delete();
            String string = context.getString(R.string.cloud_diagnostics_thumbnail_progress);
            string.getClass();
            keVar.g(sd1Var, string);
            try {
                Closeable closeable = (Closeable) bt3Var.invoke();
                try {
                    InputStream inputStream = (InputStream) closeable;
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        cy0.j(inputStream, fileOutputStream, 8192);
                        fileOutputStream.close();
                        rs9.c(closeable, null);
                        if (file.length() > 0) {
                            return;
                        }
                        th = new IllegalStateException(context.getString(R.string.cloud_diagnostics_thumbnail_empty));
                        if (i < 5) {
                            Thread.sleep(3000L);
                        }
                        i++;
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            rs9.c(fileOutputStream, th2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        rs9.c(closeable, th4);
                        throw th5;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    public final void j(sd1 sd1Var, ke keVar, File file, bt3 bt3Var) throws InterruptedException {
        IllegalStateException th = null;
        int i = 0;
        while (true) {
            Context context = this.a;
            if (i >= 6) {
                e6.j(context.getString(R.string.cloud_diagnostics_thumbnail_failed, 6), th);
                return;
            }
            a();
            file.delete();
            String string = context.getString(R.string.cloud_diagnostics_thumbnail_progress);
            string.getClass();
            keVar.g(sd1Var, string);
            try {
                String str = (String) bt3Var.invoke();
                if (str != null) {
                    if (!uq7.V(str, "http://", false) && !uq7.V(str, "https://", false)) {
                        str = null;
                    }
                    if (str != null) {
                        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
                        uRLConnectionOpenConnection.setConnectTimeout(15000);
                        uRLConnectionOpenConnection.setReadTimeout(15000);
                        try {
                            InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                try {
                                    inputStream.getClass();
                                    cy0.j(inputStream, fileOutputStream, 8192);
                                    fileOutputStream.close();
                                    inputStream.close();
                                    HttpURLConnection httpURLConnection = uRLConnectionOpenConnection instanceof HttpURLConnection ? (HttpURLConnection) uRLConnectionOpenConnection : null;
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    if (file.length() > 0) {
                                        return;
                                    }
                                    th = new IllegalStateException(context.getString(R.string.cloud_diagnostics_thumbnail_empty));
                                    if (i < 5) {
                                        Thread.sleep(3000L);
                                    }
                                    i++;
                                } catch (Throwable th2) {
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        rs9.c(fileOutputStream, th2);
                                        throw th3;
                                    }
                                }
                            } catch (Throwable th4) {
                                try {
                                    throw th4;
                                } catch (Throwable th5) {
                                    rs9.c(inputStream, th4);
                                    throw th5;
                                }
                            }
                        } catch (Throwable th6) {
                            HttpURLConnection httpURLConnection2 = uRLConnectionOpenConnection instanceof HttpURLConnection ? (HttpURLConnection) uRLConnectionOpenConnection : null;
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            throw th6;
                        }
                    }
                }
                throw new IllegalStateException(context.getString(R.string.cloud_diagnostics_thumbnail_empty));
            } catch (Throwable th7) {
                th = th7;
            }
        }
    }

    public final boolean k(sd1 sd1Var, ke keVar, tb1 tb1Var, String str, File file) throws InterruptedException {
        Set set = nd1.a;
        dd1 dd1VarG = tb1Var.g();
        dd1VarG.getClass();
        if (nd1.a.contains(dd1VarG)) {
            int i = 1;
            if (tb1Var instanceof kh0) {
                kh0 kh0Var = (kh0) tb1Var;
                int i2 = 0;
                IllegalStateException th = null;
                while (true) {
                    Context context = this.a;
                    if (i2 >= 6) {
                        e6.j(context.getString(R.string.cloud_diagnostics_thumbnail_failed, 6), th);
                        return false;
                    }
                    a();
                    file.delete();
                    String string = context.getString(R.string.cloud_diagnostics_thumbnail_progress);
                    string.getClass();
                    keVar.g(sd1Var, string);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            kh0Var.p(str, fileOutputStream);
                            fileOutputStream.close();
                            if (file.length() > 0) {
                                return true;
                            }
                            th = new IllegalStateException(context.getString(R.string.cloud_diagnostics_thumbnail_empty));
                            if (i2 < 5) {
                                hv0 hv0Var = th instanceof hv0 ? (hv0) th : null;
                                Long l = hv0Var != null ? hv0Var.c : null;
                                Thread.sleep(l != null ? l.longValue() : 3000L);
                            }
                            i2++;
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                rs9.c(fileOutputStream, th2);
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            } else {
                if (tb1Var instanceof nq5) {
                    j(sd1Var, keVar, file, new rm(3, (nq5) tb1Var, str));
                    return true;
                }
                if (tb1Var instanceof b82) {
                    i(sd1Var, keVar, file, new d11(i, (b82) tb1Var, str));
                    return true;
                }
                if (tb1Var instanceof fu3) {
                    j(sd1Var, keVar, file, new l30(i, (fu3) tb1Var, str));
                    return true;
                }
                if (tb1Var instanceof v52) {
                    jh1 jh1VarO = ((v52) tb1Var).o();
                    jy8 jy8Var = jh1VarO instanceof jy8 ? (jy8) jh1VarO : null;
                    if (jy8Var != null) {
                        i(sd1Var, keVar, file, new qf(4, jy8Var, str));
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void l(final sd1 sd1Var, final ke keVar, tb1 tb1Var, String str, final long j, q63 q63Var, oe1 oe1Var) {
        a();
        Long lValueOf = Long.valueOf(j);
        str.getClass();
        if (j <= 0) {
            lValueOf = null;
        }
        fo2 fo2Var = new fo2(str, 0, lValueOf != null ? lValueOf.longValue() : -1L, q63Var);
        fo2Var.e = oe1Var.a;
        fo2Var.f = oe1Var.b;
        no2 no2VarC = tb1Var.c(fo2Var);
        this.d = no2VarC;
        no2VarC.f = new mt3() { // from class: me1
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                Long l = (Long) obj;
                String string = this.a.getString(R.string.cloud_diagnostics_download_progress, we1.n(l != null ? l.longValue() : 0L), we1.n(j));
                string.getClass();
                keVar.g(sd1Var, string);
                return be8.a;
            }
        };
        try {
            ke keVarB = no2VarC.b();
            this.d = null;
            a();
            if (keVarB.e()) {
                return;
            }
            String string = this.a.getString(R.string.cloud_diagnostics_download_failed, keVarB.b());
            string.getClass();
            g84.f(string);
        } catch (Throwable th) {
            this.d = null;
            throw th;
        }
    }

    public final void m(tb1 tb1Var) {
        tb1 tb1Var2 = tb1.a;
        String strJ = qb1.j();
        if (strJ == null || nq7.j0(strJ)) {
            q(tb1Var);
        } else {
            a();
        }
    }

    public final String q(tb1 tb1Var) {
        a();
        tb1 tb1Var2 = tb1.a;
        boolean zM = qb1.m();
        Context context = this.a;
        if (!zM) {
            String string = context.getString(R.string.no_cloud_connected);
            string.getClass();
            g84.f(string);
            return null;
        }
        CloudResult cloudResultA = tb1Var.a(false);
        if (!(cloudResultA instanceof si1)) {
            String string2 = context.getString(R.string.cloud_diagnostics_access_failed, cloudResultA.getErrorMessage());
            string2.getClass();
            g84.f(string2);
            return null;
        }
        String strJ = qb1.j();
        if (strJ != null && !nq7.j0(strJ)) {
            String string3 = context.getString(R.string.cloud_diagnostics_access_passed, tb1Var.g().getDisplayName());
            string3.getClass();
            return string3;
        }
        String string4 = context.getString(R.string.cloud_diagnostics_main_folder_missing);
        string4.getClass();
        g84.f(string4);
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0325 A[LOOP:2: B:101:0x031a->B:103:0x0325, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:107:0x0339 A[LOOP:3: B:105:0x0333->B:107:0x0339, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:119:0x032f A[EDGE_INSN: B:119:0x032f->B:104:0x032f BREAK  A[LOOP:2: B:101:0x031a->B:103:0x0325], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [we1] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v4, types: [tb1] */
    /* JADX WARN: Type inference failed for: r4v5 */
    public final String r(tb1 tb1Var, sd1 sd1Var, ke keVar) throws Throwable {
        boolean z;
        boolean z2;
        ArrayList arrayList;
        ?? r4;
        ?? r1;
        Iterator it;
        ListIterator listIterator;
        Iterator it2;
        we1 we1Var;
        String str;
        we1 we1Var2 = this;
        Context context = we1Var2.a;
        m(tb1Var);
        File fileF = we1Var2.f("backup-scan");
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jNanoTime = System.nanoTime();
        int i = 21;
        List listA0 = fl1.A0(new ld1(dj7.h(jNanoTime, ".msg", dj7.t("cloud-diagnostics-listing-messages-", "-", jCurrentTimeMillis)), 20), new ld1(dj7.h(jNanoTime, ".cls", dj7.t("cloud-diagnostics-listing-calls-", "-", jCurrentTimeMillis)), 21));
        ArrayList<pe1> arrayList2 = new ArrayList(hl1.G0(listA0, 10));
        Iterator it3 = listA0.iterator();
        while (true) {
            z = true;
            z2 = false;
            if (!it3.hasNext()) {
                break;
            }
            ld1 ld1Var = (ld1) it3.next();
            File file = new File(fileF, ld1Var.a);
            nc3.W(file, new byte[]{83});
            arrayList2.add(new pe1(ld1Var, new q63(file, 1)));
        }
        q63 q63Var = new q63(fileF, 2);
        ArrayList arrayList3 = new ArrayList();
        try {
            String string = context.getString(R.string.cloud_diagnostics_uploading_backup_scan_markers);
            string.getClass();
            keVar.g(sd1Var, string);
            we1Var2 = we1Var2;
            for (pe1 pe1Var : arrayList2) {
                try {
                    int i2 = i;
                    arrayList = arrayList3;
                    try {
                        arrayList.add(B(we1Var2, sd1Var, keVar, tb1Var, pe1Var.b, pe1Var.a.b, null, 64));
                        we1Var2 = this;
                        arrayList3 = arrayList;
                        i = i2;
                    } catch (Throwable th) {
                        th = th;
                        we1Var = this;
                        r4 = tb1Var;
                        r1 = we1Var;
                        it = new pn6(arrayList).iterator();
                        while (true) {
                            listIterator = ((on6) it).a;
                            if (!listIterator.hasPrevious()) {
                                break;
                            }
                            r1.b(sd1Var, keVar, r4, (String) listIterator.previous());
                        }
                        it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            ((pe1) it2.next()).b.h();
                        }
                        q63Var.h();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    arrayList = arrayList3;
                    we1Var = this;
                    r4 = tb1Var;
                    r1 = we1Var;
                    it = new pn6(arrayList).iterator();
                    while (true) {
                        listIterator = ((on6) it).a;
                        if (!listIterator.hasPrevious()) {
                            break;
                            break;
                        }
                        r1.b(sd1Var, keVar, r4, (String) listIterator.previous());
                    }
                    it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((pe1) it2.next()).b.h();
                    }
                    q63Var.h();
                    throw th;
                }
            }
            int i3 = i;
            arrayList = arrayList3;
            String string2 = context.getString(R.string.cloud_diagnostics_scanning_backups);
            string2.getClass();
            keVar.g(sd1Var, string2);
            tb1 tb1Var2 = tb1.a;
            String strE = qb1.e();
            int iQ0 = x65.q0(hl1.G0(arrayList2, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
            for (Object obj : arrayList2) {
                linkedHashMap.put(Integer.valueOf(((pe1) obj).a.b), obj);
            }
            String string3 = context.getString(R.string.messages);
            string3.getClass();
            ui1 ui1VarJ = tb1Var.j();
            pe1 pe1Var2 = (pe1) linkedHashMap.get(20);
            ne1 ne1Var = new ne1(string3, ui1VarJ, pe1Var2 != null ? pe1Var2.a : null);
            String string4 = context.getString(R.string.call_logs);
            string4.getClass();
            ui1 ui1VarF = tb1Var.f();
            pe1 pe1Var3 = (pe1) linkedHashMap.get(Integer.valueOf(i3));
            ne1 ne1Var2 = new ne1(string4, ui1VarF, pe1Var3 != null ? pe1Var3.a : null);
            String string5 = context.getString(R.string.wallpapers);
            string5.getClass();
            ne1 ne1Var3 = new ne1(string5, tb1Var.k(), null);
            String string6 = context.getString(R.string.wifi);
            string6.getClass();
            List<ne1> listA1 = fl1.A0(ne1Var, ne1Var2, ne1Var3, new ne1(string6, tb1Var.l(), null));
            a();
            ArrayList arrayList4 = new ArrayList();
            for (ne1 ne1Var4 : listA1) {
                ui1 ui1Var = ne1Var4.b;
                ld1 ld1Var2 = ne1Var4.c;
                String str2 = ne1Var4.a;
                Exception exc = ui1Var.b;
                if (!(exc == null ? z : z2)) {
                    String strH = exc != null ? h(exc) : null;
                    if (strH == null) {
                        strH = "";
                    }
                    str = str2 + ": " + strH;
                } else if (ld1Var2 != null) {
                    List list = ui1Var.a;
                    if (!list.isEmpty()) {
                        Iterator it4 = list.iterator();
                        while (true) {
                            if (it4.hasNext()) {
                                if (pe4.d(((pg1) it4.next()).a, ld1Var2.a(strE))) {
                                    str = null;
                                }
                            }
                        }
                    }
                    str = str2 + ": " + context.getString(R.string.cloud_diagnostics_backup_scan_marker_missing, ld1Var2.a(strE));
                } else {
                    str = null;
                }
                if (str != null) {
                    arrayList4.add(str);
                }
                z = true;
                z2 = false;
            }
            boolean zIsEmpty = arrayList4.isEmpty();
            try {
                if (!zIsEmpty) {
                    throw new IllegalStateException(el1.Y0(arrayList4, "\n", null, null, null, 62).toString());
                }
                Iterator it5 = listA1.iterator();
                int size = 0;
                while (it5.hasNext()) {
                    List list2 = ((ne1) it5.next()).b.a;
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj2 : list2) {
                        if (!uq7.V(((pg1) obj2).a, "cloud-diagnostics-listing", false)) {
                            arrayList5.add(obj2);
                        }
                    }
                    size += arrayList5.size();
                }
                for (String str3 : el1.v1(new pn6(arrayList))) {
                    g(sd1Var, keVar, tb1Var, str3, false);
                    arrayList.remove(str3);
                }
                String string7 = context.getString(R.string.cloud_diagnostics_scan_passed, Integer.valueOf(size));
                string7.getClass();
                Iterator it6 = new pn6(arrayList).iterator();
                while (true) {
                    ListIterator listIterator2 = ((on6) it6).a;
                    if (!listIterator2.hasPrevious()) {
                        break;
                    }
                    b(sd1Var, keVar, tb1Var, (String) listIterator2.previous());
                }
                Iterator it7 = arrayList2.iterator();
                while (it7.hasNext()) {
                    ((pe1) it7.next()).b.h();
                }
                q63Var.h();
                return string7;
            } catch (Throwable th3) {
                th = th3;
                r1 = zIsEmpty;
                r4 = listA1;
                it = new pn6(arrayList).iterator();
                while (true) {
                    listIterator = ((on6) it).a;
                    if (!listIterator.hasPrevious()) {
                        break;
                        break;
                    }
                    r1.b(sd1Var, keVar, r4, (String) listIterator.previous());
                }
                it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((pe1) it2.next()).b.h();
                }
                q63Var.h();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            arrayList = arrayList3;
            we1Var = we1Var2;
        }
    }

    public final String s(boolean z) throws kd1 {
        Context context = this.a;
        if (!z) {
            t();
        }
        a();
        try {
            boolean zE = E(ig3.b());
            a();
            if (zE) {
                String string = context.getString(R.string.cloud_diagnostics_firebase_passed);
                string.getClass();
                return string;
            }
            String string2 = context.getString(R.string.cloud_diagnostics_firebase_unavailable);
            string2.getClass();
            throw new kd1(string2);
        } catch (Throwable th) {
            String string3 = context.getString(R.string.cloud_diagnostics_firebase_failed, h(th));
            string3.getClass();
            throw new kd1(string3);
        }
    }

    public final String t() throws kd1 {
        a();
        Context context = this.a;
        if (!ai8.i(context)) {
            String string = context.getString(R.string.no_internet_connection_summary);
            string.getClass();
            throw new kd1(string);
        }
        a();
        if (ai8.h()) {
            String string2 = context.getString(R.string.cloud_diagnostics_internet_passed);
            string2.getClass();
            return string2;
        }
        String string3 = context.getString(R.string.cloud_diagnostics_internet_unavailable);
        string3.getClass();
        throw new kd1(string3);
    }

    public final String u(tb1 tb1Var, sd1 sd1Var, ke keVar) {
        m(tb1Var);
        int iT = ho6.t();
        gv7 gv7Var = oi5.L;
        Integer num = (Integer) el1.c1(ly8.u());
        int iIntValue = num != null ? num.intValue() : ly8.v();
        try {
            ho6.V(iIntValue);
            x(tb1Var, sd1Var, keVar, 33554432L, new oe1(true, true));
            ho6.V(iT);
            String string = this.a.getString(R.string.cloud_diagnostics_multithread_download_passed, n(33554432L), Integer.valueOf(iIntValue));
            string.getClass();
            return string;
        } catch (Throwable th) {
            SharedPreferences.Editor editor = cz4.k;
            if (editor != null) {
                editor.putInt("multithreaded_downloads_chunk_count", iT).apply();
                throw th;
            }
            pe4.F("editor");
            throw null;
        }
    }

    public final String v(tb1 tb1Var, sd1 sd1Var, ke keVar) throws Throwable {
        we1 we1Var = this;
        m(tb1Var);
        File fileF = we1Var.f("thumbnail");
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jNanoTime = System.nanoTime();
        StringBuilder sbT = dj7.t("cloud-diagnostics-thumbnail-", "-", jCurrentTimeMillis);
        sbT.append(jNanoTime);
        String string = sbT.toString();
        File file = new File(fileF, string.concat(".wal"));
        File file2 = new File(fileF, string.concat("-thumbnail.jpg"));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.eraseColor(Color.rgb(36, 122, 184));
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            boolean zCompress = bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            Context context = we1Var.a;
            if (!zCompress) {
                String string2 = context.getString(R.string.cloud_diagnostics_thumbnail_source_failed);
                string2.getClass();
                throw new IllegalStateException(string2.toString());
            }
            fileOutputStream.close();
            bitmapCreateBitmap.recycle();
            q63 q63Var = new q63(file, 1);
            re1 re1Var = new re1(q63Var, file2, new q63(fileF, 2));
            String str = null;
            try {
                String strB = B(we1Var, sd1Var, keVar, tb1Var, q63Var, 22, null, 96);
                we1Var = this;
                try {
                    boolean zK = we1Var.k(sd1Var, keVar, tb1Var, strB, file2);
                    if (zK) {
                        we1Var = this;
                    } else {
                        try {
                            we1Var = this;
                            we1Var.l(sd1Var, keVar, tb1Var, strB, q63Var.A(), new q63(file2, 2), new oe1(false, false));
                        } catch (Throwable th) {
                            th = th;
                            we1Var = this;
                            str = strB;
                            if (str != null) {
                                we1Var.b(sd1Var, keVar, tb1Var, str);
                            }
                            d(re1Var);
                            throw th;
                        }
                    }
                    we1Var.D(file2);
                    we1Var.g(sd1Var, keVar, tb1Var, strB, false);
                    String string3 = context.getString(zK ? R.string.cloud_diagnostics_preview_provider_thumbnail_passed : R.string.cloud_diagnostics_preview_original_download_passed);
                    string3.getClass();
                    d(re1Var);
                    return string3;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                rs9.c(fileOutputStream, th4);
                throw th5;
            }
        }
    }

    public final String w(final tb1 tb1Var, final sd1 sd1Var, final ke keVar) {
        long j;
        dd1 dd1VarG = tb1Var.g();
        int i = ue1.b[dd1VarG.ordinal()];
        if (i != 6) {
            j = i != 7 ? 12582912L : 17825792L;
        } else {
            j = 51048576;
        }
        final long j2 = j;
        F(dd1VarG, new bt3() { // from class: ke1
            @Override // defpackage.bt3
            public final Object invoke() {
                return we1.y(this.a, tb1Var, sd1Var, keVar, j2);
            }
        });
        String string = this.a.getString(R.string.cloud_diagnostics_provider_transfer_mode_passed, dd1VarG.getDisplayName(), n(j2));
        string.getClass();
        return string;
    }

    public final String x(tb1 tb1Var, sd1 sd1Var, ke keVar, long j, oe1 oe1Var) throws Throwable {
        sd1 sd1Var2 = sd1Var;
        ke keVar2 = keVar;
        Context context = this.a;
        m(tb1Var);
        qe1 qe1VarE = e(j);
        q63 q63Var = qe1VarE.b;
        String str = null;
        try {
            String string = context.getString(R.string.cloud_diagnostics_preparing_file, n(j));
            string.getClass();
            keVar2.g(sd1Var2, string);
            String strB = B(this, sd1Var2, keVar2, tb1Var, qe1VarE.a, 0, null, 96);
            sd1Var2 = sd1Var;
            keVar2 = keVar;
            try {
                l(sd1Var2, keVar2, tb1Var, strB, j, q63Var, oe1Var);
                try {
                    C(j, q63Var, qe1VarE.c);
                    sd1Var2 = sd1Var;
                    keVar2 = keVar;
                    g(sd1Var2, keVar2, tb1Var, strB, false);
                    String string2 = context.getString(R.string.cloud_diagnostics_round_trip_passed, n(j));
                    string2.getClass();
                    c(qe1VarE);
                    return string2;
                } catch (Throwable th) {
                    th = th;
                    sd1Var2 = sd1Var;
                    keVar2 = keVar;
                    str = strB;
                    if (str != null) {
                        b(sd1Var2, keVar2, tb1Var, str);
                    }
                    c(qe1VarE);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c3 A[LOOP:1: B:36:0x00bd->B:38:0x00c3, LOOP_END] */
    public final String z(tb1 tb1Var, sd1 sd1Var, ke keVar) throws Throwable {
        Iterator it;
        we1 we1Var = this;
        m(tb1Var);
        qe1 qe1VarE = we1Var.e(4096L);
        q63 q63Var = qe1VarE.b;
        q63 q63Var2 = qe1VarE.a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        tb1 tb1Var2 = tb1Var;
        sd1 sd1Var2 = sd1Var;
        ke keVar2 = keVar;
        try {
            String strB = B(we1Var, sd1Var2, keVar2, tb1Var2, q63Var2, 0, null, 96);
            try {
                linkedHashSet.add(strB);
                String strG = G(new File(q63Var2.v()), 8192L);
                we1Var = this;
                tb1Var2 = tb1Var;
                String strB2 = B(we1Var, sd1Var, keVar, tb1Var2, q63Var2, 0, strB, 32);
                try {
                    linkedHashSet.add(strB2);
                    boolean z = tb1Var2 instanceof kh0;
                    Context context = we1Var.a;
                    if (z && !strB2.equals(strB)) {
                        String string = context.getString(R.string.cloud_diagnostics_version_id_mismatch);
                        string.getClass();
                        throw new IllegalStateException(string.toString());
                    }
                    we1Var.l(sd1Var, keVar, tb1Var2, strB2, 8192L, q63Var, new oe1(false, false));
                    try {
                        we1Var.C(8192L, q63Var, strG);
                        tb1Var2 = tb1Var;
                        sd1Var2 = sd1Var;
                        keVar2 = keVar;
                        we1Var.g(sd1Var2, keVar2, tb1Var2, strB2, false);
                        linkedHashSet.remove(strB2);
                        String string2 = context.getString(R.string.cloud_diagnostics_same_name_update_passed);
                        string2.getClass();
                        Iterator it2 = linkedHashSet.iterator();
                        while (it2.hasNext()) {
                            we1Var.b(sd1Var2, keVar2, tb1Var2, (String) it2.next());
                        }
                        c(qe1VarE);
                        return string2;
                    } catch (Throwable th) {
                        th = th;
                        tb1Var2 = tb1Var;
                        sd1Var2 = sd1Var;
                        keVar2 = keVar;
                        it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            we1Var.b(sd1Var2, keVar2, tb1Var2, (String) it.next());
                        }
                        c(qe1VarE);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    sd1Var2 = sd1Var;
                    keVar2 = keVar;
                    it = linkedHashSet.iterator();
                    while (it.hasNext()) {
                        we1Var.b(sd1Var2, keVar2, tb1Var2, (String) it.next());
                    }
                    c(qe1VarE);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                we1Var = this;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
