package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import com.google.android.gms.common.api.Status;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rs9 {
    public static final byte[] a = new byte[16];
    public static final byte[] b = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};
    public static final byte[] c = new byte[0];
    public static final byte[] d = {48, 49, 53, 0};
    public static final byte[] e = {48, 49, 48, 0};
    public static final byte[] f = {48, 48, 57, 0};
    public static final byte[] g = {48, 48, 53, 0};
    public static final byte[] h = {48, 48, 49, 0};
    public static final byte[] i = {48, 48, 49, 0};
    public static final byte[] j = {48, 48, 50, 0};
    public static final Object k = new Object();
    public static volatile ym5 l = null;
    public static boolean m = false;
    public static boolean n = true;
    public static NetworkInfo o = null;
    public static Boolean p = null;
    public static Boolean q = null;
    public static Boolean r = null;
    public static Boolean s = null;
    public static boolean t = true;
    public static Field u;
    public static boolean v;

    public static int A(Object obj, e89 e89Var, byte[] bArr, int i2, int i3, s69 s69Var) throws p79 {
        int iY = i2 + 1;
        int i4 = bArr[i2];
        if (i4 < 0) {
            iY = y(i4, bArr, iY, s69Var);
            i4 = s69Var.a;
        }
        int i5 = iY;
        if (i4 < 0 || i4 > i3 - i5) {
            throw p79.g();
        }
        int i6 = s69Var.d + 1;
        s69Var.d = i6;
        if (i6 >= 100) {
            throw new p79("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i7 = i5 + i4;
        e89Var.f(obj, bArr, i5, i7, s69Var);
        s69Var.d--;
        s69Var.c = obj;
        return i7;
    }

    public static int B(byte[] bArr, int i2, s69 s69Var) throws p79 {
        int iF = F(bArr, i2, s69Var);
        int i3 = s69Var.a;
        if (i3 < 0) {
            throw p79.e();
        }
        if (i3 > bArr.length - iF) {
            throw p79.g();
        }
        if (i3 == 0) {
            s69Var.c = t69.b;
            return iF;
        }
        s69Var.c = t69.g(bArr, iF, i3);
        return iF + i3;
    }

    public static byte[] C(byte[]... bArr) {
        int i2 = 0;
        int length = 0;
        while (true) {
            if (i2 >= bArr.length) {
                break;
            }
            length += bArr[i2].length;
            i2++;
        }
        byte[] bArr2 = new byte[length];
        int i3 = 0;
        for (byte[] bArr3 : bArr) {
            int length2 = bArr3.length;
            System.arraycopy(bArr3, 0, bArr2, i3, length2);
            i3 += length2;
        }
        return bArr2;
    }

    public static int D(e89 e89Var, int i2, byte[] bArr, int i3, int i4, o79 o79Var, s69 s69Var) throws p79 {
        k79 k79VarZza = e89Var.zza();
        e89 e89Var2 = e89Var;
        byte[] bArr2 = bArr;
        int i5 = i4;
        s69 s69Var2 = s69Var;
        int iA = A(k79VarZza, e89Var2, bArr2, i3, i5, s69Var2);
        e89Var2.e(k79VarZza);
        s69Var2.c = k79VarZza;
        b89 b89Var = (b89) o79Var;
        b89Var.add(k79VarZza);
        while (iA < i5) {
            s69 s69Var3 = s69Var2;
            int i6 = i5;
            int iF = F(bArr2, iA, s69Var3);
            if (i2 != s69Var3.a) {
                break;
            }
            byte[] bArr3 = bArr2;
            e89 e89Var3 = e89Var2;
            k79 k79VarZza2 = e89Var3.zza();
            iA = A(k79VarZza2, e89Var3, bArr3, iF, i6, s69Var3);
            e89Var2 = e89Var3;
            bArr2 = bArr3;
            i5 = i6;
            s69Var2 = s69Var3;
            e89Var2.e(k79VarZza2);
            s69Var2.c = k79VarZza2;
            b89Var.add(k79VarZza2);
        }
        return iA;
    }

    public static int E(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static int F(byte[] bArr, int i2, s69 s69Var) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return y(b2, bArr, i3, s69Var);
        }
        s69Var.a = b2;
        return i3;
    }

    public static int G(byte[] bArr, int i2, s69 s69Var) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            s69Var.b = j2;
            return i3;
        }
        int i4 = i2 + 2;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | (((long) (b2 & 127)) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            byte b3 = bArr[i4];
            i5 += 7;
            j3 |= ((long) (b3 & 127)) << i5;
            b2 = b3;
            i4 = i6;
        }
        s69Var.b = j3;
        return i4;
    }

    public static long H(byte[] bArr, int i2) {
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    public static final byte[] a(byte[] bArr) {
        if (bArr.length != 16) {
            c6.f("Value must be an AES block");
            return null;
        }
        byte[] bArr2 = new byte[16];
        Iterator it = new nd4(0, bArr.length - 1, 1).iterator();
        while (true) {
            md4 md4Var = (md4) it;
            if (!md4Var.c) {
                bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
                return bArr2;
            }
            int iNextInt = md4Var.nextInt();
            byte b2 = (byte) ((bArr[iNextInt] << 1) & 254);
            bArr2[iNextInt] = b2;
            if (iNextInt < 15) {
                bArr2[iNextInt] = (byte) (b2 | ((bArr[iNextInt + 1] >> 7) & 1));
            }
        }
    }

    public static final byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            c6.f("XOR arrays must have equal size");
            return null;
        }
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
        return bArr3;
    }

    public static final void c(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                yc9.a(th, th2);
            }
        }
    }

    public static gx6 d(byte[] bArr, Parcelable.Creator creator) {
        ly8.h(creator);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        gx6 gx6Var = (gx6) creator.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return gx6Var;
    }

    public static final rx1 e(Executor executor) {
        return new mz2(executor);
    }

    public static re f(Status status) {
        return status.c != null ? new hl6(status) : new re(status);
    }

    public static int g(byte[] bArr, int i2, int i3, int i4, int i5) {
        int i6 = i5 + i2;
        int i7 = i4 + i2;
        while (i7 < i6 && bArr[i7] == bArr[i7 - i3]) {
            i7++;
        }
        return i7 - i2;
    }

    public static Intent h(zm zmVar) {
        Intent parentActivityIntent = zmVar.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String strJ = j(zmVar, zmVar.getComponentName());
            if (strJ == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(zmVar, strJ);
            try {
                return j(zmVar, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strJ + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static Intent i(zm zmVar, ComponentName componentName) {
        String strJ = j(zmVar, componentName);
        if (strJ == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), strJ);
        return j(zmVar, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String j(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String string;
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(componentName, Build.VERSION.SDK_INT >= 29 ? 269222528 : 787072);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static String k(int i2, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sb = new StringBuilder("$");
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = iArr[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(iArr2[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String str = strArr[i3];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public static final boolean n(vz3 vz3Var) {
        vz3Var.getClass();
        String str = vz3Var.c;
        int i2 = vz3Var.b;
        if (i2 != 429 && (500 > i2 || i2 >= 600)) {
            if (i2 != 403) {
                return false;
            }
            if (!nq7.Z(str, "rateLimitExceeded", true) && !nq7.Z(str, "userRateLimitExceeded", true)) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (p == null) {
            p = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        p.booleanValue();
        if (q == null) {
            q = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return q.booleanValue() && Build.VERSION.SDK_INT >= 30;
    }

    public static final f77 p(BufferedReader bufferedReader) {
        return new ws1(new ev4(bufferedReader));
    }

    public static final ArrayList q(BufferedReader bufferedReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : (ws1) p(bufferedReader)) {
                str.getClass();
                arrayList.add(str);
            }
            bufferedReader.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c(bufferedReader, th);
                throw th2;
            }
        }
    }

    public static final String r(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[8192];
        int i2 = reader.read(cArr);
        while (i2 >= 0) {
            stringWriter.write(cArr, 0, i2);
            i2 = reader.read(cArr);
        }
        String string = stringWriter.toString();
        string.getClass();
        return string;
    }

    public static void s(boolean z) {
        SwiftApp.Companion companion = SwiftApp.d;
        ShortcutManager shortcutManager = (ShortcutManager) SwiftApp.Companion.c().getSystemService(ShortcutManager.class);
        if (shortcutManager == null) {
            return;
        }
        List<ShortcutInfo> dynamicShortcuts = shortcutManager.getDynamicShortcuts();
        dynamicShortcuts.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator<ShortcutInfo> it = dynamicShortcuts.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getId());
        }
        shortcutManager.disableShortcuts(arrayList);
        shortcutManager.removeAllDynamicShortcuts();
        if (V.INSTANCE.getA() && z) {
            ArrayList arrayList2 = new ArrayList();
            if (o37.b()) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                String string = SwiftApp.Companion.c().getString(R.string.run_schedule_now);
                string.getClass();
                arrayList2.add(ze7.a(R.drawable.ic_shortcut_schedule_icon, "scheduled_backup", string));
            }
            SwiftApp.Companion companion3 = SwiftApp.d;
            String string2 = SwiftApp.Companion.c().getString(R.string.quick_actions_apps);
            string2.getClass();
            arrayList2.add(ze7.a(R.drawable.ic_shortcut_apps_quick_actions_icon, "quick_actions", string2));
            String string3 = SwiftApp.Companion.c().getString(R.string.configs);
            string3.getClass();
            arrayList2.add(ze7.a(R.drawable.ic_shortcut_configs_icon, "configs", string3));
            if (arrayList2.isEmpty()) {
                return;
            }
            try {
                shortcutManager.setDynamicShortcuts(arrayList2);
            } catch (Exception e2) {
                vr6.e$default(vr6.INSTANCE, "ShortcutsHelper", "shortcutManager.dynamicShortcuts", e2, null, 8, null);
            }
        }
    }

    public static void u(k28 k28Var) {
        k28Var.getClass();
        zn4 zn4Var = zn4.a;
        zn4.e(new b56(k28Var, 0));
    }

    public static final String w(vz3 vz3Var) {
        String str = vz3Var.a;
        int i2 = vz3Var.b;
        Long l2 = vz3Var.d;
        String str2 = vz3Var.c;
        StringBuilder sbV = dj7.v("Google Drive API error: method=", str, ", status=", i2, ", retryAfterMillis=");
        sbV.append(l2);
        sbV.append(", body=");
        sbV.append(str2);
        return sbV.toString();
    }

    public static int x(int i2, byte[] bArr, int i3, int i4, l89 l89Var, s69 s69Var) throws p79 {
        if ((i2 >>> 3) == 0) {
            throw p79.b();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int iG = G(bArr, i3, s69Var);
            l89Var.c(i2, Long.valueOf(s69Var.b));
            return iG;
        }
        if (i5 == 1) {
            l89Var.c(i2, Long.valueOf(H(bArr, i3)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int iF = F(bArr, i3, s69Var);
            int i6 = s69Var.a;
            if (i6 < 0) {
                throw p79.e();
            }
            if (i6 > bArr.length - iF) {
                throw p79.g();
            }
            if (i6 == 0) {
                l89Var.c(i2, t69.b);
            } else {
                l89Var.c(i2, t69.g(bArr, iF, i6));
            }
            return iF + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw p79.b();
            }
            l89Var.c(i2, Integer.valueOf(E(bArr, i3)));
            return i3 + 4;
        }
        l89 l89VarE = l89.e();
        int i7 = (i2 & (-8)) | 4;
        int i8 = s69Var.d + 1;
        s69Var.d = i8;
        if (i8 >= 100) {
            throw new p79("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i9 = 0;
        while (i3 < i4) {
            int iF2 = F(bArr, i3, s69Var);
            i9 = s69Var.a;
            if (i9 == i7) {
                i3 = iF2;
                break;
            }
            i3 = x(i9, bArr, iF2, i4, l89VarE, s69Var);
        }
        s69Var.d--;
        if (i3 > i4 || i9 != i7) {
            throw p79.f();
        }
        l89Var.c(i2, l89VarE);
        return i3;
    }

    public static int y(int i2, byte[] bArr, int i3, s69 s69Var) {
        int i4 = i2 & 127;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            s69Var.a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & 127) << 7);
        int i7 = i3 + 2;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            s69Var.a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & 127) << 14);
        int i9 = i3 + 3;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            s69Var.a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & 127) << 21);
        int i11 = i3 + 4;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            s69Var.a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & 127) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                s69Var.a = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    public static int z(Object obj, e89 e89Var, byte[] bArr, int i2, int i3, int i4, s69 s69Var) throws p79 {
        x79 x79Var = (x79) e89Var;
        int i5 = s69Var.d + 1;
        s69Var.d = i5;
        if (i5 >= 100) {
            throw new p79("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iK = x79Var.k(obj, bArr, i2, i3, i4, s69Var);
        s69Var.d--;
        s69Var.c = obj;
        return iK;
    }

    public abstract String l();

    public float m(View view) {
        if (t) {
            try {
                return ym8.a(view);
            } catch (NoSuchMethodError unused) {
                t = false;
            }
        }
        return view.getAlpha();
    }

    public void t(View view, float f2) {
        if (t) {
            try {
                ym8.b(view, f2);
                return;
            } catch (NoSuchMethodError unused) {
                t = false;
            }
        }
        view.setAlpha(f2);
    }

    public abstract Intent v();
}
