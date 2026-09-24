package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import android.util.Xml;
import com.nimbusds.jose.crypto.impl.XC20P;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.rootservice.ShellHelper;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.wifi.PasswordInfo;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class iz1 {
    public static final Object a = new Object();
    public static final sl4 b = new sl4();
    public static final int[] c = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};
    public static final int[] d = {-1424848535, -487721339, 580428573, 1745064566, -770181698, 1036971123, 461123738, -1582065343, 1268693629, -889041821, -731974758, 43769659, 0, 0, 0, 16777216};
    public static final tj9 e = new tj9(0);
    public static final kt9 f = new kt9(mj9.class, w99.class);
    public static long g;
    public static Method h;

    public static final void A(String str) {
        str.getClass();
        if (str.length() <= 0) {
            c6.f("Entry name must not be empty");
            return;
        }
        if (nq7.g0((char) 0, 0, 6, str) >= 0) {
            c6.f("Entry name must not contain NUL");
            return;
        }
        if (uq7.V(str, "/", false)) {
            f6.g("Entry name must be relative: ".concat(str));
            return;
        }
        if (nq7.a0(str, '\\')) {
            f6.g("Entry name must use '/' separators only: ".concat(str));
            return;
        }
        List<String> listW0 = nq7.w0(str, new char[]{'/'}, 6);
        if (listW0.isEmpty()) {
            return;
        }
        for (String str2 : listW0) {
            if (str2.length() == 0 || str2.equals(".") || str2.equals("..")) {
                f6.g("Unsafe SBA entry name: ".concat(str));
                return;
            }
        }
    }

    public static long C(byte[] bArr, int i) {
        return ((long) (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16))) & 4294967295L;
    }

    public static void D(int i, long j, byte[] bArr) {
        int i2 = 0;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & j);
            i2++;
            j >>= 8;
        }
    }

    public static final void E(StringBuilder sb, Iterator it, lk lkVar) {
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            sb.append(lk.z(entry.getKey()));
            sb.append(" : ");
            sb.append(lk.z(entry.getValue()));
            while (it.hasNext()) {
                sb.append(",\n  ");
                Map.Entry entry2 = (Map.Entry) it.next();
                sb.append(lk.z(entry2.getKey()));
                sb.append(" : ");
                sb.append(lk.z(entry2.getValue()));
            }
        }
    }

    public static byte[] F(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            c6.f("The key length in bytes must be 32.");
            return null;
        }
        long jC = C(bArr, 0) & 67108863;
        int i = 3;
        long jC2 = (C(bArr, 3) >> 2) & 67108611;
        long jC3 = (C(bArr, 6) >> 4) & 67092735;
        long jC4 = (C(bArr, 9) >> 6) & 66076671;
        long jC5 = (C(bArr, 12) >> 8) & 1048575;
        long j = jC2 * 5;
        long j2 = jC3 * 5;
        long j3 = jC4 * 5;
        long j4 = jC5 * 5;
        byte[] bArr3 = new byte[17];
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        int i2 = 0;
        while (i2 < bArr2.length) {
            int iMin = Math.min(16, bArr2.length - i2);
            System.arraycopy(bArr2, i2, bArr3, 0, iMin);
            bArr3[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr3, iMin + 1, 17, (byte) 0);
            }
            long jC6 = j9 + (C(bArr3, 0) & 67108863);
            long jC7 = j5 + ((C(bArr3, i) >> 2) & 67108863);
            long jC8 = j6 + ((C(bArr3, 6) >> 4) & 67108863);
            long jC9 = j7 + ((C(bArr3, 9) >> 6) & 67108863);
            long j10 = jC2;
            long jC10 = j8 + (((C(bArr3, 12) >> 8) & 67108863) | ((long) (bArr3[16] << 24)));
            long j11 = (jC10 * j) + (jC9 * j2) + (jC8 * j3) + (jC7 * j4) + (jC6 * jC);
            long j12 = (jC10 * j2) + (jC9 * j3) + (jC8 * j4) + (jC7 * jC) + (jC6 * j10);
            long j13 = (jC10 * j3) + (jC9 * j4) + (jC8 * jC) + (jC7 * j10) + (jC6 * jC3);
            long j14 = (jC10 * j4) + (jC9 * jC) + (jC8 * j10) + (jC7 * jC3) + (jC6 * jC4);
            long j15 = jC9 * j10;
            long j16 = jC10 * jC;
            long j17 = j12 + (j11 >> 26);
            long j18 = j13 + (j17 >> 26);
            long j19 = j14 + (j18 >> 26);
            long j20 = j16 + j15 + (jC8 * jC3) + (jC7 * jC4) + (jC6 * jC5) + (j19 >> 26);
            long j21 = j20 >> 26;
            j8 = j20 & 67108863;
            long j22 = (j21 * 5) + (j11 & 67108863);
            i2 += 16;
            j6 = j18 & 67108863;
            j7 = j19 & 67108863;
            j9 = j22 & 67108863;
            j5 = (j17 & 67108863) + (j22 >> 26);
            jC2 = j10;
            i = 3;
        }
        long j23 = j6 + (j5 >> 26);
        long j24 = j23 & 67108863;
        long j25 = j7 + (j23 >> 26);
        long j26 = j25 & 67108863;
        long j27 = j8 + (j25 >> 26);
        long j28 = j27 & 67108863;
        long j29 = ((j27 >> 26) * 5) + j9;
        long j30 = j29 >> 26;
        long j31 = j29 & 67108863;
        long j32 = (j5 & 67108863) + j30;
        long j33 = j31 + 5;
        long j34 = j33 & 67108863;
        long j35 = j32 + (j33 >> 26);
        long j36 = j24 + (j35 >> 26);
        long j37 = j26 + (j36 >> 26);
        long j38 = j37 & 67108863;
        long j39 = (j28 + (j37 >> 26)) - 67108864;
        long j40 = j39 >> 63;
        long j41 = j31 & j40;
        long j42 = j32 & j40;
        long j43 = j24 & j40;
        long j44 = j26 & j40;
        long j45 = j28 & j40;
        long j46 = ~j40;
        long j47 = j42 | (j35 & 67108863 & j46);
        long j48 = j43 | (j36 & 67108863 & j46);
        long j49 = j44 | (j38 & j46);
        long j50 = (j41 | (j34 & j46) | (j47 << 26)) & 4294967295L;
        long j51 = ((j47 >> 6) | (j48 << 20)) & 4294967295L;
        long j52 = ((j48 >> 12) | (j49 << 14)) & 4294967295L;
        long j53 = ((j49 >> 18) | ((j45 | (j39 & j46)) << 8)) & 4294967295L;
        long jC11 = C(bArr, 16) + j50;
        long j54 = jC11 & 4294967295L;
        long jC12 = C(bArr, 20) + j51 + (jC11 >> 32);
        long jC13 = C(bArr, 24) + j52 + (jC12 >> 32);
        long jC14 = (C(bArr, 28) + j53 + (jC13 >> 32)) & 4294967295L;
        byte[] bArr4 = new byte[16];
        D(0, j54, bArr4);
        D(4, jC12 & 4294967295L, bArr4);
        D(8, jC13 & 4294967295L, bArr4);
        D(12, jC14, bArr4);
        return bArr4;
    }

    public static final Long a(List list, jj5 jj5Var) {
        Iterator it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            Long l = (Long) jj5Var.c((xy6) it.next());
            if (l == null) {
                return null;
            }
            long jLongValue = l.longValue();
            if (Long.MAX_VALUE - j < jLongValue) {
                return null;
            }
            j += jLongValue;
        }
        return Long.valueOf(j);
    }

    public static void b(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127);
        }
        Trace.beginSection(str);
    }

    public static float c(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 > f4 ? f4 : f2;
    }

    public static int d(int i, int i2, int i3) {
        if (i < i2) {
            return i2;
        }
        return i > i3 ? i3 : i;
    }

    public static void e(Cursor cursor) {
        if (cursor != null) {
            try {
                xs1.q(cursor);
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:0x0098  */
    /* JADX WARN: Code duplicated, block: B:45:0x009b  */
    public static final es8 f(et8 et8Var) {
        mt8 mt8Var;
        BitSet allowedGroupCiphers;
        et8Var.getClass();
        String strS0 = nq7.s0(et8Var.getSSID());
        BitSet allowedKeyManagement = et8Var.getAllowedKeyManagement();
        if (allowedKeyManagement == null) {
            mt8Var = mt8.UNKNOWN;
        } else if (allowedKeyManagement.get(8)) {
            mt8Var = mt8.SAE;
        } else if (allowedKeyManagement.get(2) || allowedKeyManagement.get(3) || allowedKeyManagement.get(10)) {
            mt8Var = mt8.ENTERPRISE;
        } else if (allowedKeyManagement.get(1)) {
            mt8Var = mt8.WPA_PSK;
        } else if (allowedKeyManagement.get(9)) {
            mt8Var = mt8.OWE;
        } else if (allowedKeyManagement.get(0) && (allowedGroupCiphers = et8Var.getAllowedGroupCiphers()) != null && (allowedGroupCiphers.get(0) || allowedGroupCiphers.get(1))) {
            mt8Var = mt8.WEP;
        } else if (allowedKeyManagement.get(0)) {
            if (!q(et8Var.getPreSharedKey())) {
                PasswordInfo passwordInfo = et8Var.getPasswordInfo();
                if (!q(passwordInfo != null ? passwordInfo.getPsk() : null)) {
                    if (allowedKeyManagement.get(0)) {
                        mt8Var = mt8.OPEN;
                    } else {
                        mt8Var = mt8.UNKNOWN;
                    }
                }
            }
            mt8Var = mt8.WEP;
        } else if (allowedKeyManagement.get(0)) {
            mt8Var = mt8.OPEN;
        } else {
            mt8Var = mt8.UNKNOWN;
        }
        return new es8(strS0, mt8Var);
    }

    public static List g(dd1 dd1Var) {
        dd1Var.getClass();
        boolean z = !x50.A0(new dd1[]{dd1.FTP, dd1.Filen, dd1.MegaNz, dd1.OneDrive}).contains(dd1Var);
        sd1 sd1Var = sd1.INTERNET_CONNECTIVITY;
        Integer num = null;
        int i = XC20P.IV_BIT_LENGTH;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        boolean z6 = true;
        boolean z7 = true;
        boolean z8 = true;
        return fl1.A0(new qd1(sd1Var, R.string.cloud_diagnostics_internet_title, R.string.cloud_diagnostics_internet_summary, z2, z3, num, i), new qd1(sd1.FIREBASE_BACKEND_ACCESS, R.string.cloud_diagnostics_firebase_title, R.string.cloud_diagnostics_firebase_summary, z2, z3, num, i), new qd1(sd1.ACCESS, R.string.cloud_diagnostics_access_title, R.string.cloud_diagnostics_access_summary, true, z4, null, XC20P.IV_BIT_LENGTH), new qd1(sd1.BACKUP_SCAN, R.string.cloud_diagnostics_scan_title, R.string.cloud_diagnostics_scan_summary, z4, z5, null, 224), new qd1(sd1.SMALL_ROUND_TRIP, R.string.cloud_diagnostics_small_round_trip_title, R.string.cloud_diagnostics_small_round_trip_summary, z5, z6, null, 224), new qd1(sd1.LARGE_ROUND_TRIP, R.string.cloud_diagnostics_large_round_trip_title, R.string.cloud_diagnostics_large_round_trip_summary, z6, false, null, 224), new qd1(sd1.PROVIDER_TRANSFER_PIPELINE, R.string.cloud_diagnostics_provider_transfer_mode_title, R.string.cloud_diagnostics_provider_transfer_mode_summary, true, z7, null, 224), new qd1(sd1.MULTITHREADED_DOWNLOAD, R.string.cloud_diagnostics_multithread_download_title, R.string.cloud_diagnostics_multithread_download_summary, z, false, Integer.valueOf(R.string.cloud_diagnostics_multithread_download_unavailable), 160), new qd1(sd1.THUMBNAIL_DOWNLOAD, R.string.cloud_diagnostics_thumbnail_title, R.string.cloud_diagnostics_thumbnail_summary, z7, z8, null, 224), new qd1(sd1.VERSION_UPLOAD, R.string.cloud_diagnostics_version_upload_title, R.string.cloud_diagnostics_version_upload_summary, z8, true, null, 224));
    }

    public static ArrayList h(dd1 dd1Var, boolean z) {
        qd1 qd1Var;
        dd1Var.getClass();
        List<qd1> listG = g(dd1Var);
        ArrayList arrayList = new ArrayList();
        for (qd1 qd1Var2 : listG) {
            boolean z2 = qd1Var2.d;
            sd1 sd1Var = qd1Var2.a;
            if (z2 && (qd1Var2.e || (z && sd1Var == sd1.LARGE_ROUND_TRIP))) {
                int i = qd1Var2.b;
                int i2 = qd1Var2.c;
                boolean z3 = qd1Var2.f;
                Integer num = qd1Var2.g;
                dd1 dd1Var2 = qd1Var2.h;
                sd1Var.getClass();
                qd1Var = new qd1(sd1Var, i, i2, z2, true, z3, num, dd1Var2);
            } else {
                qd1Var = null;
            }
            if (qd1Var != null) {
                arrayList.add(qd1Var);
            }
        }
        return arrayList;
    }

    public static void i(byte[] bArr, int[] iArr) {
        g67.m(bArr, 8, iArr);
    }

    public static String j(HomeActivity homeActivity, float f2) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMinimumFractionDigits(1);
        numberInstance.setMaximumFractionDigits(1);
        String string = homeActivity.getString(R.string.used_storage_text, eq3.j(numberInstance.format(Float.valueOf(f2)), "%"));
        string.getClass();
        Locale locale = Locale.getDefault();
        locale.getClass();
        String lowerCase = string.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }

    public static byte[] k(int i) {
        return i == 126 ? new byte[]{126} : new byte[]{95, (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static Object l(gc8 gc8Var) {
        Class cls = gc8Var.f;
        Class clsU = u81.u(cls);
        if (clsU == null) {
            if (gc8Var.x0() || gc8Var.C()) {
                return pk4.c;
            }
            if (cls == String.class) {
                return "";
            }
            if (gc8Var.A0(Date.class)) {
                return new Date(0L);
            }
            if (!gc8Var.A0(Calendar.class)) {
                return null;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTimeInMillis(0L);
            return gregorianCalendar;
        }
        if (clsU == Integer.TYPE) {
            return 0;
        }
        if (clsU == Long.TYPE) {
            return 0L;
        }
        if (clsU == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (clsU == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (clsU == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (clsU == Byte.TYPE) {
            return (byte) 0;
        }
        if (clsU == Short.TYPE) {
            return (short) 0;
        }
        if (clsU == Character.TYPE) {
            return (char) 0;
        }
        z5.d(clsU.getName(), " is not a primitive type", "Class ");
        return null;
    }

    public static Drawable m(Context context, int i) {
        return yl6.c().d(context, i);
    }

    public static final int n(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                int i4 = i2 % i3;
                if (i4 < 0) {
                    i4 += i3;
                }
                int i5 = i % i3;
                if (i5 < 0) {
                    i5 += i3;
                }
                int i6 = (i4 - i5) % i3;
                if (i6 < 0) {
                    i6 += i3;
                }
                return i2 - i6;
            }
        } else {
            if (i3 >= 0) {
                c6.f("Step is zero.");
                return 0;
            }
            if (i > i2) {
                int i7 = -i3;
                int i8 = i % i7;
                if (i8 < 0) {
                    i8 += i7;
                }
                int i9 = i2 % i7;
                if (i9 < 0) {
                    i9 += i7;
                }
                int i10 = (i8 - i9) % i7;
                if (i10 < 0) {
                    i10 += i7;
                }
                return i10 + i2;
            }
        }
        return i2;
    }

    public static final boolean o(et8 et8Var) {
        PasswordInfo passwordInfo = et8Var.getPasswordInfo();
        if (passwordInfo == null) {
            return false;
        }
        return (q(passwordInfo.getEntIdentity()) || q(passwordInfo.getEntAnonIdentity())) && q(passwordInfo.getEntPassword());
    }

    public static boolean p() {
        if (Build.VERSION.SDK_INT >= 29) {
            return x88.a();
        }
        try {
            if (h == null) {
                g = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                h = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) h.invoke(null, Long.valueOf(g))).booleanValue();
        } catch (Exception e2) {
            if (!(e2 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e2);
                return false;
            }
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            y5.k(cause);
            return false;
        }
    }

    public static final boolean q(String str) {
        if (str == null) {
            return false;
        }
        String strS0 = nq7.s0(str);
        return (nq7.j0(strS0) || strS0.equals("*")) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void r(Context context, String str) {
        synchronized (a) {
            if (str.equals("")) {
                context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                return;
            }
            try {
                FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file", 0);
                XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
                try {
                    try {
                        xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                        xmlSerializerNewSerializer.startDocument("UTF-8", Boolean.TRUE);
                        xmlSerializerNewSerializer.startTag(null, "locales");
                        xmlSerializerNewSerializer.attribute(null, "application_locales", str);
                        xmlSerializerNewSerializer.endTag(null, "locales");
                        xmlSerializerNewSerializer.endDocument();
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    Log.w("AppLocalesStorageHelper", "Storing App Locales : Failed to persist app-locales in storage ", e2);
                    if (fileOutputStreamOpenFileOutput != null) {
                        fileOutputStreamOpenFileOutput.close();
                    }
                }
            } catch (FileNotFoundException unused3) {
                Log.w("AppLocalesStorageHelper", "Storing App Locales : FileNotFoundException: Cannot open file androidx.appcompat.app.AppCompatDelegate.application_locales_record_file for writing ");
            }
        }
    }

    public static ox1 s(ox1 ox1Var, ox1 ox1Var2) {
        ox1Var2.getClass();
        return ox1Var2 == lv2.a ? ox1Var : (ox1) ox1Var2.fold(ox1Var, new oc1(2));
    }

    public static long t(Context context, Uri uri, String str, long j) {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery = null;
        try {
            cursorQuery = contentResolver.query(uri, new String[]{str}, null, null, null);
            return (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) ? j : cursorQuery.getLong(0);
        } catch (Exception e2) {
            Log.w("DocumentFile", "Failed query: " + e2);
            return j;
        } finally {
            e(cursorQuery);
        }
        e(cursorQuery);
    }

    public static String u(Context context, Uri uri, String str) throws Throwable {
        Cursor cursorQuery;
        Throwable th;
        Exception exc;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        e(cursorQuery);
                        return null;
                    }
                    String string = cursorQuery.getString(0);
                    e(cursorQuery);
                    return string;
                } catch (Exception e2) {
                    exc = e2;
                    Log.w("DocumentFile", "Failed query: " + exc);
                    e(cursorQuery);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            exc = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            cursorQuery = null;
            th = th3;
        }
        th = th2;
        e(cursorQuery);
        throw th;
    }

    public static byte[] v(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr, 0, 4096);
            if (i < 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static int w(InputStream inputStream, byte[] bArr, int i) throws IOException {
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 < 0) {
                break;
            }
            i2 += i3;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0046 A[EXC_TOP_SPLITTER, PHI: r1
      0x0046: PHI (r1v2 java.lang.String) = (r1v0 java.lang.String), (r1v4 java.lang.String) binds: [B:29:0x0053, B:23:0x0044] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public static String x(Context context) {
        String attributeValue;
        synchronized (a) {
            attributeValue = "";
            try {
                FileInputStream fileInputStreamOpenFileInput = context.openFileInput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                try {
                    try {
                        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                        xmlPullParserNewPullParser.setInput(fileInputStreamOpenFileInput, "UTF-8");
                        int depth = xmlPullParserNewPullParser.getDepth();
                        while (true) {
                            int next = xmlPullParserNewPullParser.next();
                            if (next != 1 && (next != 3 || xmlPullParserNewPullParser.getDepth() > depth)) {
                                if (next != 3 && next != 4 && xmlPullParserNewPullParser.getName().equals("locales")) {
                                    attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "application_locales");
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        if (fileInputStreamOpenFileInput != null) {
                            try {
                                fileInputStreamOpenFileInput.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (IOException | XmlPullParserException unused2) {
                        Log.w("AppLocalesStorageHelper", "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                        if (fileInputStreamOpenFileInput != null) {
                            fileInputStreamOpenFileInput.close();
                        }
                    }
                    if (attributeValue.isEmpty()) {
                        context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                    }
                } catch (Throwable th) {
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused4) {
                return "";
            }
        }
        return attributeValue;
    }

    public static byte[] y(byte[] bArr) {
        long jL = ((long) g67.l(bArr, 0)) & 4294967295L;
        long jK = ((long) (g67.k(bArr, 4) << 4)) & 4294967295L;
        long jL2 = ((long) g67.l(bArr, 7)) & 4294967295L;
        long jK2 = ((long) (g67.k(bArr, 11) << 4)) & 4294967295L;
        long jL3 = ((long) g67.l(bArr, 14)) & 4294967295L;
        long jK3 = ((long) (g67.k(bArr, 18) << 4)) & 4294967295L;
        long jL4 = ((long) g67.l(bArr, 21)) & 4294967295L;
        long jK4 = ((long) (g67.k(bArr, 25) << 4)) & 4294967295L;
        long jL5 = ((long) g67.l(bArr, 28)) & 4294967295L;
        long jK5 = ((long) (g67.k(bArr, 32) << 4)) & 4294967295L;
        long jL6 = ((long) g67.l(bArr, 35)) & 4294967295L;
        long jK6 = ((long) (g67.k(bArr, 39) << 4)) & 4294967295L;
        long jL7 = ((long) g67.l(bArr, 42)) & 4294967295L;
        long jK7 = ((long) (g67.k(bArr, 46) << 4)) & 4294967295L;
        long jL8 = g67.l(bArr, 49);
        long j = jL8 & 4294967295L;
        long jK8 = ((long) (g67.k(bArr, 53) << 4)) & 4294967295L;
        long jL9 = g67.l(bArr, 56);
        long jK9 = ((long) (g67.k(bArr, 60) << 4)) & 4294967295L;
        long j2 = ((long) bArr[63]) & 255;
        long j3 = jK9 + ((jL9 & 4294967295L) >> 28);
        long j4 = jL9 & 268435455;
        long j5 = (jL7 - (j2 * (-6428113))) - (j3 * 5343);
        long j6 = (jL5 - (j3 * (-50998291))) - (j4 * 19280294);
        long j7 = ((jK5 - (j2 * (-50998291))) - (j3 * 19280294)) - (j4 * 127719000);
        long j8 = ((jL6 - (j2 * 19280294)) - (j3 * 127719000)) - (j4 * (-6428113));
        long j9 = ((jK6 - (j2 * 127719000)) - (j3 * (-6428113))) - (j4 * 5343);
        long j10 = jK8 + (j >> 28);
        long j11 = jL8 & 268435455;
        long j12 = j8 - (j10 * 5343);
        long j13 = (j7 - (j10 * (-6428113))) - (j11 * 5343);
        long j14 = (jK7 - (j2 * 5343)) + (j5 >> 28);
        long j15 = ((jL4 - (j10 * (-50998291))) - (j11 * 19280294)) - (j14 * 127719000);
        long j16 = (((jK4 - (j4 * (-50998291))) - (j10 * 19280294)) - (j11 * 127719000)) - (j14 * (-6428113));
        long j17 = ((j6 - (j10 * 127719000)) - (j11 * (-6428113))) - (j14 * 5343);
        long j18 = (j5 & 268435455) + (j9 >> 28);
        long j19 = (jL3 - (j14 * (-50998291))) - (j18 * 19280294);
        long j20 = ((jK3 - (j11 * (-50998291))) - (j14 * 19280294)) - (j18 * 127719000);
        long j21 = j16 - (j18 * 5343);
        long j22 = (j9 & 268435455) + (j12 >> 28);
        long j23 = (jK2 - (j18 * (-50998291))) - (j22 * 19280294);
        long j24 = (j15 - (j18 * (-6428113))) - (j22 * 5343);
        long j25 = (j12 & 268435455) + (j13 >> 28);
        long j26 = jK - (j25 * (-50998291));
        long j27 = (jL2 - (j22 * (-50998291))) - (j25 * 19280294);
        long j28 = j23 - (j25 * 127719000);
        long j29 = (j19 - (j22 * 127719000)) - (j25 * (-6428113));
        long j30 = (j20 - (j22 * (-6428113))) - (j25 * 5343);
        long j31 = j17 + (j21 >> 28);
        long j32 = j21 & 268435455;
        long j33 = (j13 & 268435455) + (j31 >> 28);
        long j34 = j31 & 268435455;
        long j35 = j34 >>> 27;
        long j36 = j33 + j35;
        long j37 = jL - (j36 * (-50998291));
        long j38 = j27 - (j36 * 127719000);
        long j39 = j28 - (j36 * (-6428113));
        long j40 = j29 - (j36 * 5343);
        long j41 = (j26 - (j36 * 19280294)) + (j37 >> 28);
        long j42 = j37 & 268435455;
        long j43 = j38 + (j41 >> 28);
        long j44 = j39 + (j43 >> 28);
        long j45 = j40 + (j44 >> 28);
        long j46 = j30 + (j45 >> 28);
        long j47 = j24 + (j46 >> 28);
        long j48 = j32 + (j47 >> 28);
        long j49 = j34 + (j48 >> 28);
        long j50 = (j49 >> 28) - j35;
        long j51 = j42 + (j50 & (-50998291));
        long j52 = (j41 & 268435455) + (j50 & 19280294) + (j51 >> 28);
        long j53 = (j43 & 268435455) + (j50 & 127719000) + (j52 >> 28);
        long j54 = (j44 & 268435455) + (j50 & (-6428113)) + (j53 >> 28);
        long j55 = (j45 & 268435455) + (j50 & 5343) + (j54 >> 28);
        long j56 = (j46 & 268435455) + (j55 >> 28);
        long j57 = (j47 & 268435455) + (j56 >> 28);
        long j58 = (j48 & 268435455) + (j57 >> 28);
        long j59 = (j49 & 268435455) + (j58 >> 28);
        long j60 = j58 & 268435455;
        byte[] bArr2 = new byte[32];
        g67.p(0, (j51 & 268435455) | ((j52 & 268435455) << 28), bArr2);
        g67.p(7, (j53 & 268435455) | ((j54 & 268435455) << 28), bArr2);
        g67.p(14, ((j56 & 268435455) << 28) | (j55 & 268435455), bArr2);
        g67.p(21, (j60 << 28) | (j57 & 268435455), bArr2);
        g67.n(bArr2, (int) j59, 28);
        return bArr2;
    }

    public static ub z(String str, o93 o93Var) {
        o93Var.getClass();
        int i = n93.a[o93Var.ordinal()];
        if (i == 1) {
            gn6 gn6VarB = ShellHelper.INSTANCE.su(str).b();
            List listA = gn6VarB.a();
            listA.getClass();
            return new ub(listA, gn6VarB.c);
        }
        if (i == 2) {
            ne7 ne7VarC = qe7.c(new String[]{str});
            return new ub(ne7VarC.a, ne7VarC.b);
        }
        if (i != 3) {
            q.j();
            return null;
        }
        Process processStart = new ProcessBuilder(new File("/system/bin/sh").exists() ? "/system/bin/sh" : "/bin/sh", "-c", str).redirectErrorStream(true).start();
        InputStream inputStream = processStart.getInputStream();
        inputStream.getClass();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, f51.a), 8192);
        try {
            ArrayList arrayListQ = rs9.q(bufferedReader);
            bufferedReader.close();
            return new ub(arrayListQ, processStart.waitFor());
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(bufferedReader, th);
                throw th2;
            }
        }
    }

    public abstract void B(Object obj, Object obj2);
}
