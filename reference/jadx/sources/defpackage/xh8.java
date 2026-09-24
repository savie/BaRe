package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.SftpATTRS;
import com.swiftapps.sba.SbaLibaegisCryptoNative;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata;
import org.swiftapps.swiftbackup.apkshare.SaiApksMetadata;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.common.V;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xh8 implements aj8 {
    public static volatile Handler c;
    public static Method n;
    public static boolean p;
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final char[] b = new char[64];
    public static final jv1[] d = new jv1[0];
    public static final qz2 e = new qz2();
    public static final rz2 f = new rz2();
    public static final Object k = new Object();

    public static SaiApksMetadata A(List list) {
        Object next;
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((q63) next).p().equalsIgnoreCase("meta.sai_v2.json"));
        q63 q63Var = (q63) next;
        if (q63Var == null) {
            return null;
        }
        gv7 gv7Var = w14.a;
        return (SaiApksMetadata) w14.b(q63Var, SaiApksMetadata.class, true);
    }

    public static ApkSharePackageMetadata B(List list) {
        Object next;
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((q63) next).p().equalsIgnoreCase("meta.swiftbackup_v1.json"));
        q63 q63Var = (q63) next;
        if (q63Var == null) {
            return null;
        }
        gv7 gv7Var = w14.a;
        return (ApkSharePackageMetadata) w14.b(q63Var, ApkSharePackageMetadata.class, true);
    }

    public static void C(ViewGroup viewGroup, float f2) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof c95) {
            ((c95) background).s(f2);
        }
    }

    public static void D(View view, c95 c95Var) {
        xt2 xt2Var = c95Var.b.b;
        if (xt2Var == null || !xt2Var.a) {
            return;
        }
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ((View) parent).getElevation();
        }
        a95 a95Var = c95Var.b;
        if (a95Var.m != elevation) {
            a95Var.m = elevation;
            c95Var.E();
        }
    }

    public static void E(ViewGroup viewGroup) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof c95) {
            D(viewGroup, (c95) background);
        }
    }

    public static boolean F(int i, int i2, int i3, int i4) {
        return (i3 == 1 || i3 == 2 || (i3 == 4 && i != 2)) || (i4 == 1 || i4 == 2 || (i4 == 4 && i2 != 2));
    }

    public static final ArrayList G(g23[] g23VarArr) {
        ArrayList arrayList = new ArrayList();
        for (g23 g23Var : g23VarArr) {
            if (!pe4.d(g23Var.d, ".") && !pe4.d(g23Var.d, "..")) {
                arrayList.add(g23Var);
            }
        }
        return arrayList;
    }

    public static String H(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b2 : bArr) {
            if (b2 == 34) {
                sb.append("\\\"");
            } else if (b2 == 39) {
                sb.append("\\'");
            } else if (b2 != 92) {
                switch (b2) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (b2 < 32 || b2 > 126) {
                            sb.append('\\');
                            sb.append((char) (((b2 >>> 6) & 3) + 48));
                            sb.append((char) (((b2 >>> 3) & 7) + 48));
                            sb.append((char) ((b2 & 7) + 48));
                        } else {
                            sb.append((char) b2);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static void I(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.g(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            boolean z2 = c79.b;
            i3++;
        }
        c79Var.o(i3);
        while (i2 < list.size()) {
            c79Var.a(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void J(Object obj, Object obj2) {
        k79 k79Var = (k79) obj;
        l89 l89Var = k79Var.zzb;
        l89 l89Var2 = ((k79) obj2).zzb;
        l89 l89Var3 = l89.f;
        if (!l89Var3.equals(l89Var2)) {
            if (l89Var3.equals(l89Var)) {
                int i = l89Var.a + l89Var2.a;
                int[] iArrCopyOf = Arrays.copyOf(l89Var.b, i);
                System.arraycopy(l89Var2.b, 0, iArrCopyOf, l89Var.a, l89Var2.a);
                Object[] objArrCopyOf = Arrays.copyOf(l89Var.c, i);
                System.arraycopy(l89Var2.c, 0, objArrCopyOf, l89Var.a, l89Var2.a);
                l89Var = new l89(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                l89Var.getClass();
                if (!l89Var2.equals(l89Var3)) {
                    if (!l89Var.e) {
                        x5.e();
                        return;
                    }
                    int i2 = l89Var.a + l89Var2.a;
                    l89Var.b(i2);
                    System.arraycopy(l89Var2.b, 0, l89Var.b, l89Var.a, l89Var2.a);
                    System.arraycopy(l89Var2.c, 0, l89Var.c, l89Var.a, l89Var2.a);
                    l89Var.a = i2;
                }
            }
        }
        k79Var.zzb = l89Var;
    }

    public static boolean K(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int L(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = 0;
        for (int i = 0; i < size; i++) {
            iR += c79.r(((Integer) list.get(i)).intValue());
        }
        return iR;
    }

    public static void M(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                double dDoubleValue = ((Double) list.get(i2)).doubleValue();
                c79Var.getClass();
                c79Var.d(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            boolean z2 = c79.b;
            i3 += 8;
        }
        c79Var.o(i3);
        while (i2 < list.size()) {
            c79Var.h(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void N(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.k(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int iR = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iR += c79.r(((Integer) list.get(i3)).intValue());
        }
        c79Var.o(iR);
        while (i2 < list.size()) {
            c79Var.j(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void O(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.c(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            boolean z2 = c79.b;
            i3 += 4;
        }
        c79Var.o(i3);
        while (i2 < list.size()) {
            c79Var.b(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static int P(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = 0;
        for (int i = 0; i < size; i++) {
            iR += c79.r(((Integer) list.get(i)).intValue());
        }
        return iR;
    }

    public static void Q(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.d(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            boolean z2 = c79.b;
            i3 += 8;
        }
        c79Var.o(i3);
        while (i2 < list.size()) {
            c79Var.h(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static boolean R(byte b2) {
        return b2 > -65;
    }

    public static int S(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = 0;
        for (int i = 0; i < size; i++) {
            iR += c79.r(((Long) list.get(i)).longValue());
        }
        return iR;
    }

    public static void T(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                float fFloatValue = ((Float) list.get(i2)).floatValue();
                c79Var.getClass();
                c79Var.c(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            boolean z2 = c79.b;
            i3 += 4;
        }
        c79Var.o(i3);
        while (i2 < list.size()) {
            c79Var.b(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static int U(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iT = 0;
        for (int i = 0; i < size; i++) {
            int iIntValue = ((Integer) list.get(i)).intValue();
            iT += c79.t((iIntValue >> 31) ^ (iIntValue << 1));
        }
        return iT;
    }

    public static void V(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.k(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int iR = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iR += c79.r(((Integer) list.get(i3)).intValue());
        }
        c79Var.o(iR);
        while (i2 < list.size()) {
            c79Var.j(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static int W(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = 0;
        for (int i = 0; i < size; i++) {
            long jLongValue = ((Long) list.get(i)).longValue();
            iR += c79.r((jLongValue >> 63) ^ (jLongValue << 1));
        }
        return iR;
    }

    public static void X(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.l(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int iR = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iR += c79.r(((Long) list.get(i3)).longValue());
        }
        c79Var.o(iR);
        while (i2 < list.size()) {
            c79Var.m(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static int Y(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iT = 0;
        for (int i = 0; i < size; i++) {
            iT += c79.t(((Integer) list.get(i)).intValue());
        }
        return iT;
    }

    public static void Z(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.c(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            boolean z2 = c79.b;
            i3 += 4;
        }
        c79Var.o(i3);
        while (i2 < list.size()) {
            c79Var.b(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static qn5 a(Object obj, qn5 qn5Var) {
        HashMap map;
        try {
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                if (map2.containsKey(".priority")) {
                    qn5Var = z(null, map2.get(".priority"));
                }
                if (map2.containsKey(".value")) {
                    obj = map2.get(".value");
                }
            }
            if (obj == null) {
                return qv2.e;
            }
            if (obj instanceof String) {
                return new fq7((String) obj, qn5Var);
            }
            if (obj instanceof Long) {
                return new r15((Long) obj, qn5Var);
            }
            if (obj instanceof Integer) {
                return new r15(Long.valueOf(((Integer) obj).intValue()), qn5Var);
            }
            if (obj instanceof Double) {
                return new co2((Double) obj, qn5Var);
            }
            if (obj instanceof Boolean) {
                return new nt0((Boolean) obj, qn5Var);
            }
            if (!(obj instanceof Map) && !(obj instanceof List)) {
                throw new xc2("Failed to parse node with class " + obj.getClass().toString());
            }
            if (obj instanceof Map) {
                Map map3 = (Map) obj;
                if (map3.containsKey(".sv")) {
                    return new lg2(map3, qn5Var);
                }
                map = new HashMap(map3.size());
                for (String str : map3.keySet()) {
                    if (!str.startsWith(".")) {
                        qn5 qn5VarA = a(map3.get(str), qv2.e);
                        if (!qn5VarA.isEmpty()) {
                            map.put(m61.b(str), qn5VarA);
                        }
                    }
                }
            } else {
                List list = (List) obj;
                map = new HashMap(list.size());
                for (int i = 0; i < list.size(); i++) {
                    String str2 = "" + i;
                    qn5 qn5VarA2 = a(list.get(i), qv2.e);
                    if (!qn5VarA2.isEmpty()) {
                        map.put(m61.b(str2), qn5VarA2);
                    }
                }
            }
            return map.isEmpty() ? qv2.e : new q61(jd4.p(map), qn5Var);
        } catch (ClassCastException e2) {
            throw new xc2("Failed to parse node", e2);
        }
    }

    public static int a0(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = 0;
        for (int i = 0; i < size; i++) {
            iR += c79.r(((Long) list.get(i)).longValue());
        }
        return iR;
    }

    public static final ys3 b(CloudCredentials cloudCredentials) {
        URI uriCreate = URI.create(cloudCredentials.getBaseUrl(false));
        fd1 protocol = cloudCredentials.getProtocol();
        String host = uriCreate.getHost();
        if (host == null) {
            host = "";
        }
        Locale locale = Locale.ROOT;
        String strQ = dj7.q(locale, host, locale);
        int port = uriCreate.getPort();
        Integer numValueOf = Integer.valueOf(port);
        if (port <= 0) {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : cloudCredentials.getProtocol().getDefPort();
        String path = uriCreate.getPath();
        String strI0 = path != null ? nq7.I0(path, '/') : null;
        return new ys3(protocol, strQ, iIntValue, strI0 == null ? "" : strI0, cloudCredentials.getValidUsername(), cloudCredentials.getPassword());
    }

    public static void b0(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.d(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            boolean z2 = c79.b;
            i3 += 8;
        }
        c79Var.o(i3);
        while (i2 < list.size()) {
            c79Var.h(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void c() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        c6.f("You must call this method on the main thread");
    }

    public static void c0(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int iIntValue = ((Integer) list.get(i2)).intValue();
                c79Var.q(i, (iIntValue >> 31) ^ (iIntValue << 1));
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int iT = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int iIntValue2 = ((Integer) list.get(i3)).intValue();
            iT += c79.t((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        c79Var.o(iT);
        while (i2 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i2)).intValue();
            c79Var.o((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i2++;
        }
    }

    public static boolean d(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void d0(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long jLongValue = ((Long) list.get(i2)).longValue();
                c79Var.l(i, (jLongValue >> 63) ^ (jLongValue << 1));
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int iR = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            long jLongValue2 = ((Long) list.get(i3)).longValue();
            iR += c79.r((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        c79Var.o(iR);
        while (i2 < list.size()) {
            long jLongValue3 = ((Long) list.get(i2)).longValue();
            c79Var.m((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i2++;
        }
    }

    public static zv1 e(int i) {
        if (i != 0) {
            return i != 1 ? new pq6() : new o72();
        }
        return new pq6();
    }

    public static void e0(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.q(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int iT = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iT += c79.t(((Integer) list.get(i3)).intValue());
        }
        c79Var.o(iT);
        while (i2 < list.size()) {
            c79Var.o(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static hl2 f(int i, f1 f1Var) {
        jx6 lr6Var;
        if (f1Var.s(pj5.a)) {
            lr6Var = new hr6();
        } else {
            if (!f1Var.s(pj5.g)) {
                g84.k(f1Var, "unrecognized digest OID: ");
                return null;
            }
            lr6Var = new lr6(256);
        }
        return (pj5.g.s(f1Var) || lr6Var.c() != i) ? new kl2(lr6Var, i) : lr6Var;
    }

    public static void f0(int i, List list, jq6 jq6Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c79 c79Var = (c79) jq6Var.b;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c79Var.l(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        c79Var.p(i, 2);
        int iR = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iR += c79.r(((Long) list.get(i3)).longValue());
        }
        c79Var.o(iR);
        while (i2 < list.size()) {
            c79Var.m(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static tl8 g(Class cls) throws InvocationTargetException {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                g84.h(fz5.k(cls, "Cannot create an instance of "));
                return null;
            }
            try {
                Object objNewInstance = declaredConstructor.newInstance(null);
                objNewInstance.getClass();
                return (tl8) objNewInstance;
            } catch (IllegalAccessException e2) {
                e6.i(fz5.k(cls, "Cannot create an instance of "), e2);
                return null;
            } catch (InstantiationException e3) {
                e6.i(fz5.k(cls, "Cannot create an instance of "), e3);
                return null;
            }
        } catch (NoSuchMethodException e4) {
            e6.i(fz5.k(cls, "Cannot create an instance of "), e4);
            return null;
        }
    }

    public static final long h() {
        return Thread.currentThread().getId();
    }

    public static ty6 i(l27 l27Var, FileDescriptor fileDescriptor, final long j, FileDescriptor fileDescriptor2, final byte[] bArr, final byte[] bArr2, String str, int i, final long j2, final int i2, final vq vqVar) throws IOException {
        long[] jArr;
        l27Var.getClass();
        zz6 zz6Var = null;
        if (!SbaLibaegisCryptoNative.a.isAvailable()) {
            throw new i27("SBA AEGIS native backend is not built", null);
        }
        try {
            int i3 = zx6.a[l27Var.ordinal()];
            if (i3 == 1) {
                final byte[] bytes = str.getBytes(f51.a);
                bytes.getClass();
                final long j3 = i;
                jArr = (long[]) SbaLibaegisCryptoNative.c(fileDescriptor, fileDescriptor2, new qt3() { // from class: wz6
                    @Override // defpackage.qt3
                    public final Object invoke(Object obj, Object obj2) {
                        return SbaLibaegisCryptoNative.b(i2, j, ((Integer) obj).intValue(), bArr, bArr2, bytes, j3, j2, ((Integer) obj2).intValue(), vqVar);
                    }
                });
            } else {
                if (i3 != 2) {
                    throw new qz6("SBA AEGIS decryption method required: " + l27Var, null);
                }
                final byte[] bytes2 = str.getBytes(f51.a);
                bytes2.getClass();
                final long j4 = i;
                jArr = (long[]) SbaLibaegisCryptoNative.c(fileDescriptor, fileDescriptor2, new qt3() { // from class: vz6
                    @Override // defpackage.qt3
                    public final Object invoke(Object obj, Object obj2) {
                        return SbaLibaegisCryptoNative.a(i2, j, ((Integer) obj).intValue(), bArr, bArr2, bytes2, j4, j2, ((Integer) obj2).intValue(), vqVar);
                    }
                });
            }
            String str2 = "SBA " + l27Var + " decryption";
            if (jArr.length == 2) {
                return new ty6(jArr[0], jArr[1]);
            }
            throw new qz6(str2 + " returned " + jArr.length + " values", null);
        } catch (IOException e2) {
            String strK = "SBA " + l27Var + " decryption";
            if (e2 instanceof zz6) {
                zz6Var = (zz6) e2;
            } else {
                String message = e2.getMessage();
                if (message == null) {
                    message = "";
                }
                if (nq7.Z(message, "SBA operation cancelled", false)) {
                    if (!nq7.j0(message)) {
                        strK = dj7.k(strK, ": ", message);
                    }
                    zz6Var = new zz6(strK, e2);
                }
            }
            if (zz6Var != null) {
                throw zz6Var;
            }
            String message2 = e2.getMessage();
            if (message2 == null || !nq7.Z(message2, "authentication failed", false)) {
                throw e2;
            }
            throw new pz6("Failed to authenticate SBA " + l27Var + " payload", e2);
        }
    }

    public static oq8 j(String str) {
        Object next;
        Iterator it = oq8.m.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((oq8) next).a.equals(str)) {
                return (oq8) next;
            }
        }
        next = null;
        return (oq8) next;
    }

    public static or8 k(ot1 ot1Var, int i, ArrayList arrayList, or8 or8Var) {
        int i2;
        int i3 = i == 0 ? ot1Var.n0 : ot1Var.o0;
        if (i3 != -1 && (or8Var == null || i3 != or8Var.b)) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                or8 or8Var2 = (or8) arrayList.get(i4);
                if (or8Var2.b == i3) {
                    if (or8Var != null) {
                        or8Var.c(i, or8Var2);
                        arrayList.remove(or8Var);
                    }
                    or8Var = or8Var2;
                    break;
                }
            }
        } else if (i3 != -1) {
            return or8Var;
        }
        if (or8Var == null) {
            if (ot1Var instanceof d44) {
                d44 d44Var = (d44) ot1Var;
                int i5 = 0;
                while (true) {
                    if (i5 >= d44Var.r0) {
                        i2 = -1;
                        break;
                    }
                    ot1 ot1Var2 = d44Var.q0[i5];
                    if ((i == 0 && (i2 = ot1Var2.n0) != -1) || (i == 1 && (i2 = ot1Var2.o0) != -1)) {
                        break;
                    }
                    i5++;
                }
                if (i2 != -1) {
                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                        or8 or8Var3 = (or8) arrayList.get(i6);
                        if (or8Var3.b == i2) {
                            or8Var = or8Var3;
                            break;
                        }
                    }
                }
            }
            if (or8Var == null) {
                or8Var = new or8();
                or8Var.a = new ArrayList();
                or8Var.d = null;
                or8Var.e = -1;
                int i7 = or8.f;
                or8.f = i7 + 1;
                or8Var.b = i7;
                or8Var.c = i;
            }
            arrayList.add(or8Var);
        }
        ArrayList arrayList2 = or8Var.a;
        if (arrayList2.contains(ot1Var)) {
            return or8Var;
        }
        arrayList2.add(ot1Var);
        if (ot1Var instanceof b24) {
            b24 b24Var = (b24) ot1Var;
            b24Var.t0.c(b24Var.u0 == 0 ? 1 : 0, or8Var, arrayList);
        }
        int i8 = or8Var.b;
        if (i == 0) {
            ot1Var.n0 = i8;
            ot1Var.I.c(i, or8Var, arrayList);
            ot1Var.K.c(i, or8Var, arrayList);
        } else {
            ot1Var.o0 = i8;
            ot1Var.J.c(i, or8Var, arrayList);
            ot1Var.M.c(i, or8Var, arrayList);
            ot1Var.L.c(i, or8Var, arrayList);
        }
        ot1Var.P.c(i, or8Var, arrayList);
        return or8Var;
    }

    public static int l(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        StringBuilder sb = new StringBuilder("Cannot obtain size for recycled Bitmap: ");
        sb.append(bitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap.Config config = bitmap.getConfig();
        sb.append("[");
        sb.append(width);
        sb.append("x");
        sb.append(height);
        sb.append("] ");
        sb.append(config);
        throw new IllegalStateException(sb.toString());
    }

    public static int m(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i = qh8.a[config.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 3) {
                return i != 4 ? 4 : 8;
            }
        }
        return i2;
    }

    public static final n81 n(p77 p77Var) {
        p77Var.getClass();
        if (p77Var instanceof q77) {
            return n(((q77) p77Var).a);
        }
        return null;
    }

    public static hl2 o(lp4 lp4Var) {
        return f(lp4Var.b, lp4Var.f);
    }

    public static ArrayList p(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Handler q() {
        if (c == null) {
            synchronized (xh8.class) {
                try {
                    if (c == null) {
                        c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static int r(int i, int i2) {
        return (i2 * 31) + i;
    }

    public static int s(int i, Object obj) {
        return r(obj == null ? 0 : obj.hashCode(), i);
    }

    public static oq8 t(String str) {
        Object next;
        Iterator it = oq8.l.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((oq8) next).b(str));
        oq8 oq8Var = (oq8) next;
        return oq8Var == null ? oq8.i : oq8Var;
    }

    public static boolean u(int i, int i2) {
        if (i > 0 || i == Integer.MIN_VALUE) {
            return i2 > 0 || i2 == Integer.MIN_VALUE;
        }
        return false;
    }

    public static boolean v(qn5 qn5Var) {
        if (qn5Var.n().isEmpty()) {
            return qn5Var.isEmpty() || (qn5Var instanceof co2) || (qn5Var instanceof fq7) || (qn5Var instanceof lg2);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object w(List list, kv1 kv1Var) {
        bf0 bf0Var;
        Iterator it;
        int i;
        if (kv1Var instanceof bf0) {
            bf0Var = (bf0) kv1Var;
            int i2 = bf0Var.d;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                bf0Var.d = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                bf0Var = new bf0(kv1Var);
            }
        } else {
            bf0Var = new bf0(kv1Var);
        }
        Object obj = bf0Var.c;
        int i3 = bf0Var.d;
        if (i3 == 0) {
            lg7.H(obj);
            it = list.iterator();
            i = 0;
        } else {
            if (i3 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = bf0Var.b;
            it = bf0Var.a;
            lg7.H(obj);
        }
        while (it.hasNext()) {
            oh4 oh4Var = (oh4) it.next();
            bf0Var.a = it;
            bf0Var.b = i;
            bf0Var.d = 1;
            Object objJoin = oh4Var.join(bf0Var);
            yx1 yx1Var = yx1.a;
            if (objJoin == yx1Var) {
                return yx1Var;
            }
        }
        return be8.a;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0042  */
    /* JADX WARN: Code duplicated, block: B:18:0x0056 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0054 -> B:19:0x0057). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object x(defpackage.oh4[] r6, defpackage.kv1 r7) {
        /*
            boolean r0 = r7 instanceof defpackage.af0
            if (r0 == 0) goto L13
            r0 = r7
            af0 r0 = (defpackage.af0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            af0 r0 = new af0
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.e
            int r1 = r0.f
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L30
            int r6 = r0.d
            int r1 = r0.c
            int r3 = r0.b
            java.lang.Object[] r4 = r0.a
            oh4[] r4 = (defpackage.oh4[]) r4
            defpackage.lg7.H(r7)
            r7 = r4
            goto L57
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r6)
            r6 = 0
            return r6
        L37:
            defpackage.lg7.H(r7)
            int r7 = r6.length
            r1 = 0
            r3 = r7
            r7 = r6
            r6 = r3
            r3 = r1
        L40:
            if (r1 >= r6) goto L59
            r4 = r7[r1]
            r0.a = r7
            r0.b = r3
            r0.c = r1
            r0.d = r6
            r0.f = r2
            java.lang.Object r4 = r4.join(r0)
            yx1 r5 = defpackage.yx1.a
            if (r4 != r5) goto L57
            return r5
        L57:
            int r1 = r1 + r2
            goto L40
        L59:
            be8 r6 = defpackage.be8.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xh8.x(oh4[], kv1):java.lang.Object");
    }

    public static qn5 z(gy5 gy5Var, Object obj) {
        String str;
        qv2 qv2Var = qv2.e;
        qn5 qn5VarA = a(obj, qv2Var);
        if (qn5VarA instanceof r15) {
            qn5VarA = new co2(Double.valueOf(((r15) qn5VarA).c), qv2Var);
        }
        if (v(qn5VarA)) {
            return qn5VarA;
        }
        if (gy5Var != null) {
            str = "Path '" + gy5Var + "'";
        } else {
            str = "Node";
        }
        throw new xc2(str.concat(" contains invalid priority: Must be a string, double, ServerValue, or null"));
    }

    @Override // defpackage.aj8
    public void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
    }

    @Override // defpackage.aj8
    public void onDataChange(eb2 eb2Var) {
        Boolean bool;
        y(eb2Var);
        String strE = eb2Var.b.e();
        boolean z = g42.a;
        if (pe4.d(strE, g42.a("AQK8OqW4gtD36Xte/DRxZA4zBTU1sr0y0N5jq+IeqAxKIILVpxc="))) {
            V v = V.INSTANCE;
            try {
                bool = (Boolean) eb2Var.c(Boolean.TYPE);
            } catch (Exception unused) {
                bool = null;
            }
            v.setVp(bool != null ? bool.booleanValue() : false);
        }
    }

    public void y(eb2 eb2Var) {
    }
}
