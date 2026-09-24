package defpackage;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.provider.DocumentsContract;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ji8 {
    public static Class a = null;
    public static int b = -1;
    public static Context c;
    public static final zk2 d = new zk2(0);
    public static final short[] e = {2285, 2571, 2970, 1812, 1493, 1422, 287, 202, 3158, 622, 1577, 182, 962, 2127, 1855, 1468, 573, 2004, 264, 383, 2500, 1458, 1727, 3199, 2648, 1017, 732, 608, 1787, 411, 3124, 1758, 1223, 652, 2777, 1015, 2036, 1491, 3047, 1785, 516, 3321, 3009, 2663, 1711, 2167, 126, 1469, 2476, 3239, 3058, 830, 107, 1908, 3082, 2378, 2931, 961, 1821, 2604, 448, 2264, 677, 2054, 2226, 430, 555, 843, 2078, 871, 1550, 105, 422, 587, 177, 3094, 3038, 2869, 1574, 1653, 3083, 778, 1159, 3182, 2552, 1483, 2727, 1119, 1739, 644, 2457, 349, 418, 329, 3173, 3254, 817, 1097, 603, 610, 1322, 2044, 1864, 384, 2114, 3193, 1218, 1994, 2455, 220, 2142, 1670, 2144, 1799, 2051, 794, 1819, 2475, 2459, 478, 3221, 3021, 996, 991, 958, 1869, 1522, 1628};
    public static final byte[] f = {-3, 55, 122, 88, 90, 0};
    public static final byte[] k = {89, 90};

    public static final ho7 A(of4 of4Var) {
        of4Var.getClass();
        zn7 zn7Var = of4Var.a;
        Exception exc = of4Var.b;
        String strJ = null;
        w46 w46Var = exc instanceof w46 ? (w46) exc : null;
        if (zn7Var != null) {
            String str = ry5.u;
            strJ = qy5.d(zn7Var);
        } else if (w46Var != null) {
            strJ = eq3.j(nq7.K0(w46Var.a, '/'), "/SwiftBackup/");
        }
        return new ho7(strJ, zn7Var != null && zn7Var.b, (zn7Var != null && zn7Var.b) || w46Var != null);
    }

    public static int B(int i, int i2, int i3) {
        return (i & (~i3)) | (i2 & i3);
    }

    public static int C(int i) {
        return (i + 1) * (i < 32 ? 4 : 2);
    }

    public static int E(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iH = cy0.H(obj);
        int i2 = iH & i;
        int iK = K(i2, obj3);
        if (iK != 0) {
            int i3 = ~i;
            int i4 = iH & i3;
            int i5 = -1;
            while (true) {
                int i6 = iK - 1;
                int i7 = iArr[i6];
                if ((i7 & i3) == i4 && Objects.equals(obj, objArr[i6]) && (objArr2 == null || Objects.equals(obj2, objArr2[i6]))) {
                    int i8 = i7 & i;
                    if (i5 == -1) {
                        L(obj3, i2, i8);
                        return i6;
                    }
                    iArr[i5] = B(iArr[i5], i8, i);
                    return i6;
                }
                int i9 = i7 & i;
                if (i9 == 0) {
                    break;
                }
                i5 = i6;
                iK = i9;
            }
        }
        return -1;
    }

    public static int F(Context context, int i, int i2) {
        TypedValue typedValueP = jm1.P(context.getTheme(), i);
        return (typedValueP == null || typedValueP.type != 16) ? i2 : typedValueP.data;
    }

    public static TimeInterpolator G(Context context, int i, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            c6.f("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
            return null;
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!z(strValueOf, "cubic-bezier") && !z(strValueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (z(strValueOf, "cubic-bezier")) {
            String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
            if (strArrSplit.length == 4) {
                return new PathInterpolator(p(0, strArrSplit), p(1, strArrSplit), p(2, strArrSplit), p(3, strArrSplit));
            }
            z5.c(strArrSplit.length, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
            return null;
        }
        if (!z(strValueOf, "path")) {
            c6.f("Invalid motion easing type: ".concat(strValueOf));
            return null;
        }
        String strG = xs1.g(1, 5, strValueOf);
        Path path = new Path();
        try {
            ky5.b(ho6.h(strG), path);
            return new PathInterpolator(path);
        } catch (RuntimeException e2) {
            e6.i("Error in parsing ".concat(strG), e2);
            return null;
        }
    }

    public static hk7 H(Context context) {
        TypedValue typedValueP = jm1.P(context.getTheme(), R.attr.motionSpringFastSpatial);
        int[] iArr = td6.E;
        TypedArray typedArrayObtainStyledAttributes = typedValueP == null ? context.obtainStyledAttributes(null, iArr, 0, R.style.Motion_Material3_Spring_Standard_Fast_Spatial) : context.obtainStyledAttributes(typedValueP.resourceId, iArr);
        hk7 hk7Var = new hk7();
        try {
            float f2 = typedArrayObtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f2 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f3 = typedArrayObtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f3 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            hk7Var.b(f2);
            hk7Var.a(f3);
            typedArrayObtainStyledAttributes.recycle();
            return hk7Var;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public static int K(int i, Object obj) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & 255;
        }
        return obj instanceof short[] ? ((short[]) obj)[i] & 65535 : ((int[]) obj)[i];
    }

    public static void L(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    public static int M(int i) {
        int iMax = Math.max(i + 1, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (1.0d * ((double) iHighestOneBit))) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
            iHighestOneBit = 1073741824;
        }
        return Math.max(4, iHighestOneBit);
    }

    public static int N(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object O(ox1 ox1Var, Object obj, Object obj2, qt3 qt3Var, jv1 jv1Var) throws Throwable {
        n41 n41Var;
        Object objJ;
        Object objInvoke;
        if (jv1Var instanceof n41) {
            n41Var = (n41) jv1Var;
            int i = n41Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                n41Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                n41Var = new n41(jv1Var);
            }
        } else {
            n41Var = new n41(jv1Var);
        }
        Object obj3 = n41Var.d;
        int i2 = n41Var.e;
        if (i2 != 0) {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object obj4 = n41Var.c;
            ox1 ox1Var2 = n41Var.b;
            try {
                lg7.H(obj3);
                objJ = obj4;
                ox1Var = ox1Var2;
                pe4.y(ox1Var, objJ);
                return obj3;
            } catch (Throwable th) {
                objJ = obj4;
                ox1Var = ox1Var2;
                th = th;
                pe4.y(ox1Var, objJ);
                throw th;
            }
        }
        lg7.H(obj3);
        objJ = pe4.J(ox1Var, obj2);
        try {
            n41Var.a = obj;
            n41Var.b = ox1Var;
            n41Var.c = objJ;
            n41Var.e = 1;
            sk7 sk7Var = new sk7(n41Var, ox1Var);
            if (qt3Var == null) {
                objInvoke = nc8.r0(qt3Var, obj, sk7Var);
            } else {
                nc8.g(2, qt3Var);
                objInvoke = qt3Var.invoke(obj, sk7Var);
            }
            obj3 = objInvoke;
            Object obj5 = yx1.a;
            if (obj3 == obj5) {
                return obj5;
            }
            pe4.y(ox1Var, objJ);
            return obj3;
        } catch (Throwable th2) {
            th = th2;
            pe4.y(ox1Var, objJ);
            throw th;
        }
    }

    public static String Q() {
        Locale locale = Locale.getDefault();
        StringBuilder sb = new StringBuilder();
        String language = locale.getLanguage();
        if (language != null) {
            sb.append(language);
            String country = locale.getCountry();
            if (country != null) {
                sb.append("-");
                sb.append(country);
            }
        }
        Locale locale2 = Locale.US;
        if (!locale.equals(locale2)) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            String language2 = locale2.getLanguage();
            if (language2 != null) {
                sb.append(language2);
                String country2 = locale2.getCountry();
                if (country2 != null) {
                    sb.append("-");
                    sb.append(country2);
                }
            }
        }
        return sb.toString();
    }

    public static boolean R(Comparator comparator, Collection collection) {
        Object objComparator;
        comparator.getClass();
        collection.getClass();
        if (collection instanceof SortedSet) {
            objComparator = ((SortedSet) collection).comparator();
            if (objComparator == null) {
                objComparator = ad9.a;
            }
        } else {
            if (!(collection instanceof gc9)) {
                return false;
            }
            objComparator = ((gc9) collection).n;
        }
        return comparator.equals(objComparator);
    }

    public static void a(g26 g26Var, int i, short s, short s2, short s3, short s4, short s5) {
        g26Var.a[i] = (short) (wx3.u(s * s3) + wx3.u(wx3.u(s2 * s4) * s5));
        short sU = (short) (wx3.u(s2 * s3) + wx3.u(s * s4));
        g26Var.a[i + 1] = sU;
    }

    public static Set b(String... strArr) {
        return strArr.length == 0 ? Collections.EMPTY_SET : Collections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
    }

    public static bl2 c(jm1 jm1Var) {
        int i;
        el2 el2Var;
        int i2;
        dl2 dl2Var;
        al2 al2Var;
        int i3;
        int i4;
        el2 el2Var2;
        el2 el2Var3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int iR = jm1Var.r();
        int iQ = jm1Var.q();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        dl2 dl2Var2 = new dl2();
        int i12 = 0;
        dl2Var2.a = 0;
        dl2Var2.b = iR;
        dl2Var2.c = 0;
        dl2Var2.d = iQ;
        arrayList2.add(dl2Var2);
        int i13 = iR + iQ;
        int i14 = 1;
        int i15 = (((i13 + 1) / 2) * 2) + 1;
        int[] iArr = new int[i15];
        int i16 = i15 / 2;
        int[] iArr2 = new int[i15];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            dl2 dl2Var3 = (dl2) arrayList2.remove(arrayList2.size() - i14);
            if (dl2Var3.b() >= i14 && dl2Var3.a() >= i14) {
                int iA = ((dl2Var3.a() + dl2Var3.b()) + i14) / 2;
                int i17 = i14 + i16;
                iArr[i17] = dl2Var3.a;
                iArr2[i17] = dl2Var3.b;
                int i18 = i12;
                while (true) {
                    if (i18 >= iA) {
                        i = i16;
                        el2Var = null;
                        break;
                    }
                    int i19 = Math.abs(dl2Var3.b() - dl2Var3.a()) % 2 == i14 ? i14 : i12;
                    int iB = dl2Var3.b() - dl2Var3.a();
                    int i20 = -i18;
                    int i21 = i20;
                    while (true) {
                        if (i21 > i18) {
                            i3 = i12;
                            i = i16;
                            i4 = iA;
                            el2Var2 = null;
                            break;
                        }
                        if (i21 == i20 || (i21 != i18 && iArr[i21 + 1 + i16] > iArr[(i21 - 1) + i16])) {
                            i9 = iArr[i21 + 1 + i16];
                            i10 = i9;
                        } else {
                            i9 = iArr[(i21 - 1) + i16];
                            i10 = i9 + 1;
                        }
                        i = i16;
                        int i22 = ((i10 - dl2Var3.a) + dl2Var3.c) - i21;
                        int i23 = (i18 == 0 || i10 != i9) ? i22 : i22 - 1;
                        int i24 = i21;
                        int i25 = i22;
                        int i26 = i10;
                        i4 = iA;
                        while (i26 < dl2Var3.b && i25 < dl2Var3.d && jm1Var.c(i26, i25)) {
                            i26++;
                            i25++;
                        }
                        iArr[i24 + i] = i26;
                        if (i19 != 0) {
                            int i27 = iB - i24;
                            i11 = i19;
                            if (i27 >= i20 + 1 && i27 <= i18 - 1 && iArr2[i27 + i] <= i26) {
                                el2Var2 = new el2();
                                el2Var2.a = i9;
                                el2Var2.b = i23;
                                el2Var2.c = i26;
                                el2Var2.d = i25;
                                i3 = 0;
                                el2Var2.e = false;
                                break;
                            }
                        } else {
                            i11 = i19;
                        }
                        i21 = i24 + 2;
                        i12 = 0;
                        i16 = i;
                        iA = i4;
                        i19 = i11;
                    }
                    if (el2Var2 != null) {
                        el2Var = el2Var2;
                        break;
                    }
                    int i28 = (dl2Var3.b() - dl2Var3.a()) % 2 == 0 ? 1 : i3;
                    int iB2 = dl2Var3.b() - dl2Var3.a();
                    int i29 = i20;
                    while (true) {
                        if (i29 > i18) {
                            el2Var3 = null;
                            break;
                        }
                        if (i29 == i20 || (i29 != i18 && iArr2[i29 + 1 + i] < iArr2[(i29 - 1) + i])) {
                            i5 = iArr2[i29 + 1 + i];
                            i6 = i5;
                        } else {
                            i5 = iArr2[(i29 - 1) + i];
                            i6 = i5 - 1;
                        }
                        int i30 = dl2Var3.d - ((dl2Var3.b - i6) - i29);
                        int i31 = (i18 == 0 || i6 != i5) ? i30 : i30 + 1;
                        int i32 = i28;
                        while (true) {
                            if (i6 > dl2Var3.a && i30 > dl2Var3.c) {
                                i7 = iB2;
                                if (!jm1Var.c(i6 - 1, i30 - 1)) {
                                    break;
                                }
                                i6--;
                                i30--;
                                iB2 = i7;
                            } else {
                                i7 = iB2;
                                break;
                            }
                        }
                        iArr2[i29 + i] = i6;
                        if (i32 != 0 && (i8 = i7 - i29) >= i20 && i8 <= i18 && iArr[i8 + i] >= i6) {
                            el2Var3 = new el2();
                            el2Var3.a = i6;
                            el2Var3.b = i30;
                            el2Var3.c = i5;
                            el2Var3.d = i31;
                            el2Var3.e = true;
                            break;
                        }
                        i29 += 2;
                        i28 = i32;
                        iB2 = i7;
                    }
                    if (el2Var3 != null) {
                        el2Var = el2Var3;
                        break;
                    }
                    i18++;
                    i16 = i;
                    iA = i4;
                    i14 = 1;
                    i12 = 0;
                }
            } else {
                i = i16;
                el2Var = null;
                break;
            }
            if (el2Var != null) {
                if (el2Var.a() > 0) {
                    int i33 = el2Var.d;
                    int i34 = el2Var.b;
                    int i35 = i33 - i34;
                    int i36 = el2Var.c;
                    int i37 = el2Var.a;
                    int i38 = i36 - i37;
                    if (i35 == i38) {
                        al2Var = new al2(i37, i34, i38);
                    } else if (el2Var.e) {
                        al2Var = new al2(i37, i34, el2Var.a());
                    } else {
                        al2Var = i35 > i38 ? new al2(i37, i34 + 1, el2Var.a()) : new al2(i37 + 1, i34, el2Var.a());
                    }
                    arrayList.add(al2Var);
                }
                if (arrayList3.isEmpty()) {
                    dl2Var = new dl2();
                    i2 = 1;
                } else {
                    i2 = 1;
                    dl2Var = (dl2) arrayList3.remove(arrayList3.size() - 1);
                }
                dl2Var.a = dl2Var3.a;
                dl2Var.c = dl2Var3.c;
                dl2Var.b = el2Var.a;
                dl2Var.d = el2Var.b;
                arrayList2.add(dl2Var);
                dl2Var3.b = dl2Var3.b;
                dl2Var3.d = dl2Var3.d;
                dl2Var3.a = el2Var.c;
                dl2Var3.c = el2Var.d;
                arrayList2.add(dl2Var3);
            } else {
                i2 = 1;
                arrayList3.add(dl2Var3);
            }
            i16 = i;
            i14 = i2;
            i12 = 0;
        }
        Collections.sort(arrayList, d);
        return new bl2(jm1Var, arrayList, iArr, iArr2);
    }

    public static final void d(View view) {
        view.getClass();
        sl8 sl8Var = new sl8(view, null);
        g77 g77Var = new g77();
        g77Var.d = nc8.o(g77Var, g77Var, sl8Var);
        while (g77Var.hasNext()) {
            View view2 = (View) g77Var.next();
            c36 c36Var = (c36) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (c36Var == null) {
                c36Var = new c36();
                view2.setTag(R.id.pooling_container_listener_holder_tag, c36Var);
            }
            ArrayList arrayList = c36Var.a;
            int iZ0 = fl1.z0(arrayList);
            if (-1 < iZ0) {
                arrayList.get(iZ0).getClass();
                e6.d();
                return;
            }
        }
    }

    public static Map e(Map map, Set set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            jb9.j(str, "additional parameter keys cannot be null");
            jb9.j(str2, "additional parameter values cannot be null");
            if (set.contains(str)) {
                c6.f(eq3.k("Parameter ", str, " is directly supported via the authorization request builder, use the builder method instead"));
                return null;
            }
            linkedHashMap.put(str, str2);
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public static Object g(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            c6.f(fz5.j(i, "must be power of 2 between 2^1 and 2^30: "));
            return null;
        }
        if (i <= 256) {
            return new byte[i];
        }
        return i <= 65536 ? new short[i] : new int[i];
    }

    public static final File i(Context context, String str) {
        return new File(context.getApplicationContext().getFilesDir(), "datastore/".concat(str));
    }

    public static final boolean j(String str, String str2) {
        str.getClass();
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (i < str.length()) {
                char cCharAt = str.charAt(i);
                int i4 = i3 + 1;
                if (i3 != 0 || cCharAt == '(') {
                    if (cCharAt == '(') {
                        i2++;
                    } else if (cCharAt == ')' && (i2 = i2 - 1) == 0 && i3 != str.length() - 1) {
                    }
                    i++;
                    i3 = i4;
                }
            }
            if (i2 == 0) {
                return pe4.d(nq7.H0(str.substring(1, str.length() - 1)).toString(), str2);
            }
        }
        return false;
    }

    public static void k(String str, Exception exc) {
        Log.d(str, "", exc);
    }

    public static final String l(Collection collection) {
        collection.getClass();
        return !collection.isEmpty() ? oq7.K(el1.Y0(collection, ",\n", "\n", "\n", null, 56)).concat("},") : " }";
    }

    public static Context m() {
        if (c == null) {
            try {
                Context baseContext = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
                while (baseContext instanceof ContextWrapper) {
                    baseContext = ((ContextWrapper) baseContext).getBaseContext();
                }
                c = baseContext;
            } catch (Exception e2) {
                k("LIBSU", e2);
            }
        }
        return c;
    }

    public static float p(int i, String[] strArr) {
        float f2 = Float.parseFloat(strArr[i]);
        if (f2 >= 0.0f && f2 <= 1.0f) {
            return f2;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f2);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0132  */
    /* JADX WARN: Code duplicated, block: B:59:0x0135  */
    /* JADX WARN: Code duplicated, block: B:60:0x0138  */
    /* JADX WARN: Code duplicated, block: B:63:0x014c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x014d  */
    /* JADX WARN: Instruction removed from duplicated block: B:64:0x014d, please report this as an issue */
    public static ParcelFileDescriptor q(q63 q63Var, int i) throws FileNotFoundException {
        Object next;
        tn2 tn2VarA;
        tn2 tn2VarB;
        String str;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        String path;
        String strV = q63Var.v();
        ArrayList arrayList = new ArrayList();
        kr7[] kr7VarArrD = new kr7("/mnt/media_rw").listFiles();
        if (kr7VarArrD == null) {
            kr7VarArrD = new kr7[0];
        }
        el1.L0(arrayList, kr7VarArrD);
        kr7[] kr7VarArrD2 = new kr7("/storage").listFiles();
        if (kr7VarArrD2 == null) {
            kr7VarArrD2 = new kr7[0];
        }
        el1.L0(arrayList, kr7VarArrD2);
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            path = ((kr7) next).getPath();
            path.getClass();
        } while (!uq7.V(strV, path, false));
        kr7 kr7Var = (kr7) next;
        if (kr7Var == null) {
            g84.f(dj7.l("Couldn't find root for file ", strV, ". Root folders=", el1.Y0(arrayList, null, null, null, null, 63)));
            return null;
        }
        String name = kr7Var.getName();
        if (name == null || name.length() == 0) {
            g84.f(dj7.l("Invalid uuid '", name, "' for ", strV));
            return null;
        }
        tn2 tn2VarC = tn2.c(f13.d(), DocumentsContract.buildTreeDocumentUri("com.android.externalstorage.documents", name.concat(":")));
        if (tn2VarC.g().length == 0) {
            l0.e("Check failed.");
            return null;
        }
        String strV2 = q63Var.v();
        String strI0 = nq7.I0(nq7.z0(strV2, name, strV2), '/');
        Iterator it2 = nq7.x0(nq7.E0('/', strI0, strI0), new String[]{"/"}, 6).iterator();
        while (it2.hasNext()) {
            tn2VarC = tn2VarC != null ? tn2VarC.b((String) it2.next()) : null;
        }
        if (tn2VarC == null) {
            g84.f(xs1.i(q63Var, "Null dfParent for "));
            return null;
        }
        if (i != 2) {
            if (i != 5) {
                tn2VarB = tn2VarC.b(q63Var.p());
                if (tn2VarB == null) {
                    g84.f(xs1.i(q63Var, "df doesn't exist at "));
                    return null;
                }
                if (!pe4.d(tn2VarB.d(), q63Var.p())) {
                    g84.f(eq3.l("df name mismatch (expected:", q63Var.p(), ", actual:", tn2VarB.d(), ")"));
                    return null;
                }
            } else {
                tn2VarA = tn2VarC.b(q63Var.p());
                if (tn2VarA == null && (tn2VarA = tn2VarC.a(q63Var.p())) == null) {
                    q.g("Unable to create df for file ", q63Var, " in parent dir '", tn2VarC.e(), "'");
                    return null;
                }
            }
            if (i != 2) {
                str = "rwt";
            } else if (i != 5) {
                str = JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR;
            } else {
                str = "rw";
            }
            parcelFileDescriptorOpenFileDescriptor = f13.d().getContentResolver().openFileDescriptor(tn2VarB.e(), str);
            if (parcelFileDescriptorOpenFileDescriptor != null) {
                return parcelFileDescriptorOpenFileDescriptor;
            }
            throw new IllegalStateException(("Null pfd for " + q63Var + ", mode=" + i).toString());
        }
        if (q63Var.j()) {
            q63Var.h();
        }
        tn2VarA = tn2VarC.a(q63Var.p());
        if (tn2VarA == null) {
            q.g("Unable to create df for file ", q63Var, " in parent dir '", tn2VarC.e(), "'");
            return null;
        }
        tn2VarB = tn2VarA;
        if (i != 2) {
            str = "rwt";
        } else if (i != 5) {
            str = JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR;
        } else {
            str = "rw";
        }
        parcelFileDescriptorOpenFileDescriptor = f13.d().getContentResolver().openFileDescriptor(tn2VarB.e(), str);
        if (parcelFileDescriptorOpenFileDescriptor != null) {
            return parcelFileDescriptorOpenFileDescriptor;
        }
        throw new IllegalStateException(("Null pfd for " + q63Var + ", mode=" + i).toString());
    }

    public static final boolean r(Collection collection) {
        collection.getClass();
        return collection.contains(q05.CLOUD);
    }

    public static final boolean s(Collection collection) {
        collection.getClass();
        return collection.contains(q05.DEVICE);
    }

    public static final boolean t(Collection collection) {
        collection.getClass();
        return collection.size() == 1 && collection.contains(q05.CLOUD);
    }

    public static final boolean v(Collection collection) {
        collection.getClass();
        return collection.size() == 1 && collection.contains(q05.DEVICE);
    }

    public static final int w(p50 p50Var, Object obj, int i) {
        int i2 = p50Var.c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int iE = g67.e(i2, i, p50Var.a);
            if (iE < 0 || pe4.d(obj, p50Var.b[iE])) {
                return iE;
            }
            int i3 = iE + 1;
            while (i3 < i2 && p50Var.a[i3] == i) {
                if (pe4.d(obj, p50Var.b[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = iE - 1; i4 >= 0 && p50Var.a[i4] == i; i4--) {
                if (pe4.d(obj, p50Var.b[i4])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (IndexOutOfBoundsException unused) {
            q.a();
            return 0;
        }
    }

    public static synchronized Boolean x() {
        int i = b;
        if (i >= 0) {
            if (i == 0) {
                return Boolean.FALSE;
            }
            if (i != 2) {
                return null;
            }
            return Boolean.TRUE;
        }
        if (Process.myUid() == 0) {
            b = 2;
            return Boolean.TRUE;
        }
        for (String str : System.getenv("PATH").split(":")) {
            if (new File(str, "su").canExecute()) {
                b = 1;
                return null;
            }
        }
        b = 0;
        return Boolean.FALSE;
    }

    public static boolean z(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public abstract qn5 D();

    public abstract void I(boolean z);

    public abstract void J(boolean z);

    public abstract TransformationMethod P(TransformationMethod transformationMethod);

    public abstract em4 f(c87 c87Var, gc8 gc8Var);

    public abstract sc8 h(v77 v77Var, gc8 gc8Var);

    public abstract InputFilter[] n(InputFilter[] inputFilterArr);

    public abstract ji8 o(m61 m61Var);

    public abstract boolean y();
}
