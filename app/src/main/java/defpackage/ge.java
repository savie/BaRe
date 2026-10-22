package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import android.view.View;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.swiftapps.sba.SbaZstdNative;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ge implements bw0, mo1, nr0, dh5, nx1, SuccessContinuation, qa7, w83, kw5, c33, zm7 {
    public static final ge a = new ge();
    public static final ge b = new ge();
    public static final ge c = new ge();
    public static final ge d = new ge();
    public static final ge e = new ge();
    public static final ge f = new ge();
    public static ge k;

    public ge(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            new bj7(view);
        } else {
            new ma2(view);
        }
    }

    public static String A(q64 q64Var) {
        String str = q64Var.a;
        if ("br".equals(str)) {
            return "\n";
        }
        if ("img".equals(str)) {
            String str2 = (String) q64Var.a().get("alt");
            return (str2 == null || str2.length() == 0) ? "￼" : str2;
        }
        if ("iframe".equals(str)) {
            return " ";
        }
        return null;
    }

    public static n27 B(long[] jArr) {
        if (jArr.length == 2) {
            return new n27(jArr[0], jArr[1]);
        }
        f6.g(fz5.j(jArr.length, "Native zstd result must contain 2 values, got "));
        return null;
    }

    public static void C(Context context, Locale locale) {
        Locale.setDefault(locale);
        Resources resources = context.getResources();
        resources.getClass();
        Configuration configuration = resources.getConfiguration();
        configuration.getClass();
        Locale locale2 = configuration.getLocales().get(0);
        locale2.getClass();
        if (locale2.equals(locale)) {
            return;
        }
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        LinkedHashSet linkedHashSet = new LinkedHashSet(x65.q0(1));
        x50.w0(new Locale[]{locale}, linkedHashSet);
        LocaleList localeList = LocaleList.getDefault();
        localeList.getClass();
        int size = localeList.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Locale locale3 = localeList.get(i);
            locale3.getClass();
            arrayList.add(locale3);
        }
        linkedHashSet.addAll(arrayList);
        Object[] array = linkedHashSet.toArray(new Locale[0]);
        if (array == null) {
            throw new kc8("null cannot be cast to non-null type kotlin.Array<T>");
        }
        Locale[] localeArr = (Locale[]) array;
        configuration2.setLocales(new LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
        resources.updateConfiguration(configuration2, resources.getDisplayMetrics());
    }

    public static byte[] q(byte[] bArr) throws yy6 {
        try {
            return SbaZstdNative.a.compressZstdBytes(bArr, 3);
        } catch (IOException e2) {
            throw new yy6(xs1.j("Native zstd compress bytes failed: ", e2.getMessage()), e2);
        }
    }

    public static ic2 r(a87 a87Var, nh nhVar, dv1 dv1Var, bt3 bt3Var) {
        ov2 ov2Var = ov2.a;
        int i = 2;
        jv1 jv1Var = null;
        try {
            System.loadLibrary("datastore_shared_counter");
            return new ic2(new x93(a87Var, new gi5(dv1Var), bt3Var), nc8.I(new o41(ov2Var, jv1Var, i)), nhVar, dv1Var);
        } catch (SecurityException | UnsatisfiedLinkError unused) {
            return new ic2(new x93(a87Var, v93.a, bt3Var), nc8.I(new o41(ov2Var, jv1Var, i)), nhVar, dv1Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d6 A[RETURN] */
    public static hy0 s(String str) {
        int i;
        char cCharAt;
        str.getClass();
        byte[] bArr = a.a;
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i2 = (int) ((((long) length) * 6) / 8);
        byte[] bArrCopyOf = new byte[i2];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i3 >= length) {
                int i7 = i4 % 4;
                if (i7 != 1) {
                    if (i7 == 2) {
                        bArrCopyOf[i6] = (byte) ((i5 << 12) >> 16);
                        i6++;
                    } else if (i7 == 3) {
                        int i8 = i5 << 6;
                        int i9 = i6 + 1;
                        bArrCopyOf[i6] = (byte) (i8 >> 16);
                        i6 += 2;
                        bArrCopyOf[i9] = (byte) (i8 >> 8);
                    }
                    if (i6 != i2) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i6);
                    }
                }
                if (bArrCopyOf != null) {
                    return new hy0(bArrCopyOf);
                }
                return null;
            }
            char cCharAt2 = str.charAt(i3);
            if ('A' <= cCharAt2 && cCharAt2 < '[') {
                i = cCharAt2 - 'A';
            } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                i = cCharAt2 - 'G';
            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                i = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i = 62;
            } else {
                if (cCharAt2 != '/' && cCharAt2 != '_') {
                    if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                        break;
                    }
                } else {
                    i = 63;
                }
                i3++;
            }
            i5 = (i5 << 6) | i;
            i4++;
            if (i4 % 4 == 0) {
                bArrCopyOf[i6] = (byte) (i5 >> 16);
                int i10 = i6 + 2;
                bArrCopyOf[i6 + 1] = (byte) (i5 >> 8);
                i6 += 3;
                bArrCopyOf[i10] = (byte) i5;
            }
            i3++;
        }
        bArrCopyOf = null;
        if (bArrCopyOf != null) {
            return new hy0(bArrCopyOf);
        }
        return null;
    }

    public static hy0 t(String str) {
        str.getClass();
        if (str.length() % 2 != 0) {
            f6.g("Unexpected hex string: ".concat(str));
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (jd4.a(str.charAt(i2 + 1)) + (jd4.a(str.charAt(i2)) << 4));
        }
        return new hy0(bArr);
    }

    public static fa7 u(fo8 fo8Var) {
        return new fa7(System.currentTimeMillis() + 3600000, new me6(8), new ea7(true, false, false), 10.0d, 1.2d, 60);
    }

    public static hy0 v(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(f51.a);
        bytes.getClass();
        hy0 hy0Var = new hy0(bytes);
        hy0Var.c = str;
        return hy0Var;
    }

    public static hy0 w(byte[] bArr) {
        hy0 hy0Var = hy0.d;
        int length = bArr.length;
        k55.c(bArr.length, 0L, length);
        return new hy0(x50.k0(bArr, 0, length));
    }

    public static HttpURLConnection x(Uri uri) {
        jb9.j(uri, "url must not be null");
        jb9.h("only https connections are permitted", "https".equals(uri.getScheme()));
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(yr5.p);
        httpURLConnection.setInstanceFollowRedirects(false);
        return httpURLConnection;
    }

    public static void z(File file) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return;
        }
        if (parentFile.exists() && !parentFile.isDirectory() && pe4.d(parentFile.getName(), "firebaseSessions") && !parentFile.delete()) {
            c6.n(parentFile, "Failed to delete conflicting file: ");
            return;
        }
        if (parentFile.isDirectory()) {
            return;
        }
        try {
            Files.createDirectories(parentFile.toPath(), new FileAttribute[0]);
        } catch (Exception e2) {
            throw new IOException("Failed to create directory: " + parentFile, e2);
        }
    }

    @Override // defpackage.c33
    public Object b() {
        try {
            return new cx6(MessageDigest.getInstance("SHA-256"));
        } catch (NoSuchAlgorithmException e2) {
            y5.k(e2);
            return null;
        }
    }

    @Override // defpackage.zm7
    public boolean c(long j) {
        return j == 0 || j == 2147483693L;
    }

    @Override // defpackage.nr0
    public Bitmap d(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // defpackage.w83
    public String e() {
        return null;
    }

    @Override // defpackage.nr0
    public void f(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // defpackage.w83
    public byte[] g() {
        return null;
    }

    @Override // defpackage.bw0
    public boolean h(aw0 aw0Var) {
        return true;
    }

    @Override // defpackage.qa7
    public fa7 j(fo8 fo8Var, JSONObject jSONObject) {
        return u(fo8Var);
    }

    @Override // defpackage.nr0
    public Bitmap k(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        Object objG = pp0Var.g(new nc6(ld8.class, Executor.class));
        objG.getClass();
        return rs9.e((Executor) objG);
    }

    @Override // defpackage.kw5
    public boolean p(byte[] bArr) {
        return bArr.length >= 4 && bArr[0] == -1 && bArr[1] == 83 && bArr[2] == 77 && bArr[3] == 66;
    }

    @Override // defpackage.kw5
    public ev6 read(byte[] bArr) throws fs6 {
        throw new fs6();
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        return Tasks.forResult(Boolean.TRUE);
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new mx0(new lv1(9));
    }

    @Override // defpackage.w83
    public void a() {
    }

    @Override // defpackage.w83
    public void i() {
    }

    @Override // defpackage.nr0
    public void o() {
    }

    @Override // defpackage.nr0
    public void l(int i) {
    }

    @Override // defpackage.w83
    public void n(long j, String str) {
    }
}
