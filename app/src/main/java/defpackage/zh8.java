package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Process;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.BulletSpan;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.MotionEvent;
import com.jcraft.jsch.Argon2;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;
import java.lang.reflect.Array;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zh8 {
    public static sh8 b = null;
    public static boolean c = false;
    public static final ge d = new ge();
    public static final X509Certificate[] e = new X509Certificate[0];
    public static final int[] f = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    public final /* synthetic */ int a;

    public /* synthetic */ zh8(int i) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:155:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x011c A[Catch: all -> 0x0156, TryCatch #2 {all -> 0x0156, blocks: (B:66:0x0118, B:68:0x011c, B:70:0x0120, B:72:0x0129, B:74:0x012f, B:77:0x0135, B:82:0x0143, B:80:0x013c, B:83:0x014b, B:84:0x014f), top: B:155:0x0118, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0120 A[Catch: all -> 0x0156, TryCatch #2 {all -> 0x0156, blocks: (B:66:0x0118, B:68:0x011c, B:70:0x0120, B:72:0x0129, B:74:0x012f, B:77:0x0135, B:82:0x0143, B:80:0x013c, B:83:0x014b, B:84:0x014f), top: B:155:0x0118, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x014b A[Catch: all -> 0x0156, TryCatch #2 {all -> 0x0156, blocks: (B:66:0x0118, B:68:0x011c, B:70:0x0120, B:72:0x0129, B:74:0x012f, B:77:0x0135, B:82:0x0143, B:80:0x013c, B:83:0x014b, B:84:0x014f), top: B:155:0x0118, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x014f A[Catch: all -> 0x0156, TRY_LEAVE, TryCatch #2 {all -> 0x0156, blocks: (B:66:0x0118, B:68:0x011c, B:70:0x0120, B:72:0x0129, B:74:0x012f, B:77:0x0135, B:82:0x0143, B:80:0x013c, B:83:0x014b, B:84:0x014f), top: B:155:0x0118, inners: #5 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    public static oq3 A(XmlPullParser xmlPullParser, Resources resources) throws Exception {
        int next;
        int i;
        int i2;
        ?? r4;
        long j;
        Throwable th;
        ?? r5;
        ExecutorService executorService;
        boolean zIsTerminated;
        boolean zIsTerminated2;
        TimeUnit timeUnit = TimeUnit.DAYS;
        do {
            next = xmlPullParser.next();
            i = 2;
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlPullParser.require(2, null, "font-family");
        if (!xmlPullParser.getName().equals("font-family")) {
            J(xmlPullParser);
            return null;
        }
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), ae6.b);
        int i3 = 0;
        String string = typedArrayObtainAttributes.getString(0);
        String string2 = typedArrayObtainAttributes.getString(5);
        String string3 = typedArrayObtainAttributes.getString(6);
        String string4 = typedArrayObtainAttributes.getString(2);
        int resourceId = typedArrayObtainAttributes.getResourceId(1, 0);
        int i4 = 3;
        int integer = typedArrayObtainAttributes.getInteger(3, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(4, 500);
        String string5 = typedArrayObtainAttributes.getString(7);
        typedArrayObtainAttributes.recycle();
        if (string == null || string2 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), ae6.c);
                        int i5 = typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(8) ? 8 : 1, 400);
                        boolean z = 1 == typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(6) ? 6 : 2, 0);
                        int i6 = typedArrayObtainAttributes2.hasValue(9) ? 9 : 3;
                        String string6 = typedArrayObtainAttributes2.getString(typedArrayObtainAttributes2.hasValue(7) ? 7 : 4);
                        int i7 = typedArrayObtainAttributes2.getInt(i6, 0);
                        int i8 = typedArrayObtainAttributes2.hasValue(5) ? 5 : 0;
                        int resourceId2 = typedArrayObtainAttributes2.getResourceId(i8, 0);
                        String string7 = typedArrayObtainAttributes2.getString(i8);
                        typedArrayObtainAttributes2.recycle();
                        while (xmlPullParser.next() != 3) {
                            J(xmlPullParser);
                        }
                        arrayList.add(new qq3(i5, i7, resourceId2, string7, string6, z));
                    } else {
                        J(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new pq3((qq3[]) arrayList.toArray(new qq3[0]));
        }
        List listD = D(resources, resourceId);
        ArrayList arrayList2 = new ArrayList();
        while (xmlPullParser.next() != i4) {
            if (xmlPullParser.getEventType() == i) {
                if (xmlPullParser.getName().equals("fallback")) {
                    TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), ae6.d);
                    int i9 = integer;
                    try {
                        String string8 = typedArrayObtainAttributes3.getString(i3);
                        String string9 = typedArrayObtainAttributes3.getString(1);
                        String string10 = typedArrayObtainAttributes3.getString(i);
                        if (string8 == null) {
                            r4 = typedArrayObtainAttributes3;
                            j = 1;
                            throw new XmlPullParserException("query attribute must be set in fallback element");
                        }
                        while (xmlPullParser.next() != 3) {
                            try {
                                J(xmlPullParser);
                            } catch (Throwable th2) {
                                th = th2;
                                r5 = typedArrayObtainAttributes3;
                                j = 1;
                            }
                        }
                        try {
                            r4 = typedArrayObtainAttributes3;
                            i2 = i9;
                            j = 1;
                            try {
                                fq3 fq3Var = new fq3(string, string2, string8, listD, string9, string10);
                                if (r4 instanceof AutoCloseable) {
                                    ((AutoCloseable) r4).close();
                                } else if (r4 instanceof ExecutorService) {
                                    ExecutorService executorService2 = (ExecutorService) r4;
                                    if (executorService2 != ForkJoinPool.commonPool() && !(zIsTerminated2 = executorService2.isTerminated())) {
                                        executorService2.shutdown();
                                        boolean z2 = false;
                                        while (!zIsTerminated2) {
                                            try {
                                                zIsTerminated2 = executorService2.awaitTermination(1L, timeUnit);
                                            } catch (InterruptedException unused) {
                                                if (!z2) {
                                                    executorService2.shutdownNow();
                                                    z2 = true;
                                                }
                                            }
                                        }
                                        if (z2) {
                                            Thread.currentThread().interrupt();
                                        }
                                    }
                                } else {
                                    r4.recycle();
                                }
                                arrayList2.add(fq3Var);
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            r4 = typedArrayObtainAttributes3;
                            j = 1;
                            th = th;
                            r5 = r4;
                            if (r5 != 0) {
                                throw th;
                            }
                            try {
                                if (!(r5 instanceof AutoCloseable)) {
                                    ((AutoCloseable) r5).close();
                                    throw th;
                                }
                                if (r5 instanceof ExecutorService) {
                                    r5.recycle();
                                    throw th;
                                }
                                executorService = (ExecutorService) r5;
                                if (executorService != ForkJoinPool.commonPool()) {
                                    throw th;
                                }
                                throw th;
                            } catch (Throwable th5) {
                                th.addSuppressed(th5);
                                throw th;
                            }
                        }
                        th = th3;
                    } catch (Throwable th6) {
                        th = th6;
                        r4 = typedArrayObtainAttributes3;
                    }
                    th = th;
                    r5 = r4;
                    if (r5 != 0) {
                        throw th;
                    }
                    if (!(r5 instanceof AutoCloseable)) {
                        ((AutoCloseable) r5).close();
                        throw th;
                    }
                    if (r5 instanceof ExecutorService) {
                        r5.recycle();
                        throw th;
                    }
                    executorService = (ExecutorService) r5;
                    if (executorService != ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                        throw th;
                    }
                    executorService.shutdown();
                    boolean z3 = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(j, timeUnit);
                        } catch (InterruptedException unused2) {
                            if (!z3) {
                                executorService.shutdownNow();
                                z3 = true;
                            }
                        }
                    }
                    if (!z3) {
                        throw th;
                    }
                    Thread.currentThread().interrupt();
                    throw th;
                }
                i2 = integer;
                J(xmlPullParser);
                integer = i2;
                integer2 = integer2;
                string5 = string5;
                i = 2;
                i3 = 0;
                i4 = 3;
            }
        }
        int i10 = integer2;
        String str = string5;
        int i11 = integer;
        if (!arrayList2.isEmpty()) {
            return new rq3(arrayList2, i11, i10, str);
        }
        if (string3 == null) {
            c6.f("The provider font XML requires query attribute or fallback children.");
            return null;
        }
        arrayList2.add(new fq3(string, string2, string3, listD, null, null));
        if (string4 != null) {
            arrayList2.add(new fq3(string, string2, string4, listD, null, null));
        }
        return new rq3(arrayList2, i11, i10, str);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b6  */
    public static final ArrayList B(f77 f77Var, boolean z) {
        int iNextIndex;
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator it = f77Var.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            String string = nq7.H0((String) it.next()).toString();
            if (string.length() != 0) {
                if (uq7.V(string, "[release-summary]", false)) {
                    ListIterator listIterator = arrayList.listIterator(arrayList.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            iNextIndex = -1;
                            break;
                        }
                        if (((d41) listIterator.previous()).c) {
                            iNextIndex = listIterator.nextIndex();
                            break;
                        }
                    }
                    if (iNextIndex >= 0) {
                        Object obj = arrayList.get(iNextIndex);
                        obj.getClass();
                        d41 d41Var = (d41) obj;
                        String string2 = nq7.H0(nq7.q0(string, "[release-summary]")).toString();
                        String str2 = d41Var.a;
                        boolean z3 = d41Var.b;
                        boolean z4 = d41Var.c;
                        boolean z5 = d41Var.d;
                        str2.getClass();
                        arrayList.set(iNextIndex, new d41(str2, z3, z4, z5, string2));
                    }
                } else {
                    String string3 = nq7.H0(string).toString();
                    boolean z6 = uq7.V(string3, "•", false) || uq7.V(string3, "-", false);
                    if (!z6) {
                        str = "**";
                        if (!uq7.V(string3, "**", false) || !uq7.O(string3, "**", false)) {
                            if (z6) {
                                str = null;
                            } else {
                                str = "__";
                                if (uq7.V(string3, "__", false) || !uq7.O(string3, "__", false)) {
                                    str = null;
                                }
                            }
                        }
                    } else if (z6) {
                        str = "__";
                        if (uq7.V(string3, "__", false)) {
                            str = null;
                        } else {
                            str = null;
                        }
                    } else {
                        str = null;
                    }
                    String strQ0 = nq7.q0(nq7.q0(string3, "• "), "- ");
                    if (str != null) {
                        strQ0 = nq7.r0(nq7.q0(strQ0, str), str);
                    }
                    String str3 = strQ0;
                    boolean z7 = str != null;
                    boolean z8 = str != null && uq7.V(str3, "v", false);
                    d41 d41Var2 = new d41(str3, z7, z8, z6, null);
                    if (z2 && z8) {
                        z2 = false;
                    }
                    if (nq7.Z(str3, "Test Options:", true)) {
                        z2 = true;
                    }
                    if (!z || !z2) {
                        arrayList.add(d41Var2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static qw7 C(String str, fw6 fw6Var) {
        Map mapB;
        w97 w97Var;
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0("PRAGMA table_info(`" + str + "`)");
        try {
            long j = 0;
            if (nw6VarP0.i0()) {
                int iO = bb9.o(nw6VarP0, "name");
                int iO2 = bb9.o(nw6VarP0, "type");
                int iO3 = bb9.o(nw6VarP0, "notnull");
                int iO4 = bb9.o(nw6VarP0, "pk");
                int iO5 = bb9.o(nw6VarP0, "dflt_value");
                d65 d65Var = new d65();
                do {
                    String strR = nw6VarP0.R(iO);
                    d65Var.put(strR, new nw7(strR, nw6VarP0.R(iO2), nw6VarP0.getLong(iO3) != 0, (int) nw6VarP0.getLong(iO4), nw6VarP0.isNull(iO5) ? null : nw6VarP0.R(iO5), 2));
                } while (nw6VarP0.i0());
                mapB = d65Var.b();
                k55.d(nw6VarP0, null);
            } else {
                mapB = pv2.a;
                k55.d(nw6VarP0, null);
            }
            nw6 nw6VarP1 = fw6Var.p0("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int iO6 = bb9.o(nw6VarP1, "id");
                int iO7 = bb9.o(nw6VarP1, "seq");
                int iO8 = bb9.o(nw6VarP1, "table");
                int iO9 = bb9.o(nw6VarP1, "on_delete");
                int iO10 = bb9.o(nw6VarP1, "on_update");
                List listM = ho6.M(nw6VarP1);
                nw6VarP1.reset();
                w97 w97Var2 = new w97();
                while (nw6VarP1.i0()) {
                    if (nw6VarP1.getLong(iO7) == j) {
                        int i = (int) nw6VarP1.getLong(iO6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        int i2 = iO6;
                        ArrayList<uq3> arrayList3 = new ArrayList();
                        for (Object obj : listM) {
                            int i3 = iO7;
                            List list = listM;
                            if (((uq3) obj).a == i) {
                                arrayList3.add(obj);
                            }
                            iO7 = i3;
                            listM = list;
                        }
                        int i4 = iO7;
                        List list2 = listM;
                        for (uq3 uq3Var : arrayList3) {
                            arrayList.add(uq3Var.c);
                            arrayList2.add(uq3Var.d);
                        }
                        w97Var2.add(new ow7(nw6VarP1.R(iO8), nw6VarP1.R(iO9), nw6VarP1.R(iO10), arrayList, arrayList2));
                        iO6 = i2;
                        iO7 = i4;
                        listM = list2;
                        j = 0;
                    }
                }
                w97 w97VarE = sz8.e(w97Var2);
                k55.d(nw6VarP1, null);
                nw6 nw6VarP2 = fw6Var.p0("PRAGMA index_list(`" + str + "`)");
                try {
                    int iO11 = bb9.o(nw6VarP2, "name");
                    int iO12 = bb9.o(nw6VarP2, "origin");
                    int iO13 = bb9.o(nw6VarP2, "unique");
                    if (iO11 == -1 || iO12 == -1 || iO13 == -1) {
                        k55.d(nw6VarP2, null);
                        w97Var = null;
                    } else {
                        w97 w97Var3 = new w97();
                        while (nw6VarP2.i0()) {
                            if ("c".equals(nw6VarP2.R(iO12))) {
                                pw7 pw7VarN = ho6.N(fw6Var, nw6VarP2.R(iO11), nw6VarP2.getLong(iO13) == 1);
                                if (pw7VarN == null) {
                                    k55.d(nw6VarP2, null);
                                    w97Var = null;
                                } else {
                                    w97Var3.add(pw7VarN);
                                }
                            }
                        }
                        w97 w97VarE2 = sz8.e(w97Var3);
                        k55.d(nw6VarP2, null);
                        w97Var = w97VarE2;
                    }
                    return new qw7(str, mapB, w97VarE, w97Var);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        k55.d(nw6VarP2, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    k55.d(nw6VarP1, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                k55.d(nw6VarP0, th5);
                throw th6;
            }
        }
    }

    public static List D(Resources resources, int i) {
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (typedArrayObtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    public static void E(int[] iArr, int i) {
        int i2;
        int i3 = iArr[15];
        int i4 = i3 & 268435455;
        long j = (i3 >>> 28) + i;
        int i5 = 0;
        long j2 = j;
        while (true) {
            if (i5 >= 8) {
                break;
            }
            long j3 = j2 + (4294967295L & ((long) iArr[i5]));
            iArr[i5] = ((int) j3) & 268435455;
            j2 = j3 >> 28;
            i5++;
        }
        long j4 = j2 + j;
        for (i2 = 8; i2 < 15; i2++) {
            long j5 = j4 + (((long) iArr[i2]) & 4294967295L);
            iArr[i2] = ((int) j5) & 268435455;
            j4 = j5 >> 28;
        }
        iArr[15] = i4 + ((int) j4);
    }

    public static final void F(String str) {
        System.err.println("SLF4J: ".concat(str));
    }

    public static final void G(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }

    public static void H(Activity activity, String[] strArr, int i) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (TextUtils.isEmpty(strArr[i2])) {
                c6.f(dj7.n(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
                return;
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i2], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i2));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < strArr.length; i4++) {
                if (!hashSet.contains(Integer.valueOf(i4))) {
                    strArr2[i3] = strArr[i4];
                    i3++;
                }
            }
        }
        activity.requestPermissions(strArr, i);
    }

    public static final Object I(qt3 qt3Var) {
        Thread.interrupted();
        return l73.B(lv2.a, new oe4(qt3Var, null, 1));
    }

    public static void J(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    public static void K(int i, int[] iArr, int[] iArr2) {
        L(iArr, iArr2);
        while (true) {
            i--;
            if (i <= 0) {
                return;
            } else {
                L(iArr2, iArr2);
            }
        }
    }

    public static void L(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = iArr[10];
        int i12 = iArr[11];
        int i13 = iArr[12];
        int i14 = iArr[13];
        int i15 = iArr[14];
        int i16 = iArr[15];
        int i17 = i * 2;
        int i18 = i2 * 2;
        int i19 = i5 * 2;
        int i20 = i6 * 2;
        int i21 = i7 * 2;
        int i22 = i9 * 2;
        int i23 = i11 * 2;
        int i24 = i12 * 2;
        int i25 = i13 * 2;
        int i26 = i + i9;
        int i27 = i2 + i10;
        int i28 = i3 + i11;
        int i29 = i4 + i12;
        int i30 = i5 + i13;
        int i31 = i6 + i14;
        int i32 = i7 + i15;
        int i33 = i26 * 2;
        int i34 = i27 * 2;
        int i35 = i28 * 2;
        int i36 = i29 * 2;
        long j = i;
        long j2 = j * j;
        long j3 = i8;
        long j4 = i18;
        long j5 = j3 * j4;
        long j6 = i7;
        long j7 = i3 * 2;
        long j8 = (j6 * j7) + j5;
        long j9 = i6;
        long j10 = i4 * 2;
        long j11 = (j9 * j10) + j8;
        long j12 = i5;
        long j13 = i9;
        long j14 = j13 * j13;
        long j15 = i16;
        long j16 = i10 * 2;
        long j17 = i15;
        long j18 = i23;
        long j19 = (j17 * j18) + (j15 * j16);
        long j20 = i14;
        long j21 = i24;
        long j22 = i13;
        long j23 = j22 * j22;
        long j24 = i26;
        long j25 = j24 * j24;
        long j26 = i8 + i16;
        long j27 = ((long) i34) & 4294967295L;
        long j28 = j26 * j27;
        long j29 = i32;
        long j30 = ((long) i35) & 4294967295L;
        long j31 = (j29 * j30) + j28;
        long j32 = i31;
        long j33 = ((long) i36) & 4294967295L;
        long j34 = (j32 * j33) + j31;
        long j35 = i30;
        long j36 = (j35 * j35) + j34;
        long j37 = ((j2 + j14) + j36) - ((j12 * j12) + j11);
        int i37 = ((int) j37) & 268435455;
        long j38 = j37 >>> 28;
        long j39 = (((j23 + ((j20 * j21) + j19)) + j25) - j2) + j36;
        int i38 = ((int) j39) & 268435455;
        long j40 = j39 >>> 28;
        long j41 = i2;
        long j42 = i17;
        long j43 = j41 * j42;
        long j44 = i19;
        long j45 = j9 * j44;
        long j46 = i10;
        long j47 = i22;
        long j48 = j46 * j47;
        long j49 = i25;
        long j50 = j20 * j49;
        long j51 = i27;
        long j52 = ((long) i33) & 4294967295L;
        long j53 = j51 * j52;
        long j54 = (j29 * j33) + (j26 * j30);
        long j55 = ((long) (i30 * 2)) & 4294967295L;
        long j56 = (j32 * j55) + j54;
        long j57 = (((j43 + j48) + j56) - (j45 + ((j6 * j10) + (j3 * j7)))) + j38;
        int i39 = ((int) j57) & 268435455;
        long j58 = j57 >>> 28;
        long j59 = (((j50 + ((j17 * j21) + (j15 * j18))) + j53) - j43) + j56 + j40;
        int i40 = ((int) j59) & 268435455;
        long j60 = j59 >>> 28;
        long j61 = i3;
        long j62 = (j41 * j41) + (j61 * j42);
        long j63 = (j6 * j44) + (j3 * j10);
        long j64 = i11;
        long j65 = (j46 * j46) + (j64 * j47);
        long j66 = (j17 * j49) + (j15 * j21);
        long j67 = i28;
        long j68 = (j51 * j51) + (j67 * j52);
        long j69 = (j32 * j32) + (j29 * j55) + (j26 * j33);
        long j70 = (((j62 + j65) + j69) - ((j9 * j9) + j63)) + j58;
        int i41 = ((int) j70) & 268435455;
        long j71 = j70 >>> 28;
        long j72 = ((((j20 * j20) + j66) + j68) - j62) + j69 + j60;
        int i42 = ((int) j72) & 268435455;
        long j73 = j72 >>> 28;
        long j74 = i4;
        long j75 = (j61 * j4) + (j74 * j42);
        long j76 = j3 * j44;
        long j77 = i20;
        long j78 = (j6 * j77) + j76;
        long j79 = i12;
        long j80 = (j64 * j16) + (j79 * j47);
        long j81 = j15 * j49;
        long j82 = i14 * 2;
        long j83 = (j17 * j82) + j81;
        long j84 = i29;
        long j85 = (j67 * j27) + (j84 * j52);
        long j86 = j55 * j26;
        long j87 = ((long) (i31 * 2)) & 4294967295L;
        long j88 = (j29 * j87) + j86;
        long j89 = (((j75 + j80) + j88) - j78) + j71;
        int i43 = ((int) j89) & 268435455;
        long j90 = j89 >>> 28;
        long j91 = ((j83 + j85) - j75) + j88 + j73;
        int i44 = ((int) j91) & 268435455;
        long j92 = j91 >>> 28;
        long j93 = (j61 * j61) + (j74 * j4) + (j12 * j42);
        long j94 = (j17 * j17) + (j82 * j15);
        long j95 = (j67 * j67) + (j84 * j27) + (j35 * j52);
        long j96 = (j29 * j29) + (j26 * j87);
        long j97 = (((j93 + ((j64 * j64) + ((j79 * j16) + (j22 * j47)))) + j96) - ((j6 * j6) + (j3 * j77))) + j90;
        int i45 = ((int) j97) & 268435455;
        long j98 = j97 >>> 28;
        long j99 = ((j94 + j95) - j93) + j96 + j92;
        int i46 = ((int) j99) & 268435455;
        long j100 = j99 >>> 28;
        long j101 = (j74 * j7) + (j12 * j4) + (j9 * j42);
        long j102 = (j79 * j18) + (j22 * j16) + (j20 * j47);
        long j103 = (j84 * j30) + (j35 * j27) + (j32 * j52);
        long j104 = (((long) (i32 * 2)) & 4294967295L) * j26;
        long j105 = (((j101 + j102) + j104) - (((long) i21) * j3)) + j98;
        int i47 = ((int) j105) & 268435455;
        long j106 = j105 >>> 28;
        long j107 = (((((long) (i15 * 2)) * j15) + j103) - j101) + j104 + j100;
        int i48 = ((int) j107) & 268435455;
        long j108 = j107 >>> 28;
        long j109 = (j74 * j74) + (j12 * j7) + (j9 * j4) + (j6 * j42);
        long j110 = (j84 * j84) + (j35 * j30) + (j32 * j27) + (j29 * j52);
        long j111 = j26 * j26;
        long j112 = (((j109 + ((j79 * j79) + ((j22 * j18) + ((j20 * j16) + (j17 * j47))))) + j111) - (j3 * j3)) + j106;
        int i49 = ((int) j112) & 268435455;
        long j113 = j112 >>> 28;
        long j114 = (((j15 * j15) + j110) - j109) + j111 + j108;
        long j115 = (j10 * j12) + (j9 * j7) + (j6 * j4) + (j3 * j42);
        long j116 = j20 * j18;
        long j117 = (j22 * j21) + j116 + (j17 * j16) + (j15 * j47);
        long j118 = j117 + j115 + j113;
        int i50 = ((int) j118) & 268435455;
        long j119 = (((j35 * j33) + ((j32 * j30) + ((j29 * j27) + (j26 * j52)))) - j115) + (j114 >>> 28);
        long j120 = j119 >>> 28;
        long j121 = (j118 >>> 28) + j120 + ((long) i38);
        long j122 = j120 + ((long) i37);
        iArr2[0] = ((int) j122) & 268435455;
        iArr2[1] = i39 + ((int) (j122 >>> 28));
        iArr2[2] = i41;
        iArr2[3] = i43;
        iArr2[4] = i45;
        iArr2[5] = i47;
        iArr2[6] = i49;
        iArr2[7] = i50;
        iArr2[8] = ((int) j121) & 268435455;
        iArr2[9] = i40 + ((int) (j121 >>> 28));
        iArr2[10] = i42;
        iArr2[11] = i44;
        iArr2[12] = i46;
        iArr2[13] = i48;
        iArr2[14] = ((int) j114) & 268435455;
        iArr2[15] = ((int) j119) & 268435455;
    }

    public static void M(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = iArr[10];
        int i12 = iArr[11];
        int i13 = iArr[12];
        int i14 = iArr[13];
        int i15 = iArr[14];
        int i16 = iArr[15];
        int i17 = iArr2[0];
        int i18 = iArr2[1];
        int i19 = iArr2[2];
        int i20 = iArr2[3];
        int i21 = iArr2[4];
        int i22 = iArr2[5];
        int i23 = iArr2[6];
        int i24 = iArr2[7];
        int i25 = iArr2[8];
        int i26 = iArr2[9];
        int i27 = iArr2[10];
        int i28 = iArr2[11];
        int i29 = iArr2[12];
        int i30 = iArr2[13];
        int i31 = (i2 + 536870910) - i18;
        int i32 = (i6 + 536870910) - i22;
        int i33 = (i10 + 536870910) - i26;
        int i34 = (i14 + 536870910) - i30;
        int i35 = ((i3 + 536870910) - i19) + (i31 >>> 28);
        int i36 = ((i7 + 536870910) - i23) + (i32 >>> 28);
        int i37 = ((i11 + 536870910) - i27) + (i33 >>> 28);
        int i38 = ((i15 + 536870910) - iArr2[14]) + (i34 >>> 28);
        int i39 = ((i4 + 536870910) - i20) + (i35 >>> 28);
        int i40 = ((i8 + 536870910) - i24) + (i36 >>> 28);
        int i41 = ((i12 + 536870910) - i28) + (i37 >>> 28);
        int i42 = ((i16 + 536870910) - iArr2[15]) + (i38 >>> 28);
        int i43 = i42 >>> 28;
        int i44 = ((i + 536870910) - i17) + i43;
        int i45 = ((i5 + 536870910) - i21) + (i39 >>> 28);
        int i46 = ((i9 + 536870908) - i25) + i43 + (i40 >>> 28);
        int i47 = ((i13 + 536870910) - i29) + (i41 >>> 28);
        iArr3[0] = i44 & 268435455;
        iArr3[1] = (i31 & 268435455) + (i44 >>> 28);
        iArr3[2] = i35 & 268435455;
        iArr3[3] = i39 & 268435455;
        iArr3[4] = i45 & 268435455;
        iArr3[5] = (i32 & 268435455) + (i45 >>> 28);
        iArr3[6] = i36 & 268435455;
        iArr3[7] = i40 & 268435455;
        iArr3[8] = i46 & 268435455;
        iArr3[9] = (i33 & 268435455) + (i46 >>> 28);
        iArr3[10] = i37 & 268435455;
        iArr3[11] = i41 & 268435455;
        iArr3[12] = i47 & 268435455;
        iArr3[13] = (i34 & 268435455) + (i47 >>> 28);
        iArr3[14] = i38 & 268435455;
        iArr3[15] = i42 & 268435455;
    }

    public static String N(String str) throws d49 {
        if (str.isEmpty()) {
            return null;
        }
        try {
            du9 du9Var = new du9(3);
            du9Var.zza(str);
            if (TextUtils.isEmpty(du9Var.b)) {
                throw new d49("No error message: ".concat(str));
            }
            return du9Var.b;
        } catch (Exception e2) {
            throw new d49(xs1.j("Json conversion failed! ", e2.getMessage()), e2);
        }
    }

    public static f59 O(String str, f59 f59Var) throws d49 {
        try {
            return f59Var.zza(str);
        } catch (Exception e2) {
            throw new d49(xs1.j("Json conversion failed! ", e2.getMessage()), e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0094  */
    /* JADX WARN: Code duplicated, block: B:39:0x0097  */
    /* JADX WARN: Code duplicated, block: B:43:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:0: B:25:0x0065->B:45:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0085 -> B:25:0x0065). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0088 -> B:25:0x0065). Please report as a decompilation issue!!! */
    public static final Object a(List list, ib2 ib2Var, kv1 kv1Var) throws Throwable {
        va2 va2Var;
        List list2;
        lh6 lh6Var;
        Iterator it;
        Throwable th;
        mt3 mt3Var;
        if (kv1Var instanceof va2) {
            va2Var = (va2) kv1Var;
            int i = va2Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                va2Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                va2Var = new va2(kv1Var);
            }
        } else {
            va2Var = new va2(kv1Var);
        }
        Object obj = va2Var.c;
        int i2 = va2Var.d;
        Object obj2 = yx1.a;
        if (i2 != 0) {
            if (i2 == 1) {
                list2 = (List) va2Var.a;
                lg7.H(obj);
            } else {
                if (i2 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                it = va2Var.b;
                lh6Var = (lh6) va2Var.a;
                try {
                    lg7.H(obj);
                } catch (Throwable th2) {
                    Object obj3 = lh6Var.a;
                    if (obj3 == null) {
                        lh6Var.a = th2;
                    } else {
                        yc9.a((Throwable) obj3, th2);
                    }
                }
            }
            while (it.hasNext()) {
                mt3Var = (mt3) it.next();
                va2Var.a = lh6Var;
                va2Var.b = it;
                va2Var.d = 2;
                if (mt3Var.invoke(va2Var) == obj2) {
                    return obj2;
                }
            }
            th = (Throwable) lh6Var.a;
            if (th == null) {
                return be8.a;
            }
            throw th;
        }
        lg7.H(obj);
        ArrayList arrayList = new ArrayList();
        xa2 xa2Var = new xa2(list, arrayList, null);
        va2Var.a = arrayList;
        va2Var.d = 1;
        if (ib2Var.a(xa2Var, va2Var) == obj2) {
            return obj2;
        }
        list2 = arrayList;
        lh6Var = new lh6();
        it = list2.iterator();
        while (it.hasNext()) {
            mt3Var = (mt3) it.next();
            va2Var.a = lh6Var;
            va2Var.b = it;
            va2Var.d = 2;
            if (mt3Var.invoke(va2Var) == obj2) {
                return obj2;
            }
        }
        th = (Throwable) lh6Var.a;
        if (th == null) {
            return be8.a;
        }
        throw th;
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i = 0; i < 16; i++) {
            iArr3[i] = iArr[i] + iArr2[i];
        }
    }

    public static int c(int i, int i2) {
        return (i & 16777215) | (i2 << 24);
    }

    public static void d(int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = iArr[10];
        int i12 = iArr[11];
        int i13 = iArr[12];
        int i14 = iArr[13];
        int i15 = i2 + (i >>> 28);
        int i16 = i6 + (i5 >>> 28);
        int i17 = i10 + (i9 >>> 28);
        int i18 = i14 + (i13 >>> 28);
        int i19 = i3 + (i15 >>> 28);
        int i20 = i7 + (i16 >>> 28);
        int i21 = i11 + (i17 >>> 28);
        int i22 = iArr[14] + (i18 >>> 28);
        int i23 = i4 + (i19 >>> 28);
        int i24 = i8 + (i20 >>> 28);
        int i25 = i12 + (i21 >>> 28);
        int i26 = iArr[15] + (i22 >>> 28);
        int i27 = i26 >>> 28;
        int i28 = (i & 268435455) + i27;
        int i29 = (i5 & 268435455) + (i23 >>> 28);
        int i30 = (i9 & 268435455) + i27 + (i24 >>> 28);
        int i31 = (i13 & 268435455) + (i25 >>> 28);
        iArr[0] = i28 & 268435455;
        iArr[1] = (i15 & 268435455) + (i28 >>> 28);
        iArr[2] = i19 & 268435455;
        iArr[3] = i23 & 268435455;
        iArr[4] = i29 & 268435455;
        iArr[5] = (i16 & 268435455) + (i29 >>> 28);
        iArr[6] = i20 & 268435455;
        iArr[7] = i24 & 268435455;
        iArr[8] = i30 & 268435455;
        iArr[9] = (i17 & 268435455) + (i30 >>> 28);
        iArr[10] = i21 & 268435455;
        iArr[11] = i25 & 268435455;
        iArr[12] = i31 & 268435455;
        iArr[13] = (i18 & 268435455) + (i31 >>> 28);
        iArr[14] = i22 & 268435455;
        iArr[15] = i26 & 268435455;
    }

    public static int e(Context context, String str) {
        if (str == null) {
            f6.n("permission must be non-null");
            return 0;
        }
        if (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        return new zo5(context).a.areNotificationsEnabled() ? 0 : -1;
    }

    public static void f(int i, int i2, int[] iArr, int[] iArr2) {
        for (int i3 = 0; i3 < 16; i3++) {
            int i4 = iArr2[i3];
            iArr2[i3] = i4 ^ ((iArr[i2 + i3] ^ i4) & i);
        }
    }

    public static void g(int i, int i2, int[] iArr, int[] iArr2) {
        for (int i3 = 0; i3 < 16; i3++) {
            iArr2[i2 + i3] = iArr[i + i3];
        }
    }

    public static void h(int i, int[] iArr, int[] iArr2) {
        int i2 = 0 - i;
        for (int i3 = 0; i3 < 16; i3++) {
            int i4 = iArr[i3];
            int i5 = iArr2[i3];
            int i6 = (i4 ^ i5) & i2;
            iArr[i3] = i4 ^ i6;
            iArr2[i3] = i5 ^ i6;
        }
    }

    public static void i(int i, int i2, int[] iArr, int[] iArr2) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        int i8 = iArr[i + 5];
        int i9 = iArr[i + 6];
        iArr2[i2] = i3 & 268435455;
        iArr2[i2 + 1] = ((i3 >>> 28) | (i4 << 4)) & 268435455;
        iArr2[i2 + 2] = ((i4 >>> 24) | (i5 << 8)) & 268435455;
        iArr2[i2 + 3] = ((i5 >>> 20) | (i6 << 12)) & 268435455;
        iArr2[i2 + 4] = ((i6 >>> 16) | (i7 << 16)) & 268435455;
        iArr2[i2 + 5] = ((i7 >>> 12) | (i8 << 20)) & 268435455;
        iArr2[i2 + 6] = 268435455 & ((i8 >>> 8) | (i9 << 24));
        iArr2[i2 + 7] = i9 >>> 4;
    }

    public static void j(int i, int i2, byte[] bArr, int[] iArr) {
        int i3 = (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | (bArr[i + 3] << 24);
        int i4 = ((bArr[i + 6] & 255) << 16) | (bArr[i + 4] & 255) | ((bArr[i + 5] & 255) << 8);
        iArr[i2] = 268435455 & i3;
        iArr[i2 + 1] = (i4 << 4) | (i3 >>> 28);
    }

    public static final oq8 k(vi1 vi1Var) {
        vi1Var.getClass();
        String str = vi1Var.f;
        if (vi1Var.a != dd1.WebDav) {
            return oq8.i;
        }
        if (nq7.Z(str, "Nextcloud", true)) {
            return oq8.j;
        }
        return nq7.Z(str, "ownCloud", true) ? oq8.k : oq8.i;
    }

    public static void l(byte[] bArr, int[] iArr) {
        n(0, 0, bArr, iArr);
        n(2, 7, bArr, iArr);
        n(4, 14, bArr, iArr);
        n(6, 21, bArr, iArr);
        n(8, 28, bArr, iArr);
        n(10, 35, bArr, iArr);
        n(12, 42, bArr, iArr);
        n(14, 49, bArr, iArr);
    }

    public static void m(int i, int i2, int[] iArr, int[] iArr2) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        int i8 = iArr[i + 5];
        int i9 = iArr[i + 6];
        int i10 = iArr[i + 7];
        iArr2[i2] = (i4 << 28) | i3;
        iArr2[i2 + 1] = (i4 >>> 4) | (i5 << 24);
        iArr2[i2 + 2] = (i5 >>> 8) | (i6 << 20);
        iArr2[i2 + 3] = (i6 >>> 12) | (i7 << 16);
        iArr2[i2 + 4] = (i7 >>> 16) | (i8 << 12);
        iArr2[i2 + 5] = (i8 >>> 20) | (i9 << 8);
        iArr2[i2 + 6] = (i10 << 4) | (i9 >>> 24);
    }

    public static void n(int i, int i2, byte[] bArr, int[] iArr) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = (i4 << 28) | i3;
        bArr[i2] = (byte) i5;
        bArr[i2 + 1] = (byte) (i5 >>> 8);
        bArr[i2 + 2] = (byte) (i5 >>> 16);
        bArr[i2 + 3] = (byte) (i5 >>> 24);
        bArr[i2 + 4] = (byte) (i4 >>> 4);
        bArr[i2 + 5] = (byte) (i4 >>> 12);
        bArr[i2 + 6] = (byte) (i4 >>> 20);
    }

    public static final SpannableStringBuilder o(int i, Context context, List list) {
        int iV = tu0.v((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 8.0f);
        int iV2 = tu0.v((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 1.5f);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                fl1.F0();
                throw null;
            }
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) obj);
            spannableStringBuilder.setSpan(Build.VERSION.SDK_INT >= 28 ? qs1.b(iV, i, iV2) : new BulletSpan(iV, i), length, spannableStringBuilder.length(), 33);
            if (i2 < list.size() - 1) {
                spannableStringBuilder.append((CharSequence) "\n\n");
            }
            i2 = i3;
        }
        return spannableStringBuilder;
    }

    public static z1 p(Object obj) {
        return new z1(obj.getClass(), Array.getLength(obj), 1, obj);
    }

    public static ColorStateList q(Context context, int i) {
        ColorStateList colorStateListA;
        ColorStateList colorStateList;
        cm6 cm6Var;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        dm6 dm6Var = new dm6(resources, theme);
        synchronized (fm6.c) {
            try {
                SparseArray sparseArray = (SparseArray) fm6.b.get(dm6Var);
                colorStateListA = null;
                if (sparseArray == null || sparseArray.size() <= 0 || (cm6Var = (cm6) sparseArray.get(i)) == null) {
                    colorStateList = null;
                } else {
                    if (cm6Var.b.equals(resources.getConfiguration())) {
                        if (theme != null || cm6Var.c != 0) {
                            if (theme == null || cm6Var.c != theme.hashCode()) {
                            }
                        }
                        colorStateList = cm6Var.a;
                    }
                    sparseArray.remove(i);
                    colorStateList = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ThreadLocal threadLocal = fm6.a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 < 28 || i2 > 31) {
            try {
                colorStateListA = wl1.a(resources, resources.getXml(i), theme);
            } catch (Exception e2) {
                Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            }
        }
        if (colorStateListA == null) {
            return resources.getColorStateList(i, theme);
        }
        synchronized (fm6.c) {
            try {
                WeakHashMap weakHashMap = fm6.b;
                SparseArray sparseArray2 = (SparseArray) weakHashMap.get(dm6Var);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    weakHashMap.put(dm6Var, sparseArray2);
                }
                sparseArray2.append(i, new cm6(colorStateListA, dm6Var.a.getConfiguration(), theme));
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return colorStateListA;
    }

    public static ff9 r(hl2 hl2Var) {
        hl2Var.c();
        return new ff9(hl2Var.f(), 1);
    }

    public static Set s() {
        try {
            Object objInvoke = Class.forName("android.text.EmojiConsistency").getMethod("getEmojiConsistencySet", null).invoke(null, null);
            if (objInvoke == null) {
                return Collections.EMPTY_SET;
            }
            Set set = (Set) objInvoke;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof int[])) {
                    return Collections.EMPTY_SET;
                }
            }
            return set;
        } catch (Throwable unused) {
            return Collections.EMPTY_SET;
        }
    }

    public static final int t(p77 p77Var, p77[] p77VarArr) {
        p77VarArr.getClass();
        int iHashCode = (p77Var.a().hashCode() * 31) + Arrays.hashCode(p77VarArr);
        int iF = p77Var.f();
        int i = 1;
        while (true) {
            int iHashCode2 = 0;
            if (!(iF > 0)) {
                break;
            }
            int i2 = iF - 1;
            int i3 = i * 31;
            String strA = p77Var.i(p77Var.f() - iF).a();
            if (strA != null) {
                iHashCode2 = strA.hashCode();
            }
            i = i3 + iHashCode2;
            iF = i2;
        }
        int iF2 = p77Var.f();
        int iHashCode3 = 1;
        while (true) {
            if (!(iF2 > 0)) {
                return (((iHashCode * 31) + i) * 31) + iHashCode3;
            }
            int i4 = iF2 - 1;
            int i5 = iHashCode3 * 31;
            zh8 zh8VarE = p77Var.i(p77Var.f() - iF2).e();
            iHashCode3 = i5 + (zh8VarE != null ? zh8VarE.hashCode() : 0);
            iF2 = i4;
        }
    }

    public static void u(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[14];
        g(0, 0, iArr, iArr3);
        E(iArr3, 1);
        E(iArr3, -1);
        m(0, 0, iArr3, iArr4);
        m(8, 7, iArr3, iArr4);
        lg7.y(f, iArr4, iArr4);
        i(0, 0, iArr4, iArr2);
        i(7, 8, iArr4, iArr2);
    }

    public static boolean v(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }

    public static int w(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static final String x(vi1 vi1Var) {
        Object next;
        String strReplaceAll;
        String string;
        fd1 fd1Var = vi1Var.b;
        dd1 dd1Var = vi1Var.a;
        oq8 oq8VarK = k(vi1Var);
        if (!pe4.d(oq8VarK, oq8.i)) {
            return oq8VarK.b;
        }
        cv4 cv4Var = new cv4(vi1Var.f);
        do {
            if (!cv4Var.hasNext()) {
                next = null;
                break;
            }
            next = cv4Var.next();
        } while (nq7.j0((String) next));
        String str = (String) next;
        if (str == null || (string = nq7.H0(str).toString()) == null) {
            strReplaceAll = null;
        } else {
            Pattern patternCompile = Pattern.compile("\\s+");
            patternCompile.getClass();
            strReplaceAll = patternCompile.matcher(string).replaceAll(TokenAuthenticationScheme.SCHEME_DELIMITER);
            strReplaceAll.getClass();
        }
        if (strReplaceAll == null) {
            strReplaceAll = "";
        }
        String strG0 = nq7.G0(80, strReplaceAll);
        if (nq7.j0(strG0) || nq7.a0(strG0, '<') || nq7.a0(strG0, '>')) {
            strG0 = null;
        }
        if (strG0 == null) {
            return null;
        }
        dd1 dd1Var2 = dd1.WebDav;
        if (dd1Var == dd1Var2 && uq7.V(strG0, "DAV:", true)) {
            return dd1Var.getDisplayNameEn();
        }
        if (dd1Var == dd1Var2 && nq7.Z(strG0, "SabreDAV", true)) {
            return dd1Var.getDisplayNameEn();
        }
        if (dd1Var == dd1.SMB && strG0.equals("tcp-open")) {
            return fd1Var.getDisplayName();
        }
        if (dd1Var == dd1.SFTP && uq7.V(strG0, "SSH-", false)) {
            return fd1Var.getDisplayName();
        }
        if (dd1Var == dd1.FTP) {
            return (uq7.V(strG0, "220", false) || uq7.V(strG0, "234", false) || strG0.equals("AUTH TLS")) ? fd1Var.getDisplayName() : strG0;
        }
        return strG0;
    }

    public static void y(int i, int[] iArr, int[] iArr2) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = iArr[8];
        int i11 = iArr[9];
        int i12 = iArr[10];
        int i13 = iArr[11];
        int i14 = iArr[12];
        int i15 = iArr[13];
        int i16 = iArr[14];
        int i17 = iArr[15];
        long j = i;
        long j2 = ((long) i3) * j;
        int i18 = ((int) j2) & 268435455;
        long j3 = j2 >>> 28;
        long j4 = ((long) i7) * j;
        int i19 = ((int) j4) & 268435455;
        long j5 = j4 >>> 28;
        long j6 = ((long) i11) * j;
        int i20 = ((int) j6) & 268435455;
        long j7 = j6 >>> 28;
        long j8 = ((long) i15) * j;
        int i21 = ((int) j8) & 268435455;
        long j9 = j8 >>> 28;
        long j10 = (((long) i4) * j) + j3;
        iArr2[2] = ((int) j10) & 268435455;
        long j11 = j10 >>> 28;
        long j12 = (((long) i8) * j) + j5;
        iArr2[6] = ((int) j12) & 268435455;
        long j13 = j12 >>> 28;
        long j14 = (((long) i12) * j) + j7;
        iArr2[10] = ((int) j14) & 268435455;
        long j15 = (((long) i16) * j) + j9;
        iArr2[14] = ((int) j15) & 268435455;
        long j16 = j15 >>> 28;
        long j17 = (((long) i5) * j) + j11;
        iArr2[3] = ((int) j17) & 268435455;
        long j18 = (((long) i9) * j) + j13;
        iArr2[7] = ((int) j18) & 268435455;
        long j19 = (((long) i13) * j) + (j14 >>> 28);
        iArr2[11] = ((int) j19) & 268435455;
        long j20 = j19 >>> 28;
        long j21 = (((long) i17) * j) + j16;
        iArr2[15] = ((int) j21) & 268435455;
        long j22 = j21 >>> 28;
        long j23 = (((long) i6) * j) + (j17 >>> 28);
        iArr2[4] = ((int) j23) & 268435455;
        long j24 = j23 >>> 28;
        long j25 = (((long) i10) * j) + (j18 >>> 28) + j22;
        iArr2[8] = ((int) j25) & 268435455;
        long j26 = (((long) i14) * j) + j20;
        iArr2[12] = ((int) j26) & 268435455;
        long j27 = j26 >>> 28;
        long j28 = (((long) i2) * j) + j22;
        iArr2[0] = ((int) j28) & 268435455;
        iArr2[1] = i18 + ((int) (j28 >>> 28));
        iArr2[5] = i19 + ((int) j24);
        iArr2[9] = i20 + ((int) (j25 >>> 28));
        iArr2[13] = i21 + ((int) j27);
    }

    public static void z(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = iArr[10];
        int i12 = iArr[11];
        int i13 = iArr[12];
        int i14 = iArr[13];
        int i15 = iArr[14];
        int i16 = iArr[15];
        int i17 = iArr2[0];
        int i18 = iArr2[1];
        int i19 = iArr2[2];
        int i20 = iArr2[3];
        int i21 = iArr2[4];
        int i22 = iArr2[5];
        int i23 = iArr2[6];
        int i24 = iArr2[7];
        int i25 = iArr2[8];
        int i26 = iArr2[9];
        int i27 = iArr2[10];
        int i28 = iArr2[11];
        int i29 = iArr2[12];
        int i30 = iArr2[13];
        int i31 = iArr2[14];
        int i32 = iArr2[15];
        int i33 = i + i9;
        int i34 = i2 + i10;
        int i35 = i3 + i11;
        int i36 = i4 + i12;
        int i37 = i5 + i13;
        int i38 = i6 + i14;
        int i39 = i7 + i15;
        int i40 = i8 + i16;
        int i41 = i17 + i25;
        int i42 = i18 + i26;
        int i43 = i19 + i27;
        int i44 = i20 + i28;
        int i45 = i21 + i29;
        int i46 = i22 + i30;
        int i47 = i23 + i31;
        int i48 = i24 + i32;
        long j = i;
        long j2 = i17;
        long j3 = j * j2;
        long j4 = i8;
        long j5 = i18;
        long j6 = j4 * j5;
        long j7 = i7;
        long j8 = i19;
        long j9 = (j7 * j8) + j6;
        long j10 = i6;
        long j11 = i20;
        long j12 = i5;
        long j13 = i21;
        long j14 = i4;
        long j15 = i22;
        long j16 = (j14 * j15) + (j12 * j13) + (j10 * j11) + j9;
        long j17 = i3;
        long j18 = i23;
        long j19 = i2;
        long j20 = i24;
        long j21 = j19 * j20;
        long j22 = i9;
        long j23 = i25;
        long j24 = j22 * j23;
        long j25 = i16;
        long j26 = i26;
        long j27 = j25 * j26;
        long j28 = i15;
        long j29 = i27;
        long j30 = (j28 * j29) + j27;
        long j31 = i14;
        long j32 = i28;
        long j33 = (j31 * j32) + j30;
        long j34 = i13;
        long j35 = i29;
        long j36 = (j34 * j35) + j33;
        long j37 = i12;
        long j38 = i30;
        long j39 = (j37 * j38) + j36;
        long j40 = i11;
        long j41 = i31;
        long j42 = (j40 * j41) + j39;
        long j43 = i10;
        long j44 = i32;
        long j45 = (j43 * j44) + j42;
        long j46 = i33;
        long j47 = i41;
        long j48 = j46 * j47;
        long j49 = i40;
        long j50 = i42;
        long j51 = j49 * j50;
        long j52 = i39;
        long j53 = i43;
        long j54 = (j52 * j53) + j51;
        long j55 = i38;
        long j56 = i44;
        long j57 = (j55 * j56) + j54;
        long j58 = i37;
        long j59 = i45;
        long j60 = (j58 * j59) + j57;
        long j61 = i36;
        long j62 = i46;
        long j63 = (j61 * j62) + j60;
        long j64 = i35;
        long j65 = i47;
        long j66 = (j64 * j65) + j63;
        long j67 = i34;
        long j68 = i48;
        long j69 = (j67 * j68) + j66;
        long j70 = ((j3 + j24) + j69) - (j21 + ((j17 * j18) + j16));
        int i49 = ((int) j70) & 268435455;
        long j71 = ((j45 + j48) - j3) + j69;
        int i50 = ((int) j71) & 268435455;
        long j72 = j71 >>> 28;
        long j73 = (j * j5) + (j19 * j2);
        long j74 = (j40 * j44) + (j37 * j41) + (j34 * j38) + (j31 * j35) + (j28 * j32) + (j25 * j29);
        long j75 = (j46 * j50) + (j67 * j47);
        long j76 = (j64 * j68) + (j61 * j65) + (j58 * j62) + (j55 * j59) + (j52 * j56) + (j49 * j53);
        long j77 = (((j73 + ((j22 * j26) + (j43 * j23))) + j76) - ((j17 * j20) + ((j14 * j18) + ((j12 * j15) + ((j10 * j13) + ((j7 * j11) + (j4 * j8))))))) + (j70 >>> 28);
        int i51 = ((int) j77) & 268435455;
        long j78 = j77 >>> 28;
        long j79 = ((j74 + j75) - j73) + j76 + j72;
        int i52 = ((int) j79) & 268435455;
        long j80 = j79 >>> 28;
        long j81 = (j * j8) + (j19 * j5) + (j17 * j2);
        long j82 = (j37 * j44) + (j34 * j41) + (j31 * j38) + (j28 * j35) + (j25 * j32);
        long j83 = (j46 * j53) + (j67 * j50) + (j64 * j47);
        long j84 = (j61 * j68) + (j58 * j65) + (j55 * j62) + (j52 * j59) + (j49 * j56);
        long j85 = (((j81 + ((j22 * j29) + ((j43 * j26) + (j40 * j23)))) + j84) - ((j14 * j20) + ((j12 * j18) + ((j10 * j15) + ((j7 * j13) + (j4 * j11)))))) + j78;
        int i53 = ((int) j85) & 268435455;
        long j86 = j85 >>> 28;
        long j87 = ((j82 + j83) - j81) + j84 + j80;
        int i54 = ((int) j87) & 268435455;
        long j88 = j87 >>> 28;
        long j89 = (j * j11) + (j19 * j8) + (j17 * j5) + (j14 * j2);
        long j90 = (j34 * j44) + (j31 * j41) + (j28 * j38) + (j25 * j35);
        long j91 = (j46 * j56) + (j67 * j53) + (j64 * j50) + (j61 * j47);
        long j92 = (j58 * j68) + (j55 * j65) + (j52 * j62) + (j49 * j59);
        long j93 = (((j89 + ((j22 * j32) + ((j43 * j29) + ((j40 * j26) + (j37 * j23))))) + j92) - ((j12 * j20) + ((j10 * j18) + ((j7 * j15) + (j4 * j13))))) + j86;
        int i55 = ((int) j93) & 268435455;
        long j94 = j93 >>> 28;
        long j95 = ((j90 + j91) - j89) + j92 + j88;
        int i56 = ((int) j95) & 268435455;
        long j96 = j95 >>> 28;
        long j97 = (j * j13) + (j19 * j11) + (j17 * j8) + (j14 * j5) + (j12 * j2);
        long j98 = (j31 * j44) + (j28 * j41) + (j25 * j38);
        long j99 = (j46 * j59) + (j67 * j56) + (j64 * j53) + (j61 * j50) + (j58 * j47);
        long j100 = (j55 * j68) + (j52 * j65) + (j49 * j62);
        long j101 = (((j97 + ((j22 * j35) + ((j43 * j32) + ((j40 * j29) + ((j37 * j26) + (j34 * j23)))))) + j100) - ((j10 * j20) + ((j7 * j18) + (j4 * j15)))) + j94;
        int i57 = ((int) j101) & 268435455;
        long j102 = j101 >>> 28;
        long j103 = ((j98 + j99) - j97) + j100 + j96;
        int i58 = ((int) j103) & 268435455;
        long j104 = j103 >>> 28;
        long j105 = (j * j15) + (j19 * j13) + (j17 * j11) + (j14 * j8) + (j12 * j5) + (j10 * j2);
        long j106 = (j28 * j44) + (j25 * j41);
        long j107 = (j46 * j62) + (j67 * j59) + (j64 * j56) + (j61 * j53) + (j58 * j50) + (j55 * j47);
        long j108 = (j52 * j68) + (j49 * j65);
        long j109 = (((j105 + ((j22 * j38) + ((j43 * j35) + ((j40 * j32) + ((j37 * j29) + ((j34 * j26) + (j31 * j23))))))) + j108) - ((j7 * j20) + (j4 * j18))) + j102;
        int i59 = ((int) j109) & 268435455;
        long j110 = j109 >>> 28;
        long j111 = ((j106 + j107) - j105) + j108 + j104;
        int i60 = ((int) j111) & 268435455;
        long j112 = j111 >>> 28;
        long j113 = (j * j18) + (j19 * j15) + (j17 * j13) + (j14 * j11) + (j12 * j8) + (j10 * j5) + (j7 * j2);
        long j114 = j25 * j44;
        long j115 = (j46 * j65) + (j67 * j62) + (j64 * j59) + (j61 * j56) + (j58 * j53) + (j55 * j50) + (j52 * j47);
        long j116 = j49 * j68;
        long j117 = (((j113 + ((j22 * j41) + ((j43 * j38) + ((j40 * j35) + ((j37 * j32) + ((j34 * j29) + ((j31 * j26) + (j28 * j23)))))))) + j116) - (j4 * j20)) + j110;
        int i61 = ((int) j117) & 268435455;
        long j118 = j117 >>> 28;
        long j119 = ((j114 + j115) - j113) + j116 + j112;
        long j120 = j14 * j13;
        long j121 = (j * j20) + (j19 * j18) + (j17 * j15) + j120 + (j12 * j11) + (j10 * j8) + (j7 * j5) + (j2 * j4);
        long j122 = (j22 * j44) + (j43 * j41) + (j40 * j38) + (j37 * j35) + (j34 * j32) + (j31 * j29) + (j28 * j26) + (j25 * j23) + j121 + j118;
        int i62 = ((int) j122) & 268435455;
        long j123 = (((j46 * j68) + ((j67 * j65) + ((j64 * j62) + ((j61 * j59) + ((j58 * j56) + ((j55 * j53) + ((j52 * j50) + (j49 * j47)))))))) - j121) + (j119 >>> 28);
        long j124 = j123 >>> 28;
        long j125 = (j122 >>> 28) + j124 + ((long) i50);
        long j126 = j124 + ((long) i49);
        iArr3[0] = ((int) j126) & 268435455;
        iArr3[1] = i51 + ((int) (j126 >>> 28));
        iArr3[2] = i53;
        iArr3[3] = i55;
        iArr3[4] = i57;
        iArr3[5] = i59;
        iArr3[6] = i61;
        iArr3[7] = i62;
        iArr3[8] = ((int) j125) & 268435455;
        iArr3[9] = i52 + ((int) (j125 >>> 28));
        iArr3[10] = i54;
        iArr3[11] = i56;
        iArr3[12] = i58;
        iArr3[13] = i60;
        iArr3[14] = ((int) j119) & 268435455;
        iArr3[15] = ((int) j123) & 268435455;
    }

    public abstract void P(jr9 jr9Var, jr9 jr9Var2);

    public abstract void Q(jr9 jr9Var, Thread thread);

    public abstract boolean R(ks9 ks9Var, hl9 hl9Var, hl9 hl9Var2);

    public abstract boolean S(ks9 ks9Var, Object obj, Object obj2);

    public abstract boolean T(ks9 ks9Var, jr9 jr9Var, jr9 jr9Var2);

    public int hashCode() {
        switch (this.a) {
            case Argon2.V10 /* 16 */:
                return toString().hashCode();
            default:
                return super.hashCode();
        }
    }

    public String toString() {
        switch (this.a) {
            case Argon2.V10 /* 16 */:
                String strC = ph6.a(getClass()).c();
                strC.getClass();
                return strC;
            default:
                return super.toString();
        }
    }
}
