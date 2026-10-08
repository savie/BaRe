package defpackage;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import okhttp3.HttpUrl;
import okhttp3.Request;
import org.swiftapps.swiftbackup.R;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sl4 implements hp4, xe9, k15, zm7, v36, aj8, w23, tl6, dh5, z98, x76, uk7, kw5, nx1, ba1 {
    public static volatile sl4 a;
    public static final sl4 b = new sl4();
    public static final sl4 c = new sl4();
    public static final sl4 d = new sl4();
    public static final sl4 e = new sl4();
    public static final /* synthetic */ sl4 f = new sl4();
    public static sl4 k;

    public static int A(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }

    public static List B(long j) {
        if (j < 0) {
            c6.f("contentLength must not be negative.");
            return null;
        }
        if (j <= 8388608) {
            return nc8.I(new o08(0, 0L, j));
        }
        ArrayList arrayList = new ArrayList();
        long j2 = 0;
        int i = 0;
        while (j2 < j) {
            long jMin = Math.min(8388608L, j - j2);
            arrayList.add(new o08(i, j2, jMin));
            j2 += jMin;
            i++;
        }
        if (arrayList.size() <= 1 || ((o08) el1.a1(arrayList)).c > 4194304) {
            return arrayList;
        }
        o08 o08Var = (o08) dj7.e(arrayList, 2);
        return el1.f1(new o08(o08Var.a, o08Var.b, o08Var.c + ((o08) el1.a1(arrayList)).c), el1.O0(2, arrayList));
    }

    public static void C(tl4 tl4Var) throws IOException {
        if (tl4Var instanceof om4) {
            om4 om4Var = (om4) tl4Var;
            om4Var.J(5);
            Map.Entry entry = (Map.Entry) ((Iterator) om4Var.W()).next();
            om4Var.Z(entry.getValue());
            om4Var.Z(new kl4((String) entry.getKey()));
            return;
        }
        int iDoPeek = tl4Var.peeked;
        if (iDoPeek == 0) {
            iDoPeek = tl4Var.doPeek();
        }
        if (iDoPeek == 13) {
            tl4Var.peeked = 9;
        } else if (iDoPeek == 12) {
            tl4Var.peeked = 8;
        } else {
            if (iDoPeek != 14) {
                throw tl4Var.D("a name");
            }
            tl4Var.peeked = 10;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:31|17|34) */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        r1 = r0.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0057, code lost:
    
        if (r1 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
    
        r12.a = r11;
        r12.b = r3;
        r12.d = 1;
        r0 = defpackage.yc9.j(r3, r12);
        r1 = defpackage.yx1.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
    
        if (r0 == r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0076, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x006e -> B:27:0x0072). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object v(java.io.FileOutputStream r11, defpackage.kv1 r12) throws java.io.IOException {
        /*
            boolean r0 = r12 instanceof defpackage.bi5
            if (r0 == 0) goto L13
            r0 = r12
            bi5 r0 = (defpackage.bi5) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            bi5 r0 = new bi5
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.c
            int r1 = r0.d
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L2a
            long r3 = r0.b
            java.io.FileOutputStream r11 = r0.a
            defpackage.lg7.H(r12)
            r12 = r0
            goto L72
        L2a:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r11)
            r11 = 0
            return r11
        L31:
            defpackage.lg7.H(r12)
            r3 = 10
            r12 = r0
        L37:
            r0 = 60000(0xea60, double:2.9644E-319)
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 > 0) goto L77
            java.nio.channels.FileChannel r5 = r11.getChannel()     // Catch: java.io.IOException -> L52
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            r6 = 0
            java.nio.channels.FileLock r0 = r5.lock(r6, r8, r10)     // Catch: java.io.IOException -> L52
            r0.getClass()     // Catch: java.io.IOException -> L52
            goto L8a
        L52:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            if (r1 == 0) goto L76
            java.lang.String r5 = "Resource deadlock would occur"
            r6 = 0
            boolean r1 = defpackage.nq7.Z(r1, r5, r6)
            if (r1 != r2) goto L76
            r12.a = r11
            r12.b = r3
            r12.d = r2
            java.lang.Object r0 = defpackage.yc9.j(r3, r12)
            yx1 r1 = defpackage.yx1.a
            if (r0 != r1) goto L72
            r0 = r1
            goto L8a
        L72:
            r0 = 2
            long r3 = r3 * r0
            goto L37
        L76:
            throw r0
        L77:
            java.nio.channels.FileChannel r5 = r11.getChannel()
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            r6 = 0
            java.nio.channels.FileLock r0 = r5.lock(r6, r8, r10)
            r0.getClass()
        L8a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sl4.v(java.io.FileOutputStream, kv1):java.lang.Object");
    }

    public static int x(int i, int i2, int i3) {
        int i4 = 1;
        while (i3 >= 32) {
            i4 = (int) ((((4294967295L & ((long) (i2 * i4))) * ((long) i)) + ((long) i4)) >>> 32);
            i3 -= 32;
        }
        if (i3 <= 0) {
            return i4;
        }
        return (int) ((((4294967295L & ((long) ((i2 * i4) & ((-1) >>> (-i3))))) * ((long) i)) + ((long) i4)) >>> i3);
    }

    @Override // defpackage.zm7
    public boolean c(long j) {
        return j == 3221225524L || j == 3221225530L || j == 3221225731L || j == 3221225558L;
    }

    @Override // defpackage.hp4
    public hp4 d(Object obj, Object obj2, Comparator comparator) {
        sl4 sl4Var = b;
        return new ip4(obj, obj2, sl4Var, sl4Var);
    }

    @Override // defpackage.ba1
    public long e() {
        return SystemClock.elapsedRealtime();
    }

    @Override // defpackage.k15
    public void g(String str, Level level) {
        if (level != Level.OFF) {
            Log.println(A(level), "EventBus", str);
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return a48.a;
    }

    @Override // defpackage.hp4
    public Object getKey() {
        return null;
    }

    @Override // defpackage.hp4
    public Object getValue() {
        return null;
    }

    @Override // defpackage.zv2
    public boolean h(Object obj, File file, ou5 ou5Var) throws Throwable {
        try {
            ay0.d(((fx3) ((ll6) obj).get()).a.a.a.d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e2) {
            if (!Log.isLoggable("GifEncoder", 5)) {
                return false;
            }
            Log.w("GifEncoder", "Failed to encode GIF drawable data", e2);
            return false;
        }
    }

    @Override // defpackage.x76
    public void i() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // defpackage.hp4
    public boolean isEmpty() {
        return true;
    }

    @Override // defpackage.v36
    public CharSequence j(Preference preference) {
        EditTextPreference editTextPreference = (EditTextPreference) preference;
        return TextUtils.isEmpty(editTextPreference.l0) ? editTextPreference.a.getString(R.string.not_set) : editTextPreference.l0;
    }

    @Override // defpackage.x76
    public void k(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case XmlPullParser.COMMENT /* 9 */:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    @Override // defpackage.uk7
    public StackTraceElement[] l(StackTraceElement[] stackTraceElementArr) {
        int i;
        HashMap map = new HashMap();
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[stackTraceElementArr.length];
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < stackTraceElementArr.length) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i2];
            Integer num = (Integer) map.get(stackTraceElement);
            if (num == null) {
                stackTraceElementArr2[i3] = stackTraceElementArr[i2];
                i3++;
                i4 = 1;
                i = i2;
                break;
                break;
            }
            int iIntValue = num.intValue();
            int i5 = i2 - iIntValue;
            if (i2 + i5 <= stackTraceElementArr.length) {
                int i6 = 0;
                while (true) {
                    if (i6 >= i5) {
                        int iIntValue2 = i2 - num.intValue();
                        if (i4 < 10) {
                            System.arraycopy(stackTraceElementArr, i2, stackTraceElementArr2, i3, iIntValue2);
                            i3 += iIntValue2;
                            i4++;
                        }
                        i = (iIntValue2 - 1) + i2;
                        break;
                    }
                    if (!stackTraceElementArr[iIntValue + i6].equals(stackTraceElementArr[i2 + i6])) {
                        stackTraceElementArr2[i3] = stackTraceElementArr[i2];
                        i3++;
                        i4 = 1;
                        i = i2;
                        break;
                        break;
                    }
                    i6++;
                }
            } else {
                stackTraceElementArr2[i3] = stackTraceElementArr[i2];
                i3++;
                i4 = 1;
                i = i2;
                break;
            }
            map.put(stackTraceElement, Integer.valueOf(i2));
            i2 = i + 1;
        }
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i3];
        System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, 0, i3);
        return i3 < stackTraceElementArr.length ? stackTraceElementArr3 : stackTraceElementArr;
    }

    @Override // defpackage.hp4
    public boolean n() {
        return false;
    }

    @Override // defpackage.z98
    public x98 o(int i) {
        return lk.b;
    }

    @Override // defpackage.aj8
    public void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        Log.e("Features", "Failed to read multiThreadedDownloads feature availability", wc2Var.c());
    }

    @Override // defpackage.aj8
    public void onDataChange(eb2 eb2Var) {
        Boolean bool = (Boolean) eb2Var.a("feature_available").c(Boolean.TYPE);
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putBoolean("allow_multithreaded_downloads", zBooleanValue).apply();
        }
        String str = (String) eb2Var.a("allowed_chunks_count").c(String.class);
        if (str != null) {
            List listX0 = nq7.x0(str, new String[]{","}, 6);
            ArrayList arrayList = new ArrayList();
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                Integer numX = uq7.X(nq7.H0((String) it.next()).toString());
                if (numX != null) {
                    arrayList.add(numX);
                }
            }
            String strY0 = el1.Y0(arrayList, ",", null, null, null, 62);
            SharedPreferences.Editor editor2 = cz4.k;
            if (editor2 != null) {
                editor2.putString("features_allowed_multithreaded_downloads_chunk_counts", strY0).apply();
            } else {
                pe4.F("editor");
                throw null;
            }
        }
    }

    @Override // defpackage.kw5
    public boolean p(byte[] bArr) {
        return bArr.length >= 4 && bArr[0] == -2 && bArr[1] == 83 && bArr[2] == 77 && bArr[3] == 66;
    }

    @Override // defpackage.tl6
    public int q(ou5 ou5Var) {
        return 1;
    }

    @Override // defpackage.kw5
    public ev6 read(byte[] bArr) {
        return new st6(bArr);
    }

    @Override // defpackage.hp4
    public int size() {
        return 0;
    }

    @Override // defpackage.k15
    public void u(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            int iA = A(level);
            StringBuilder sbN = fz5.n(str, "\n");
            sbN.append(Log.getStackTraceString(th));
            Log.println(iA, "EventBus", sbN.toString());
        }
    }

    public boolean w() {
        return false;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new fe8(1);
    }

    public String z(Object obj) {
        HttpUrl httpUrl = ((Request) obj).a;
        if (httpUrl == null) {
            return null;
        }
        return httpUrl.a + ":" + httpUrl.d + ":" + httpUrl.e;
    }

    @Override // defpackage.xe9
    public Object zza() {
        throw new IllegalStateException();
    }

    @Override // defpackage.hp4
    public hp4 b() {
        return this;
    }

    @Override // defpackage.hp4
    public hp4 r() {
        return this;
    }

    @Override // defpackage.hp4
    public hp4 s() {
        return this;
    }

    @Override // defpackage.hp4
    public hp4 t() {
        return this;
    }

    @Override // defpackage.hp4
    public void a(iz1 iz1Var) {
    }

    @Override // defpackage.hp4
    public hp4 f(Object obj, Comparator comparator) {
        return this;
    }

    @Override // defpackage.hp4
    public hp4 m(int i, jp4 jp4Var, jp4 jp4Var2) {
        return this;
    }
}
