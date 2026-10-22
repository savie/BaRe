package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.SQLException;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ly8 {
    public static final du9 a;
    public static final du9 b;
    public static final du9 c;
    public static final y53 d;
    public static final y53[] e;

    static {
        int i = 2;
        a = new du9("UNDEFINED", i);
        b = new du9("REUSABLE_CLAIMED", i);
        c = new du9("NULL", i);
        y53 y53Var = new y53("CLIENT_TELEMETRY", 1L);
        d = y53Var;
        e = new y53[]{y53Var};
    }

    public static int A(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static long B(long j, long j2) {
        long j3 = j & 1229782938247303441L;
        long j4 = j & 2459565876494606882L;
        long j5 = j & 4919131752989213764L;
        long j6 = j & (-8608480567731124088L);
        long j7 = j2 & 1229782938247303441L;
        long j8 = j2 & 2459565876494606882L;
        long j9 = j2 & 4919131752989213764L;
        long j10 = j2 & (-8608480567731124088L);
        long j11 = (((j3 * j7) ^ (j4 * j10)) ^ (j5 * j9)) ^ (j6 * j8);
        long j12 = (((j3 * j8) ^ (j4 * j7)) ^ (j5 * j10)) ^ (j6 * j9);
        long j13 = (((j3 * j9) ^ (j4 * j8)) ^ (j5 * j7)) ^ (j6 * j10);
        return (j11 & 1229782938247303441L) | (j12 & 2459565876494606882L) | (j13 & 4919131752989213764L) | (((((j3 * j10) ^ (j4 * j9)) ^ (j5 * j8)) ^ (j6 * j7)) & (-8608480567731124088L));
    }

    public static boolean C(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static void D(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr2[0];
        long j4 = jArr2[1];
        long jReverse = Long.reverse(j);
        long jReverse2 = Long.reverse(j2);
        long jReverse3 = Long.reverse(j3);
        long jReverse4 = Long.reverse(j4);
        long jReverse5 = Long.reverse(B(jReverse, jReverse3));
        long jB = B(j, j3) << 1;
        long jReverse6 = Long.reverse(B(jReverse2, jReverse4));
        long jB2 = B(j2, j4);
        long j5 = jB2 << 1;
        long jReverse7 = Long.reverse(B(jReverse ^ jReverse2, jReverse3 ^ jReverse4));
        long jB3 = ((B(j ^ j2, j3 ^ j4) << 1) ^ ((jReverse6 ^ jB) ^ j5)) ^ ((jB2 << 63) ^ (jB2 << 58));
        jArr[0] = jReverse5 ^ ((jB3 >>> 7) ^ (((jB3 >>> 1) ^ jB3) ^ (jB3 >>> 2)));
        jArr[1] = ((jB3 << 57) ^ ((jB3 << 63) ^ (jB3 << 62))) ^ ((jReverse7 ^ ((jB ^ jReverse5) ^ jReverse6)) ^ (((j5 ^ (j5 >>> 1)) ^ (j5 >>> 2)) ^ (j5 >>> 7)));
    }

    public static boolean K(Set set, Collection collection) {
        collection.getClass();
        boolean zRemove = false;
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                zRemove |= set.remove(it.next());
            }
            return zRemove;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                zRemove = true;
            }
        }
        return zRemove;
    }

    public static final void L(jv1 jv1Var, Object obj) throws xm2 {
        if (!(jv1Var instanceof ym2)) {
            jv1Var.resumeWith(obj);
            return;
        }
        ym2 ym2Var = (ym2) jv1Var;
        rx1 rx1Var = ym2Var.d;
        kv1 kv1Var = ym2Var.e;
        Throwable thA = en6.a(obj);
        Object ln1Var = thA == null ? obj : new ln1(thA, false);
        if (N(rx1Var, kv1Var.getContext())) {
            ym2Var.f = ln1Var;
            ym2Var.c = 1;
            M(rx1Var, kv1Var.getContext(), ym2Var);
            return;
        }
        uy2 uy2VarA = r28.a();
        if (uy2VarA.c >= 4294967296L) {
            ym2Var.f = ln1Var;
            ym2Var.c = 1;
            w40 w40Var = uy2VarA.e;
            if (w40Var == null) {
                w40Var = new w40();
                uy2VarA.e = w40Var;
            }
            w40Var.addLast(ym2Var);
            return;
        }
        uy2VarA.r(true);
        try {
            oh4 oh4Var = (oh4) kv1Var.getContext().get(nh4.b);
            if (oh4Var == null || oh4Var.isActive()) {
                Object obj2 = ym2Var.k;
                ox1 context = kv1Var.getContext();
                Object objJ = pe4.J(context, obj2);
                vd8 vd8VarV = objJ != pe4.i ? w13.v(kv1Var, context, objJ) : null;
                try {
                    kv1Var.resumeWith(obj);
                    if (vd8VarV == null || vd8VarV.c0()) {
                        pe4.y(context, objJ);
                    }
                } catch (Throwable th) {
                    if (vd8VarV == null || vd8VarV.c0()) {
                        pe4.y(context, objJ);
                    }
                    throw th;
                }
            } else {
                ym2Var.resumeWith(lg7.e(oh4Var.getCancellationException()));
            }
            while (uy2VarA.v()) {
            }
        } catch (Throwable th2) {
            try {
                ym2Var.i(th2);
            } finally {
                uy2VarA.q(true);
            }
        }
    }

    public static final void M(rx1 rx1Var, ox1 ox1Var, Runnable runnable) throws xm2 {
        try {
            rx1Var.j(ox1Var, runnable);
        } catch (Throwable th) {
            throw new xm2(th, rx1Var, ox1Var);
        }
    }

    public static final boolean N(rx1 rx1Var, ox1 ox1Var) throws xm2 {
        try {
            return rx1Var.m(ox1Var);
        } catch (Throwable th) {
            throw new xm2(th, rx1Var, ox1Var);
        }
    }

    public static void O(Status status, Object obj, TaskCompletionSource taskCompletionSource) {
        if (status.n()) {
            taskCompletionSource.setResult(obj);
        } else {
            taskCompletionSource.setException(rs9.f(status));
        }
    }

    public static final void P(int i, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error code: " + i);
        sb.append(", message: ".concat(str));
        throw new SQLException(sb.toString());
    }

    public static void R(int i, byte[] bArr, byte[] bArr2) {
        int i2 = 0;
        do {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i + i2]);
            int i3 = i2 + 1;
            bArr[i3] = (byte) (bArr[i3] ^ bArr2[i + i3]);
            int i4 = i2 + 2;
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i + i4]);
            int i5 = i2 + 3;
            bArr[i5] = (byte) (bArr[i5] ^ bArr2[i + i5]);
            i2 += 4;
        } while (i2 < 16);
    }

    public static void S(byte[] bArr, byte[] bArr2) {
        int i = 0;
        do {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
            int i2 = i + 1;
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
            int i3 = i + 2;
            bArr[i3] = (byte) (bArr[i3] ^ bArr2[i3]);
            int i4 = i + 3;
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
            i += 4;
        } while (i < 16);
    }

    public static int T(byte[] bArr, int i, of9 of9Var) throws xh9 {
        int iY = Y(bArr, i, of9Var);
        int i2 = of9Var.a;
        if (i2 < 0) {
            throw xh9.b();
        }
        if (i2 > bArr.length - iY) {
            throw xh9.c();
        }
        if (i2 == 0) {
            of9Var.c = hg9.c;
            return iY;
        }
        of9Var.c = hg9.g(bArr, iY, i2);
        return iY + i2;
    }

    public static n69 U(xz5 xz5Var) {
        if (TextUtils.isEmpty(xz5Var.e)) {
            String str = xz5Var.a;
            String str2 = xz5Var.b;
            boolean z = xz5Var.d;
            n69 n69Var = new n69();
            e(str);
            n69Var.b = str;
            e(str2);
            n69Var.c = str2;
            n69Var.f = z;
            return n69Var;
        }
        String str3 = xz5Var.c;
        String str4 = xz5Var.e;
        boolean z2 = xz5Var.d;
        n69 n69Var2 = new n69();
        e(str3);
        n69Var2.a = str3;
        e(str4);
        n69Var2.d = str4;
        n69Var2.f = z2;
        return n69Var2;
    }

    public static int V(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int W(jk9 jk9Var, int i, byte[] bArr, int i2, int i3, oh9 oh9Var, of9 of9Var) throws xh9 {
        ih9 ih9VarZzd = jk9Var.zzd();
        jk9 jk9Var2 = jk9Var;
        byte[] bArr2 = bArr;
        int i4 = i3;
        of9 of9Var2 = of9Var;
        int iB0 = b0(ih9VarZzd, jk9Var2, bArr2, i2, i4, of9Var2);
        jk9Var2.a(ih9VarZzd);
        of9Var2.c = ih9VarZzd;
        oh9Var.add(ih9VarZzd);
        while (iB0 < i4) {
            of9 of9Var3 = of9Var2;
            int i5 = i4;
            int iY = Y(bArr2, iB0, of9Var3);
            if (i != of9Var3.a) {
                break;
            }
            byte[] bArr3 = bArr2;
            jk9 jk9Var3 = jk9Var2;
            ih9 ih9VarZzd2 = jk9Var3.zzd();
            iB0 = b0(ih9VarZzd2, jk9Var3, bArr3, iY, i5, of9Var3);
            jk9Var2 = jk9Var3;
            bArr2 = bArr3;
            i4 = i5;
            of9Var2 = of9Var3;
            jk9Var2.a(ih9VarZzd2);
            of9Var2.c = ih9VarZzd2;
            oh9Var.add(ih9VarZzd2);
        }
        return iB0;
    }

    public static int X(int i, byte[] bArr, int i2, int i3, il9 il9Var, of9 of9Var) throws xh9 {
        if ((i >>> 3) == 0) {
            throw new xh9("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iA0 = a0(bArr, i2, of9Var);
            il9Var.b(i, Long.valueOf(of9Var.b));
            return iA0;
        }
        if (i4 == 1) {
            il9Var.b(i, Long.valueOf(c0(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iY = Y(bArr, i2, of9Var);
            int i5 = of9Var.a;
            if (i5 < 0) {
                throw xh9.b();
            }
            if (i5 > bArr.length - iY) {
                throw xh9.c();
            }
            if (i5 == 0) {
                il9Var.b(i, hg9.c);
            } else {
                il9Var.b(i, hg9.g(bArr, iY, i5));
            }
            return iY + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new xh9("Protocol message contained an invalid tag (zero).");
            }
            il9Var.b(i, Integer.valueOf(V(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        il9 il9VarA = il9.a();
        int i7 = 0;
        while (i2 < i3) {
            int iY2 = Y(bArr, i2, of9Var);
            i7 = of9Var.a;
            if (i7 == i6) {
                i2 = iY2;
                break;
            }
            i2 = X(i7, bArr, iY2, i3, il9VarA, of9Var);
        }
        if (i2 > i3 || i7 != i6) {
            throw new xh9("Failed to parse the message.");
        }
        il9Var.b(i, il9VarA);
        return i2;
    }

    public static int Y(byte[] bArr, int i, of9 of9Var) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return Z(b2, bArr, i2, of9Var);
        }
        of9Var.a = b2;
        return i2;
    }

    public static int Z(int i, byte[] bArr, int i2, of9 of9Var) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b2 >= 0) {
            of9Var.a = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & 127) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            of9Var.a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & 127) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            of9Var.a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & 127) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            of9Var.a = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                of9Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static bn1 a() {
        bn1 bn1Var = new bn1(true);
        bn1Var.C(null);
        return bn1Var;
    }

    public static int a0(byte[] bArr, int i, of9 of9Var) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            of9Var.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | (((long) (b2 & 127)) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            byte b3 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b3 & 127)) << i4;
            b2 = b3;
            i3 = i5;
        }
        of9Var.b = j2;
        return i3;
    }

    public static void b(String str, boolean z) {
        if (z) {
            return;
        }
        c6.f(str);
    }

    public static int b0(Object obj, jk9 jk9Var, byte[] bArr, int i, int i2, of9 of9Var) throws xh9 {
        int iZ = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZ = Z(i3, bArr, iZ, of9Var);
            i3 = of9Var.a;
        }
        int i4 = iZ;
        if (i3 < 0 || i3 > i2 - i4) {
            throw xh9.c();
        }
        int i5 = i4 + i3;
        jk9Var.d(obj, bArr, i4, i5, of9Var);
        of9Var.c = obj;
        return i5;
    }

    public static void c(boolean z) {
        if (z) {
            return;
        }
        c6.b();
    }

    public static long c0(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static void d(Handler handler) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != handler.getLooper()) {
            String name = looperMyLooper != null ? looperMyLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + String.valueOf(name2).length() + 35 + 1);
            xs1.t(sb, "Must be called on ", name2, " thread, but got ", name);
            f6.l(sb, ".");
        }
    }

    public static void e(String str) {
        if (TextUtils.isEmpty(str)) {
            c6.f("Given String is empty or null");
        }
    }

    public static void f(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            c6.f(str2);
        }
    }

    public static void g(String str) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return;
        }
        l0.e(str);
    }

    public static void h(Object obj) {
        if (obj != null) {
            return;
        }
        f6.n("null reference");
    }

    public static void i(Object obj, String str) {
        if (obj != null) {
            return;
        }
        f6.n(str);
    }

    public static void j(int i) {
        if (2 > i || i >= 37) {
            m0.i(dj7.r(i, "radix ", " was not in valid range "), new nd4(2, 36, 1));
        }
    }

    public static void k(String str, boolean z) {
        if (z) {
            return;
        }
        l0.e(str);
    }

    public static final void n(int i, int i2) {
        if (i <= i2) {
            return;
        }
        a6.d(dj7.j("toIndex (", i, ") is greater than size (", ").", i2));
    }

    public static void o(String str, String str2, Object obj) {
        String strConcat = "TRuntime.".concat(str);
        if (Log.isLoggable(strConcat, 3)) {
            Log.d(strConcat, String.format(str2, obj));
        }
    }

    public static void p(Exception exc, String str, String str2) {
        String strConcat = "TRuntime.".concat(str);
        if (Log.isLoggable(strConcat, 6)) {
            Log.e(strConcat, str2, exc);
        }
    }

    public static final kx2 q(Enum[] enumArr) {
        enumArr.getClass();
        return new kx2(enumArr);
    }

    public static final boolean r(char c2, char c3, boolean z) {
        if (c2 == c3) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c3);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static boolean s(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static final void t(String str, fw6 fw6Var) {
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0(str);
        try {
            nw6VarP0.i0();
            k55.d(nw6VarP0, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    public static List u() {
        String string;
        ArrayList arrayList;
        List listA0;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("features_allowed_multithreaded_downloads_chunk_counts", null);
            if (string != null) {
                List listX0 = nq7.x0(string, new String[]{","}, 6);
                arrayList = new ArrayList();
                Iterator it = listX0.iterator();
                while (it.hasNext()) {
                    Integer numX = uq7.X(nq7.H0((String) it.next()).toString());
                    if (numX != null) {
                        arrayList.add(numX);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList == null) {
                listA0 = fl1.A0(2, 4);
            } else {
                listA0 = arrayList.isEmpty() ? null : arrayList;
                if (listA0 == null) {
                    listA0 = fl1.A0(2, 4);
                }
            }
            return el1.m1(el1.v1(new LinkedHashSet(listA0)));
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static int v() {
        return ((Number) el1.S0(u())).intValue();
    }

    public static final Object w(ij5 ij5Var, l46 l46Var, Serializable serializable) {
        ij5Var.getClass();
        l46Var.getClass();
        Object objCopyOf = ij5Var.a.get(l46Var);
        if (objCopyOf instanceof byte[]) {
            byte[] bArr = (byte[]) objCopyOf;
            objCopyOf = Arrays.copyOf(bArr, bArr.length);
        }
        return objCopyOf == null ? serializable : objCopyOf;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    public static byte[] x(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest messageDigest;
        PackageInfo packageInfo = kw8.a(context).b.getPackageManager().getPackageInfo(str, 64);
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null && signatureArr.length == 1) {
            for (int i = 0; i < 2; i++) {
                try {
                    messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        if (messageDigest != null) {
                            return messageDigest.digest(packageInfo.signatures[0].toByteArray());
                        }
                    }
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            messageDigest = null;
            if (messageDigest != null) {
                return messageDigest.digest(packageInfo.signatures[0].toByteArray());
            }
        }
        return null;
    }

    public abstract void I(View view, int i, int i2);

    public abstract void J(View view, float f, float f2);

    public abstract boolean Q(View view, int i);

    public abstract int l(View view, int i);

    public int m(View view, int i) {
        return 0;
    }

    public int y(View view) {
        return 0;
    }

    public int z() {
        return 0;
    }

    public void F() {
    }

    public void H(int i) {
    }

    public void E(int i, int i2) {
    }

    public void G(View view, int i) {
    }
}
