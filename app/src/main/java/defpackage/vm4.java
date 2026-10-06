package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.appbar.MaterialToolbar;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vm4 {
    public static final Object[] a = new Object[0];
    public static final cz4 b = new cz4(9);
    public static final y09 c = new y09(3);

    public static void A(HomeActivity homeActivity, boolean z) {
        g00 g00Var = g00.a;
        if (g00.r().hasSystemFeature("android.hardware.telephony")) {
            Intent intentPutExtra = new Intent(homeActivity, (Class<?>) MessagesDashActivity.class).putExtra("highlight_cloud_card", z);
            intentPutExtra.getClass();
            homeActivity.startActivity(intentPutExtra);
        } else {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, "Feature not supported on this device");
        }
    }

    public static void B(il0 il0Var, dd1 dd1Var, int i) {
        il0Var.getClass();
        dd1Var.getClass();
        Intent intentPutExtra = new Intent(il0Var, (Class<?>) CsActivity.class).putExtra("cloud_type", dd1Var);
        intentPutExtra.getClass();
        il0Var.startActivityForResult(intentPutExtra, i);
    }

    public static final Object[] C(Collection collection) {
        int size = collection.size();
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArrCopyOf = new Object[size];
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    objArrCopyOf[i] = it.next();
                    if (i2 >= objArrCopyOf.length) {
                        if (!it.hasNext()) {
                            return objArrCopyOf;
                        }
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        if (i3 <= i2) {
                            i3 = 2147483645;
                            if (i2 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                    } else if (!it.hasNext()) {
                        return Arrays.copyOf(objArrCopyOf, i2);
                    }
                    i = i2;
                }
            }
        }
        return a;
    }

    public static final Object[] D(Collection collection, Object[] objArr) {
        Object[] objArrCopyOf;
        int size = collection.size();
        int i = 0;
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                if (size <= objArr.length) {
                    objArrCopyOf = objArr;
                } else {
                    Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                    objNewInstance.getClass();
                    objArrCopyOf = (Object[]) objNewInstance;
                }
                while (true) {
                    int i2 = i + 1;
                    objArrCopyOf[i] = it.next();
                    if (i2 >= objArrCopyOf.length) {
                        if (!it.hasNext()) {
                            return objArrCopyOf;
                        }
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        if (i3 <= i2) {
                            i3 = 2147483645;
                            if (i2 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                    } else if (!it.hasNext()) {
                        if (objArrCopyOf != objArr) {
                            return Arrays.copyOf(objArrCopyOf, i2);
                        }
                        objArr[i2] = null;
                        return objArr;
                    }
                    i = i2;
                }
            } else if (objArr.length > 0) {
                objArr[0] = null;
            }
        } else if (objArr.length > 0) {
            objArr[0] = null;
            return objArr;
        }
        return objArr;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0095  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x00a0, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public static String E(String str) {
        String str2;
        Object obj;
        boolean z;
        String strSubstring;
        int i;
        Integer numW;
        int iIntValue;
        Object bn6Var;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        str.getClass();
        if (!nq7.a0(str, '&')) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        int i2 = 0;
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '&') {
                sb.append(cCharAt);
                i2++;
            } else {
                i2++;
                int iG0 = nq7.g0(';', i2, 4, str);
                if (iG0 == -1) {
                    sb.append(cCharAt);
                } else {
                    String strSubstring2 = str.substring(i2, iG0);
                    int iHashCode = strSubstring2.hashCode();
                    if (iHashCode != 3309) {
                        if (iHashCode != 3464) {
                            if (iHashCode != 96708) {
                                if (iHashCode != 3000915) {
                                    if (iHashCode == 3482377 && strSubstring2.equals("quot")) {
                                        str7 = "\"";
                                    } else {
                                        obj = null;
                                        if (nq7.y0(strSubstring2, '#')) {
                                            if (!uq7.V(strSubstring2, "#x", false) || uq7.V(strSubstring2, "#X", false)) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            strSubstring = strSubstring2.substring(z ? 2 : 1);
                                            if (strSubstring.length() != 0) {
                                                if (z) {
                                                    i = 16;
                                                } else {
                                                    i = 10;
                                                }
                                                numW = uq7.W(i, strSubstring);
                                                if (numW != null) {
                                                    iIntValue = numW.intValue();
                                                    if (Character.isValidCodePoint(iIntValue)) {
                                                        try {
                                                            char[] chars = Character.toChars(iIntValue);
                                                            chars.getClass();
                                                            bn6Var = new String(chars);
                                                        } catch (Throwable th) {
                                                            bn6Var = new bn6(th);
                                                        }
                                                        obj = (String) (bn6Var instanceof bn6 ? null : bn6Var);
                                                    }
                                                }
                                            }
                                        }
                                        str3 = obj;
                                    }
                                } else if (strSubstring2.equals("apos")) {
                                    str6 = "'";
                                } else {
                                    obj = null;
                                    if (nq7.y0(strSubstring2, '#')) {
                                        if (uq7.V(strSubstring2, "#x", false)) {
                                            z = true;
                                        } else {
                                            z = true;
                                        }
                                        strSubstring = strSubstring2.substring(z ? 2 : 1);
                                        if (strSubstring.length() != 0) {
                                            if (z) {
                                                i = 16;
                                            } else {
                                                i = 10;
                                            }
                                            numW = uq7.W(i, strSubstring);
                                            if (numW != null) {
                                                iIntValue = numW.intValue();
                                                if (Character.isValidCodePoint(iIntValue)) {
                                                    char[] chars2 = Character.toChars(iIntValue);
                                                    chars2.getClass();
                                                    bn6Var = new String(chars2);
                                                    obj = (String) (bn6Var instanceof bn6 ? null : bn6Var);
                                                }
                                            }
                                        }
                                    }
                                    str3 = obj;
                                }
                            } else if (strSubstring2.equals("amp")) {
                                str5 = "&";
                            } else {
                                obj = null;
                                if (nq7.y0(strSubstring2, '#')) {
                                    if (uq7.V(strSubstring2, "#x", false)) {
                                        z = true;
                                    } else {
                                        z = true;
                                    }
                                    strSubstring = strSubstring2.substring(z ? 2 : 1);
                                    if (strSubstring.length() != 0) {
                                        if (z) {
                                            i = 16;
                                        } else {
                                            i = 10;
                                        }
                                        numW = uq7.W(i, strSubstring);
                                        if (numW != null) {
                                            iIntValue = numW.intValue();
                                            if (Character.isValidCodePoint(iIntValue)) {
                                                char[] chars3 = Character.toChars(iIntValue);
                                                chars3.getClass();
                                                bn6Var = new String(chars3);
                                                obj = (String) (bn6Var instanceof bn6 ? null : bn6Var);
                                            }
                                        }
                                    }
                                }
                                str3 = obj;
                            }
                        } else if (strSubstring2.equals("lt")) {
                            str4 = "<";
                        } else {
                            obj = null;
                            if (nq7.y0(strSubstring2, '#')) {
                                if (uq7.V(strSubstring2, "#x", false)) {
                                    z = true;
                                } else {
                                    z = true;
                                }
                                strSubstring = strSubstring2.substring(z ? 2 : 1);
                                if (strSubstring.length() != 0) {
                                    if (z) {
                                        i = 16;
                                    } else {
                                        i = 10;
                                    }
                                    numW = uq7.W(i, strSubstring);
                                    if (numW != null) {
                                        iIntValue = numW.intValue();
                                        if (Character.isValidCodePoint(iIntValue)) {
                                            char[] chars4 = Character.toChars(iIntValue);
                                            chars4.getClass();
                                            bn6Var = new String(chars4);
                                            obj = (String) (bn6Var instanceof bn6 ? null : bn6Var);
                                        }
                                    }
                                }
                            }
                            str3 = obj;
                        }
                    } else if (strSubstring2.equals("gt")) {
                        str2 = ">";
                    } else {
                        obj = null;
                        if (nq7.y0(strSubstring2, '#')) {
                            if (uq7.V(strSubstring2, "#x", false)) {
                                z = true;
                            } else {
                                z = true;
                            }
                            strSubstring = strSubstring2.substring(z ? 2 : 1);
                            if (strSubstring.length() != 0) {
                                if (z) {
                                    i = 16;
                                } else {
                                    i = 10;
                                }
                                numW = uq7.W(i, strSubstring);
                                if (numW != null) {
                                    iIntValue = numW.intValue();
                                    if (Character.isValidCodePoint(iIntValue)) {
                                        char[] chars5 = Character.toChars(iIntValue);
                                        chars5.getClass();
                                        bn6Var = new String(chars5);
                                        obj = (String) (bn6Var instanceof bn6 ? null : bn6Var);
                                    }
                                }
                            }
                        }
                        str3 = obj;
                    }
                    if (str3 == 0) {
                        str3 = str2;
                        str3 = str4;
                        str3 = str5;
                        str3 = str6;
                        str3 = str7;
                        sb.append(cCharAt);
                    } else {
                        str3 = str2;
                        str3 = str4;
                        str3 = str5;
                        str3 = str6;
                        str3 = str7;
                        sb.append(str3);
                        i2 = iG0 + 1;
                    }
                }
            }
        }
        return sb.toString();
    }

    public static String F(String str, Object... objArr) {
        int length;
        int iIndexOf;
        StringBuilder sb = new StringBuilder(str.length() + (objArr.length * 16));
        int i = 0;
        int i2 = 0;
        while (true) {
            length = objArr.length;
            if (i >= length || (iIndexOf = str.indexOf("%s", i2)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i2, iIndexOf);
            sb.append(I(objArr[i]));
            i2 = iIndexOf + 2;
            i++;
        }
        sb.append((CharSequence) str, i2, str.length());
        if (i < length) {
            String str2 = " [";
            while (i < objArr.length) {
                sb.append(str2);
                sb.append(I(objArr[i]));
                i++;
                str2 = ", ";
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static String I(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            String strN = eq3.n(new StringBuilder(name.length() + 1 + String.valueOf(hexString).length()), name, "@", hexString);
            Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strN), (Throwable) e);
            String name2 = e.getClass().getName();
            StringBuilder sb = new StringBuilder(strN.length() + 8 + name2.length() + 1);
            xs1.t(sb, "<", strN, " threw ", name2);
            sb.append(">");
            return sb.toString();
        }
    }

    public static final long a(List list, ex exVar, long j) {
        int iIndexOf = list.indexOf(exVar);
        if (iIndexOf < 0 || list.isEmpty()) {
            return 0L;
        }
        return (j / ((long) list.size())) + (((long) iIndexOf) < j % ((long) list.size()) ? 1L : 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r1v0, types: [bn6] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.LinkedHashMap, java.util.Map] */
    public static final Map b(q63 q63Var, boolean z) {
        ?? bn6Var;
        Object next;
        pv2 pv2Var = pv2.a;
        if (!z) {
            return pv2Var;
        }
        try {
            HashSet hashSet = mz6.a;
            List<xy6> list = mz6.t(q63Var).i;
            int iQ0 = x65.q0(hl1.G0(list, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            bn6Var = new LinkedHashMap(iQ0);
            for (xy6 xy6Var : list) {
                String str = xy6Var.a;
                Iterator it = fl1.A0(Long.valueOf(xy6Var.g), Long.valueOf(xy6Var.f), Long.valueOf(xy6Var.e)).iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((Number) next).longValue() <= 0);
                bn6Var.put(str, Long.valueOf(io4.h((Long) next)));
            }
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        ?? r0 = pv2Var;
        if (!(bn6Var instanceof bn6)) {
            r0 = bn6Var;
        }
        return (Map) r0;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0041  */
    /* JADX WARN: Code duplicated, block: B:25:0x0043 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:29:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x004e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0050 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x0058  */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    public static boolean c(int i, Rect rect, Rect rect2, Rect rect3) {
        int iW;
        int i2;
        int i3;
        boolean zD = d(i, rect, rect2);
        if (!d(i, rect, rect3) && zD) {
            if (i != 17) {
                if (i != 33) {
                    if (i != 66) {
                        if (i != 130) {
                            c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                            return false;
                        }
                        if (rect.bottom <= rect3.top) {
                            if (i != 17 && i != 66) {
                                iW = w(i, rect, rect2);
                                if (i != 17) {
                                    i2 = rect.left;
                                    i3 = rect3.left;
                                } else if (i != 33) {
                                    i2 = rect.top;
                                    i3 = rect3.top;
                                } else if (i != 66) {
                                    i2 = rect3.right;
                                    i3 = rect.right;
                                } else {
                                    if (i == 130) {
                                        c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                                        return false;
                                    }
                                    i2 = rect3.bottom;
                                    i3 = rect.bottom;
                                }
                                if (iW < Math.max(1, i2 - i3)) {
                                }
                            }
                        }
                    } else if (rect.right <= rect3.left) {
                        if (i != 17) {
                            iW = w(i, rect, rect2);
                            if (i != 17) {
                                i2 = rect.left;
                                i3 = rect3.left;
                            } else if (i != 33) {
                                i2 = rect.top;
                                i3 = rect3.top;
                            } else if (i != 66) {
                                i2 = rect3.right;
                                i3 = rect.right;
                            } else {
                                if (i == 130) {
                                    c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                                    return false;
                                }
                                i2 = rect3.bottom;
                                i3 = rect.bottom;
                            }
                            if (iW < Math.max(1, i2 - i3)) {
                            }
                        }
                    }
                } else if (rect.top >= rect3.bottom) {
                    if (i != 17) {
                        iW = w(i, rect, rect2);
                        if (i != 17) {
                            i2 = rect.left;
                            i3 = rect3.left;
                        } else if (i != 33) {
                            i2 = rect.top;
                            i3 = rect3.top;
                        } else if (i != 66) {
                            i2 = rect3.right;
                            i3 = rect.right;
                        } else {
                            if (i == 130) {
                                c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                                return false;
                            }
                            i2 = rect3.bottom;
                            i3 = rect.bottom;
                        }
                        if (iW < Math.max(1, i2 - i3)) {
                        }
                    }
                }
            } else if (rect.left >= rect3.right) {
                if (i != 17) {
                    iW = w(i, rect, rect2);
                    if (i != 17) {
                        i2 = rect.left;
                        i3 = rect3.left;
                    } else if (i != 33) {
                        i2 = rect.top;
                        i3 = rect3.top;
                    } else if (i != 66) {
                        i2 = rect3.right;
                        i3 = rect.right;
                    } else {
                        if (i == 130) {
                            c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                            return false;
                        }
                        i2 = rect3.bottom;
                        i3 = rect.bottom;
                    }
                    if (iW < Math.max(1, i2 - i3)) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0025  */
    public static boolean d(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return false;
                    }
                } else if (rect2.bottom < rect.top) {
                }
            }
            if (rect2.right >= rect.left && rect2.left <= rect.right) {
                return true;
            }
        } else if (rect2.bottom < rect.top && rect2.top <= rect.bottom) {
            return true;
        }
        return false;
    }

    public static void e(q2 q2Var) {
        String str;
        int i = q2Var.b;
        if (i == 128) {
            return;
        }
        if (i == 64) {
            str = "APPLICATION";
        } else if (i != 128) {
            str = i != 192 ? "UNIVERSAL" : "PRIVATE";
        } else {
            str = "CONTEXT";
        }
        l0.e(dj7.l("Expected ", "CONTEXT", " tag but found ", str));
    }

    public static void f(Class cls, ArrayList arrayList) {
        for (Class<?> cls2 : cls.getInterfaces()) {
            arrayList.add(cls2);
            f(cls2, arrayList);
        }
    }

    public static final long g(long j, or2 or2Var) {
        long j2;
        int iOrdinal = or2Var.ordinal();
        if (iOrdinal == 2) {
            j2 = 1;
        } else if (iOrdinal == 3) {
            j2 = 1000;
        } else if (iOrdinal == 4) {
            j2 = 60000;
        } else if (iOrdinal == 5) {
            j2 = 3600000;
        } else {
            if (iOrdinal != 6) {
                l0.k(or2Var, "Wrong unit for millisMultiplier: ");
                return 0L;
            }
            j2 = 86400000;
        }
        if (j == 0) {
            return 0L;
        }
        if (j == 1) {
            if (j2 <= 4611686018427387903L) {
                return j2;
            }
        } else if (j2 != 1) {
            int iNumberOfLeadingZeros = (128 - Long.numberOfLeadingZeros(j)) - Long.numberOfLeadingZeros(j2);
            if (iNumberOfLeadingZeros < 63) {
                return j * j2;
            }
            if (iNumberOfLeadingZeros <= 63) {
                long j3 = j * j2;
                if (j3 <= 4611686018427387903L) {
                    return j3;
                }
            }
        } else if (j <= 4611686018427387903L) {
            return j;
        }
        return 4611686018427387903L;
    }

    public static un1 h(String str, String str2) {
        wd0 wd0Var = new wd0(str, str2);
        tn1 tn1VarB = un1.b(wd0.class);
        tn1VarB.e = 1;
        tn1VarB.f = new rn1(wd0Var, 0);
        return tn1VarB.b();
    }

    public static ki1 i(dd1 dd1Var, String str, CloudCredentials cloudCredentials) {
        dd1Var.getClass();
        str.getClass();
        mi1 mi1Var = null;
        if (cloudCredentials != null) {
            int i = li1.a[dd1Var.ordinal()];
            if (i == 1) {
                xq6 xq6Var = xq6.j;
                xq6 xq6VarE = fo8.e(cloudCredentials.getProviderPresetId());
                if (xq6VarE == null) {
                    xq6VarE = fo8.h(cloudCredentials.getServer());
                }
                if (!pe4.d(xq6VarE, xq6.j)) {
                    mi1Var = new mi1(R.string.s3_provider, xq6VarE.c, xq6VarE.b);
                }
            } else if (i == 2) {
                oq8 oq8Var = oq8.i;
                oq8 oq8VarJ = xh8.j(cloudCredentials.getProviderPresetId());
                if (oq8VarJ == null) {
                    oq8VarJ = xh8.t(cloudCredentials.getServer());
                }
                if (!pe4.d(oq8VarJ, oq8.i)) {
                    mi1Var = new mi1(R.string.webdav_provider, oq8VarJ.c, oq8VarJ.b);
                }
            }
        }
        if (mi1Var == null) {
            return new ki1(dd1Var.getBrandingIconRes(), str, str, false);
        }
        String str2 = mi1Var.b;
        return new ki1(mi1Var.c, dj7.k(str, ": ", str2), str2, true);
    }

    public static un1 j(String str, kt4 kt4Var) {
        tn1 tn1VarB = un1.b(wd0.class);
        tn1VarB.e = 1;
        tn1VarB.a(ji2.b(Context.class));
        tn1VarB.f = new iq0(str, kt4Var);
        return tn1VarB.b();
    }

    public static v17 k(long[] jArr) {
        jArr.getClass();
        if (jArr.length == 20) {
            return new v17(jArr[0], jArr[1], jArr[2], jArr[3], jArr[4], jArr[5], jArr[6], jArr[7], jArr[8], jArr[9], jArr[10], jArr[11], jArr[12], jArr[13], jArr[14], jArr[15], jArr[16], jArr[17], jArr[18], jArr[19]);
        }
        f6.g(fz5.j(jArr.length, "Unexpected SwiftTar extract stats length: "));
        return null;
    }

    public static Annotation l(AnnotatedElement annotatedElement, Class cls, HashSet hashSet) {
        if (hashSet.contains(annotatedElement)) {
            return null;
        }
        hashSet.add(annotatedElement);
        Annotation annotation = annotatedElement.getAnnotation(cls);
        if (annotation != null) {
            return annotation;
        }
        for (Annotation annotation2 : annotatedElement.getAnnotations()) {
            Annotation annotationL = l(annotation2.annotationType(), cls, hashSet);
            if (annotationL != null) {
                return annotationL;
            }
        }
        return null;
    }

    public static Annotation m(GenericDeclaration genericDeclaration, Class cls) {
        return l(genericDeclaration, cls, new HashSet());
    }

    public static final int n(p77 p77Var, ni4 ni4Var, String str) {
        p77Var.getClass();
        ni4Var.getClass();
        str.getClass();
        dj4 dj4Var = ni4Var.a;
        dj4Var.getClass();
        y(ni4Var, p77Var);
        int iD = p77Var.d(str);
        if (iD != -3 || !dj4Var.d) {
            return iD;
        }
        km8 km8Var = ni4Var.c;
        qf qfVar = new qf(15, p77Var, ni4Var);
        km8Var.getClass();
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) km8Var.a;
        Map map = (Map) concurrentHashMap.get(p77Var);
        cz4 cz4Var = b;
        Object obj = map != null ? map.get(cz4Var) : null;
        Object objInvoke = obj != null ? obj : null;
        if (objInvoke == null) {
            objInvoke = qfVar.invoke();
            Object concurrentHashMap2 = concurrentHashMap.get(p77Var);
            if (concurrentHashMap2 == null) {
                concurrentHashMap2 = new ConcurrentHashMap(2);
                concurrentHashMap.put(p77Var, concurrentHashMap2);
            }
            ((Map) concurrentHashMap2).put(cz4Var, objInvoke);
        }
        Integer num = (Integer) ((Map) objInvoke).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static void o(Class cls, ArrayList arrayList) {
        try {
            for (Method method : cls.getDeclaredMethods()) {
                if (m(method, o24.class) != null) {
                    arrayList.add(method);
                }
            }
        } catch (Exception unused) {
        }
        if (cls.equals(Object.class)) {
            return;
        }
        o(cls.getSuperclass(), arrayList);
    }

    public static byte[] p(ev6 ev6Var) {
        zu6 zu6VarB = ev6Var.b();
        int i = zu6VarB.c;
        zu6VarB.c = ev6Var.c().b();
        int iC = ev6Var.c().c() - ev6Var.c().b();
        byte[] bArr = new byte[iC];
        try {
            zu6VarB.o(bArr, iC);
            zu6VarB.c = i;
            return bArr;
        } catch (iw0 e) {
            throw new gv6("Cannot read packet bytes from buffer", e);
        }
    }

    public static String q(int i, int i2) {
        String str;
        if (i == 64) {
            str = "[APPLICATION ";
        } else if (i != 128) {
            str = i != 192 ? "[UNIVERSAL " : "[PRIVATE ";
        } else {
            str = "[CONTEXT ";
        }
        return xs1.h(i2, str, "]");
    }

    public static ArrayList r(MaterialToolbar materialToolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < materialToolbar.getChildCount(); i++) {
            View childAt = materialToolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    public static byte[] s(int i, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i) {
            return byteArray;
        }
        if (byteArray.length < i) {
            byte[] bArr = new byte[i];
            System.arraycopy(byteArray, 0, bArr, i - byteArray.length, byteArray.length);
            return bArr;
        }
        if (byteArray.length == i + 1 && byteArray[0] == 0) {
            return Arrays.copyOfRange(byteArray, 1, byteArray.length);
        }
        c6.f(xs1.h(i, "value is too large to be represented in ", " bytes"));
        return null;
    }

    public static boolean t(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            if ((i2 > i3 || rect.left >= i3) && rect.left > rect2.left) {
                return true;
            }
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            if ((i4 > i5 || rect.top >= i5) && rect.top > rect2.top) {
                return true;
            }
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                return true;
            }
        } else {
            if (i != 130) {
                c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            int i8 = rect.top;
            int i9 = rect2.top;
            if ((i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom) {
                return true;
            }
        }
        return false;
    }

    public static boolean v(byte b2) {
        return b2 > -65;
    }

    public static int w(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else {
            if (i != 130) {
                c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return 0;
            }
            i2 = rect2.top;
            i3 = rect.bottom;
        }
        return Math.max(0, i2 - i3);
    }

    public static int x(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return 0;
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    public static final void y(ni4 ni4Var, p77 p77Var) {
        p77Var.getClass();
        ni4Var.getClass();
        if (pe4.d(p77Var.e(), dr7.g)) {
            ni4Var.a.getClass();
        }
    }

    public static final Object z(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    public abstract bd9 G();

    public abstract Integer H();
}
