package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.PackageInstaller;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.a;
import com.jcraft.jsch.SftpATTRS;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javax.crypto.Mac;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.PackageInstallResultReceiver;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g67 implements yu9 {
    public static boolean a;
    public static final int[] b = new int[0];
    public static final long[] c = new long[0];
    public static final Object[] d = new Object[0];
    public static final char[] e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final nh4 f = new nh4(12);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object A(MDatabase_Impl mDatabase_Impl, boolean z, t34 t34Var, kv1 kv1Var) throws Throwable {
        y72 y72Var;
        if (kv1Var instanceof y72) {
            y72Var = (y72) kv1Var;
            int i = y72Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                y72Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                y72Var = new y72(kv1Var);
            }
        } else {
            y72Var = new y72(kv1Var);
        }
        Object objPlus = y72Var.d;
        int i2 = y72Var.e;
        yx1 yx1Var = yx1.a;
        if (i2 == 0) {
            lg7.H(objPlus);
            if (mDatabase_Impl.h() && mDatabase_Impl.j() && mDatabase_Impl.i()) {
                a82 a82Var = new a82(null, t34Var, mDatabase_Impl, z);
                y72Var.e = 1;
                Object objK = mDatabase_Impl.k(z, a82Var, y72Var);
                if (objK != yx1Var) {
                    return objK;
                }
            } else {
                y72Var.a = mDatabase_Impl;
                y72Var.b = t34Var;
                y72Var.c = z;
                y72Var.e = 2;
                c98 c98Var = (c98) y72Var.getContext().get(c98.b);
                ox1 ox1Var = c98Var != null ? c98Var.a : null;
                if (mDatabase_Impl.h()) {
                    objPlus = ox1Var != null ? mDatabase_Impl.e().plus(ox1Var) : mDatabase_Impl.e();
                } else {
                    ox1 ox1VarE = mDatabase_Impl.e();
                    if (ox1Var == null) {
                        ox1Var = lv2.a;
                    }
                    objPlus = ox1VarE.plus(ox1Var);
                }
                if (objPlus != yx1Var) {
                }
            }
        }
        if (i2 == 1) {
            lg7.H(objPlus);
            return objPlus;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                lg7.H(objPlus);
                return objPlus;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        z = y72Var.c;
        t34Var = y72Var.b;
        mDatabase_Impl = y72Var.a;
        lg7.H(objPlus);
        x72 x72Var = new x72((jv1) null, t34Var, mDatabase_Impl, z);
        y72Var.a = null;
        y72Var.b = null;
        y72Var.e = 3;
        Object objG = l73.G((ox1) objPlus, x72Var, y72Var);
        return objG == yx1Var ? yx1Var : objG;
    }

    public static final void B(Object[] objArr, int i, int i2) {
        objArr.getClass();
        while (i < i2) {
            objArr[i] = null;
            i++;
        }
    }

    public static c12 C(Intent intent) {
        if (Build.VERSION.SDK_INT >= 34) {
            return j6.a(intent);
        }
        int i = c12.a;
        Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION");
        if (bundleExtra == null) {
            return null;
        }
        String string = bundleExtra.getString("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_TYPE");
        if (string != null) {
            return cy0.I(bundleExtra.getCharSequence("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_MESSAGE"), string);
        }
        c6.f("Bundle was missing exception type.");
        return null;
    }

    public static k12 D(Intent intent, String str) {
        String string;
        Bundle bundle;
        if (Build.VERSION.SDK_INT >= 34) {
            return j6.b(intent, str);
        }
        Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE");
        if (bundleExtra == null || (string = bundleExtra.getString("androidx.credentials.provider.extra.CREATE_CREDENTIAL_RESPONSE_TYPE")) == null || (bundle = bundleExtra.getBundle("androidx.credentials.provider.extra.CREATE_CREDENTIAL_REQUEST_DATA")) == null) {
            return null;
        }
        return xx3.c(bundle, string);
    }

    public static void E(int i, long j, byte[] bArr) {
        bArr[i] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
        bArr[i + 4] = (byte) ((j >> 32) & 255);
        bArr[i + 5] = (byte) ((j >> 40) & 255);
        bArr[i + 6] = (byte) ((j >> 48) & 255);
        bArr[i + 7] = (byte) ((j >> 56) & 255);
    }

    public static void F(td4 td4Var, q63 q63Var, wg wgVar) throws IOException {
        PackageInstaller.Session session = td4Var.a;
        boolean z = q63.d;
        InputStream inputStreamW = q63Var.w(true);
        try {
            OutputStream outputStreamOpenWrite = session.openWrite(q63Var.p(), 0L, q63Var.A());
            outputStreamOpenWrite.getClass();
            try {
                byte[] bArr = new byte[262144];
                while (true) {
                    int i = inputStreamW.read(bArr);
                    if (i < 0) {
                        session.fsync(outputStreamOpenWrite);
                        outputStreamOpenWrite.close();
                        inputStreamW.close();
                        return;
                    } else {
                        outputStreamOpenWrite.write(bArr, 0, i);
                        wgVar.a(ug.Writing, i);
                    }
                    try {
                        throw th;
                    } catch (Throwable th) {
                        rs9.c(inputStreamW, th);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    rs9.c(outputStreamOpenWrite, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public static yu9 G(xu9 xu9Var) {
        km8 km8Var = xu9Var.e;
        zu9 zu9Var = new zu9(((d2a) km8Var.a).b());
        try {
            Provider providerH = l73.H();
            if (providerH == null) {
                throw new GeneralSecurityException("Conscrypt not available");
            }
            Mac.getInstance("AESCMAC", providerH);
            return new ot9(zu9Var, new cd(((d2a) km8Var.a).b(), providerH), false);
        } catch (GeneralSecurityException unused) {
            return zu9Var;
        }
    }

    public static /* synthetic */ boolean H(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, uc9 uc9Var, Object obj, Object obj2) {
        while (!atomicReferenceFieldUpdater.compareAndSet(uc9Var, obj, obj2)) {
            if (atomicReferenceFieldUpdater.get(uc9Var) != obj && atomicReferenceFieldUpdater.get(uc9Var) != obj) {
                return false;
            }
        }
        return true;
    }

    public static final ArrayList b(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            h09 h09Var = (h09) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", h09Var.a);
            bundle.putLong("event_timestamp", h09Var.b);
            arrayList2.add(bundle);
        }
        return arrayList2;
    }

    public static final ColorStateList c(Context context, int i) {
        ColorStateList colorStateListQ;
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.resourceId;
        Integer numValueOf = i2 != 0 ? Integer.valueOf(i2) : null;
        if (numValueOf != null && (colorStateListQ = zh8.q(context, numValueOf.intValue())) != null) {
            return colorStateListQ;
        }
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(typedValue.data);
        colorStateListValueOf.getClass();
        return colorStateListValueOf;
    }

    public static final String d(Object[] objArr, int i, int i2, w4 w4Var) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i + i3];
            if (obj == w4Var) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static final int e(int i, int i2, int[] iArr) {
        iArr.getClass();
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else {
                if (i6 <= i2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }

    public static final int f(int i, long j, long[] jArr) {
        jArr.getClass();
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            long j2 = jArr[i4];
            if (j2 < j) {
                i3 = i4 + 1;
            } else {
                if (j2 <= j) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return ~i3;
    }

    public static int h(bh6 bh6Var, gu2 gu2Var, View view, View view2, a aVar, boolean z) {
        if (aVar.G() == 0 || bh6Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(a.R(view) - a.R(view2)) + 1;
        }
        return Math.min(gu2Var.n(), gu2Var.d(view2) - gu2Var.g(view));
    }

    public static int i(bh6 bh6Var, gu2 gu2Var, View view, View view2, a aVar, boolean z, boolean z2) {
        if (aVar.G() == 0 || bh6Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z2 ? Math.max(0, (bh6Var.b() - Math.max(a.R(view), a.R(view2))) - 1) : Math.max(0, Math.min(a.R(view), a.R(view2)));
        if (z) {
            return Math.round((iMax * (Math.abs(gu2Var.d(view2) - gu2Var.g(view)) / (Math.abs(a.R(view) - a.R(view2)) + 1))) + (gu2Var.m() - gu2Var.g(view)));
        }
        return iMax;
    }

    public static int j(bh6 bh6Var, gu2 gu2Var, View view, View view2, a aVar, boolean z) {
        if (aVar.G() == 0 || bh6Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return bh6Var.b();
        }
        return (int) (((gu2Var.d(view2) - gu2Var.g(view)) / (Math.abs(a.R(view) - a.R(view2)) + 1)) * bh6Var.b());
    }

    public static int k(byte[] bArr, int i) {
        return ((bArr[i + 2] & 255) << 16) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
    }

    public static int l(byte[] bArr, int i) {
        return (bArr[i + 3] << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static void m(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = l(bArr, i2 * 4);
        }
    }

    public static void n(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    public static void o(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            n(bArr, iArr[i2], i2 * 4);
        }
    }

    public static void p(int i, long j, byte[] bArr) {
        n(bArr, (int) j, i);
        int i2 = (int) (j >>> 32);
        bArr[i + 4] = (byte) i2;
        bArr[i + 5] = (byte) (i2 >>> 8);
        bArr[i + 6] = (byte) (i2 >>> 16);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0022  */
    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0030  */
    /* JADX WARN: Code duplicated, block: B:21:0x003a  */
    /* JADX WARN: Code duplicated, block: B:24:0x0047  */
    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:30:0x0065  */
    /* JADX WARN: Code duplicated, block: B:45:0x0090 A[EDGE_INSN: B:45:0x0090->B:41:0x0090 BREAK  A[LOOP:0: B:11:0x0014->B:49:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0071 A[SYNTHETIC] */
    public static final List q(tr9 tr9Var, int i, int i2) {
        LinkedHashMap linkedHashMap;
        TreeMap treeMap;
        pw5 pw5Var;
        Iterator it;
        boolean z;
        int iIntValue;
        TreeMap treeMap2;
        tr9Var.getClass();
        if (i == i2) {
            return ov2.a;
        }
        boolean z2 = i2 > i;
        ArrayList arrayList = new ArrayList();
        do {
            if (!z2) {
                if (i <= i2) {
                    return arrayList;
                }
                linkedHashMap = (LinkedHashMap) tr9Var.b;
                if (z2) {
                    treeMap2 = (TreeMap) linkedHashMap.get(Integer.valueOf(i));
                    if (treeMap2 == null) {
                        pw5Var = null;
                    } else {
                        pw5Var = new pw5(treeMap2, treeMap2.descendingKeySet());
                    }
                } else {
                    treeMap = (TreeMap) linkedHashMap.get(Integer.valueOf(i));
                    if (treeMap == null) {
                        pw5Var = null;
                    } else {
                        pw5Var = new pw5(treeMap, treeMap.keySet());
                    }
                }
                if (pw5Var == null) {
                    Map map = (Map) pw5Var.a;
                    it = ((Iterable) pw5Var.b).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            z = false;
                            break;
                            break;
                        }
                        iIntValue = ((Number) it.next()).intValue();
                        if (!z2) {
                            if (i + 1 <= iIntValue) {
                                continue;
                            }
                        } else if (i2 <= iIntValue) {
                            continue;
                        }
                    }
                } else {
                    break;
                    break;
                }
            } else {
                if (i >= i2) {
                    return arrayList;
                }
                linkedHashMap = (LinkedHashMap) tr9Var.b;
                if (z2) {
                    treeMap2 = (TreeMap) linkedHashMap.get(Integer.valueOf(i));
                    if (treeMap2 == null) {
                        pw5Var = null;
                    } else {
                        pw5Var = new pw5(treeMap2, treeMap2.descendingKeySet());
                    }
                } else {
                    treeMap = (TreeMap) linkedHashMap.get(Integer.valueOf(i));
                    if (treeMap == null) {
                        pw5Var = null;
                    } else {
                        pw5Var = new pw5(treeMap, treeMap.keySet());
                    }
                }
                if (pw5Var == null) {
                    Map map2 = (Map) pw5Var.a;
                    it = ((Iterable) pw5Var.b).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            z = false;
                            break;
                        }
                        iIntValue = ((Number) it.next()).intValue();
                        if (!z2) {
                            if (i2 <= iIntValue && iIntValue < i) {
                                Object obj = map2.get(Integer.valueOf(iIntValue));
                                obj.getClass();
                                arrayList.add(obj);
                                z = true;
                                i = iIntValue;
                                break;
                                break;
                            }
                        } else if (i + 1 <= iIntValue && iIntValue <= i2) {
                            Object obj2 = map2.get(Integer.valueOf(iIntValue));
                            obj2.getClass();
                            arrayList.add(obj2);
                            z = true;
                            i = iIntValue;
                            break;
                        }
                    }
                } else {
                    break;
                }
            }
        } while (z);
        return null;
    }

    public static String r(Context context, qy qyVar) {
        List listA = qyVar.a();
        if (listA.isEmpty()) {
            listA = null;
        }
        List list = listA;
        if (list != null) {
            return el1.Y0(list, ", ", null, null, new px(context, 1), 30);
        }
        String string = context.getString(R.string.none);
        string.getClass();
        return string;
    }

    public static xp1 s() {
        xp1 xp1Var = null;
        int i = -1;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("compression_level_folders", -1);
            xp1.Companion.getClass();
            xp1[] xp1VarArrA = wp1.a();
            for (int i2 = 0; i2 < 2; i2++) {
                xp1 xp1Var2 = xp1VarArrA[i2];
                if (xp1Var2.getLevel() == i) {
                    xp1Var = xp1Var2;
                    break;
                }
            }
            if (xp1Var != null) {
                return xp1Var;
            }
            xp1.Companion.getClass();
            return xp1.DEFAULT;
        } catch (ClassCastException unused) {
        }
    }

    public static final o21 t(jv1 jv1Var) {
        if (!(jv1Var instanceof ym2)) {
            return new o21(1, jv1Var);
        }
        o21 o21VarL = ((ym2) jv1Var).l();
        if (o21VarL != null) {
            if (!o21VarL.C()) {
                o21VarL = null;
            }
            if (o21VarL != null) {
                return o21VarL;
            }
        }
        return new o21(2, jv1Var);
    }

    public static void u(ud4 ud4Var) throws Throwable {
        Throwable th;
        Throwable th2;
        g00 g00Var = g00.a;
        PackageInstaller packageInstaller = g00.r().getPackageInstaller();
        packageInstaller.getClass();
        Context context = ud4Var.a;
        List list = ud4Var.b;
        if (list.size() <= 0) {
            c6.f("No APK files provided");
            return;
        }
        Iterator it = list.iterator();
        long jA = 0;
        while (it.hasNext()) {
            jA += ((q63) it.next()).A();
        }
        wg wgVar = new wg(jA, 0L, ud4Var.c);
        boolean z = true;
        Integer numValueOf = null;
        try {
            try {
                int iCreateSession = packageInstaller.createSession(new PackageInstaller.SessionParams(1));
                numValueOf = Integer.valueOf(iCreateSession);
                PackageInstaller.Session sessionOpenSession = packageInstaller.openSession(iCreateSession);
                sessionOpenSession.getClass();
                td4 td4Var = new td4(sessionOpenSession);
                try {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        F(td4Var, (q63) it2.next(), wgVar);
                    }
                    int i = b67.d() ? 33554432 : 0;
                    Intent action = new Intent(context, (Class<?>) PackageInstallResultReceiver.class).setAction(context.getPackageName() + ".PACKAGE_INSTALL_RESULT." + numValueOf);
                    action.getClass();
                    try {
                        IntentSender intentSender = PendingIntent.getBroadcast(context, iCreateSession, action, i | 134217728).getIntentSender();
                        intentSender.getClass();
                        td4Var.a.commit(intentSender);
                        mt3 mt3Var = wgVar.b;
                        ug ugVar = ug.Committing;
                        long j = wgVar.c;
                        mt3Var.invoke(new vg(ugVar, j, j));
                        td4Var.close();
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            throw th2;
                        } catch (Throwable th4) {
                            rs9.c(td4Var, th2);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    th2 = th5;
                    z = false;
                }
            } catch (Throwable th6) {
                th = th6;
                z = false;
                if (!!z || numValueOf == null) {
                    throw th;
                }
                packageInstaller.abandonSession(numValueOf.intValue());
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            if (!z) {
                throw th;
            }
            throw th;
        }
    }

    public static boolean v(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static String w(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr = new char[bArrDigest.length * 2];
            for (int i = 0; i < bArrDigest.length; i++) {
                byte b2 = bArrDigest[i];
                int i2 = i * 2;
                char[] cArr2 = e;
                cArr[i2] = cArr2[(b2 & 255) >>> 4];
                cArr[i2 + 1] = cArr2[b2 & 15];
            }
            return new String(cArr);
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static final Object z(eo6 eo6Var, boolean z, boolean z2, mt3 mt3Var) {
        eo6Var.getClass();
        ThreadLocal threadLocal = eo6Var.h;
        if (!eo6Var.g && Looper.getMainLooper().getThread() == Thread.currentThread()) {
            l0.e("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
            return null;
        }
        if (eo6Var.h() && !eo6Var.i()) {
            ox1 ox1Var = (ox1) threadLocal.get();
            if ((ox1Var != null ? (c98) ox1Var.get(c98.b) : null) != null) {
                l0.e("Cannot access database on a different coroutine context inherited from a suspending transaction.");
                return null;
            }
        }
        ox1 ox1Var2 = (ox1) threadLocal.get();
        if (ox1Var2 == null) {
            ox1Var2 = lv2.a;
        }
        return zh8.I(new w72(ox1Var2, eo6Var, z2, z, mt3Var, null));
    }

    public void g(final int i) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: em6
            @Override // java.lang.Runnable
            public final void run() {
                this.a.x(i);
            }
        });
    }

    public abstract void x(int i);

    public abstract void y(Typeface typeface);
}
