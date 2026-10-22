package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l73 implements m93 {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final i81 c = new i81(1);
    public static final il7 d = new il7();
    public static final jl7 e = new jl7();
    public static final kl7 f = new kl7();
    public static final ll7 g = new ll7();
    public static final ml7 h = new ml7();
    public static final nl7 i = new nl7();
    public static final ol7 j = new ol7();
    public static final pl7 k = new pl7();
    public static final hl7 l = new hl7();
    public static final String[] m = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};

    public static Object A(qt3 qt3Var) {
        return B(lv2.a, qt3Var);
    }

    public static final Object B(ox1 ox1Var, qt3 qt3Var) throws Throwable {
        uy2 uy2VarA;
        ox1 ox1VarI;
        long jU;
        nx1 nx1Var = lv1.b;
        rx1 rx1Var = (rx1) ox1Var.get(nx1Var);
        lv2 lv2Var = lv2.a;
        if (rx1Var == null) {
            uy2VarA = r28.a();
            ox1VarI = w13.i(lv2Var, ox1Var.plus(uy2VarA), true);
            rf2 rf2Var = cn2.a;
            if (ox1VarI != rf2Var && ox1VarI.get(nx1Var) == null) {
                ox1VarI = ox1VarI.plus(rf2Var);
            }
        } else {
            uy2VarA = (uy2) r28.a.get();
            ox1VarI = w13.i(lv2Var, ox1Var, true);
            rf2 rf2Var2 = cn2.a;
            if (ox1VarI != rf2Var2 && ox1VarI.get(nx1Var) == null) {
                ox1VarI = ox1VarI.plus(rf2Var2);
            }
        }
        it0 it0Var = new it0(ox1VarI, Thread.currentThread(), uy2VarA);
        it0Var.a0(ay1.a, it0Var, qt3Var);
        uy2 uy2Var = it0Var.k;
        if (uy2Var != null) {
            int i2 = uy2.f;
            uy2Var.r(false);
        }
        while (true) {
            if (uy2Var != null) {
                try {
                    jU = uy2Var.u();
                } catch (Throwable th) {
                    if (uy2Var != null) {
                        int i3 = uy2.f;
                        uy2Var.q(false);
                    }
                    throw th;
                }
            } else {
                jU = Long.MAX_VALUE;
            }
            if (it0Var.E()) {
                break;
            }
            LockSupport.parkNanos(it0Var, jU);
            if (Thread.interrupted()) {
                it0Var.l(new InterruptedException());
            }
        }
        if (uy2Var != null) {
            int i4 = uy2.f;
            uy2Var.q(false);
        }
        Object objI = pe4.I(it0Var.z());
        ln1 ln1Var = objI instanceof ln1 ? (ln1) objI : null;
        if (ln1Var == null) {
            return objI;
        }
        throw ln1Var.a;
    }

    public static final void C(InputStream inputStream, long j2) throws IOException {
        while (j2 > 0) {
            long jSkip = inputStream.skip(j2);
            if (jSkip > 0) {
                j2 -= jSkip;
            } else {
                if (inputStream.read() == -1) {
                    throw new EOFException("Unexpected EOF while seeking upload input");
                }
                j2--;
            }
        }
    }

    public static ld4 D(nd4 nd4Var, int i2) {
        nd4Var.getClass();
        boolean z = i2 > 0;
        Integer numValueOf = Integer.valueOf(i2);
        if (!z) {
            throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + '.');
        }
        int i3 = nd4Var.a;
        int i4 = nd4Var.b;
        if (nd4Var.c <= 0) {
            i2 = -i2;
        }
        return new ld4(i3, i4, i2);
    }

    public static final String E(mt5 mt5Var) {
        return "OneDrive REST Error Response: Status=" + mt5Var.a + " Message=" + mt5Var.getMessage() + "\n\nResponse body:\n" + mt5Var.b;
    }

    public static nd4 F(int i2, int i3) {
        if (i3 > Integer.MIN_VALUE) {
            return new nd4(i2, i3 - 1, 1);
        }
        nd4 nd4Var = nd4.d;
        return nd4.d;
    }

    public static final Object G(ox1 ox1Var, qt3 qt3Var, jv1 jv1Var) throws Throwable {
        ox1 context = jv1Var.getContext();
        ox1 ox1VarPlus = !((Boolean) ox1Var.fold(Boolean.FALSE, new pc1(2))).booleanValue() ? context.plus(ox1Var) : w13.i(context, ox1Var, false);
        sz8.p(ox1VarPlus);
        if (ox1VarPlus == context) {
            w57 w57Var = new w57(jv1Var, ox1VarPlus);
            return xx3.A(w57Var, true, w57Var, qt3Var);
        }
        lv1 lv1Var = lv1.b;
        if (pe4.d(ox1VarPlus.get(lv1Var), context.get(lv1Var))) {
            vd8 vd8Var = new vd8(jv1Var, ox1VarPlus);
            ox1 ox1Var2 = vd8Var.e;
            Object objJ = pe4.J(ox1Var2, null);
            try {
                return xx3.A(vd8Var, true, vd8Var, qt3Var);
            } finally {
                pe4.y(ox1Var2, objJ);
            }
        }
        zm2 zm2Var = new zm2(jv1Var, ox1VarPlus);
        try {
            ly8.L(nc8.D(nc8.o(zm2Var, zm2Var, qt3Var)), be8.a);
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = zm2.k;
            do {
                int i2 = atomicIntegerFieldUpdater.get(zm2Var);
                if (i2 != 0) {
                    if (i2 != 2) {
                        l0.e("Already suspended");
                        return null;
                    }
                    Object objI = pe4.I(zm2Var.z());
                    if (objI instanceof ln1) {
                        throw ((ln1) objI).a;
                    }
                    return objI;
                }
            } while (!atomicIntegerFieldUpdater.compareAndSet(zm2Var, 0, 1));
            return yx1.a;
        } catch (Throwable th) {
            th = th;
            if (th instanceof xm2) {
                th = ((xm2) th).a;
            }
            zm2Var.resumeWith(lg7.e(th));
            throw th;
        }
    }

    public static Provider H() {
        for (int i2 = 0; i2 < 3; i2++) {
            Provider provider = Security.getProvider(m[i2]);
            if (provider != null) {
                return provider;
            }
        }
        return null;
    }

    public static ia9 I(hq9 hq9Var) {
        int i2 = 3;
        if (hq9Var == hq9.d) {
            return new ia9("HmacSha256", i2);
        }
        if (hq9Var == hq9.e) {
            return new ia9("HmacSha384", i2);
        }
        if (hq9Var == hq9.f) {
            return new ia9("HmacSha512", i2);
        }
        c6.f("Unrecognized HPKE KDF identifier");
        return null;
    }

    public static hr9 J(gq9 gq9Var) {
        if (gq9Var == gq9.d) {
            return new j15(16);
        }
        if (gq9Var == gq9.e) {
            return new j15(32);
        }
        if (gq9Var == gq9.f) {
            return new hx0(24);
        }
        c6.f("Unrecognized HPKE AEAD identifier");
        return null;
    }

    public static mr9 K(jq9 jq9Var) {
        if (jq9Var == jq9.g) {
            return new h80(new ia9("HmacSha256", 3));
        }
        if (jq9Var == jq9.d) {
            return yf1.s(p1a.a);
        }
        if (jq9Var == jq9.e) {
            return yf1.s(p1a.b);
        }
        if (jq9Var == jq9.f) {
            return yf1.s(p1a.c);
        }
        c6.f("Unrecognized HPKE KEM identifier");
        return null;
    }

    public static String L(String str, Object... objArr) {
        int length;
        int iIndexOf;
        StringBuilder sb = new StringBuilder(str.length() + (objArr.length * 16));
        int i2 = 0;
        int i3 = 0;
        while (true) {
            length = objArr.length;
            if (i2 >= length || (iIndexOf = str.indexOf("%s", i3)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i3, iIndexOf);
            sb.append(M(objArr[i2]));
            i3 = iIndexOf + 2;
            i2++;
        }
        sb.append((CharSequence) str, i3, str.length());
        if (i2 < length) {
            String str2 = " [";
            while (i2 < objArr.length) {
                sb.append(str2);
                sb.append(M(objArr[i2]));
                i2++;
                str2 = ", ";
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static String M(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e2) {
            String strK = dj7.k(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
            Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strK), (Throwable) e2);
            return eq3.l("<", strK, " threw ", e2.getClass().getName(), ">");
        }
    }

    public static Object a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    public static void b(Parcel parcel, Parcelable parcelable, int i2) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, i2);
        }
    }

    public static final dv1 c(ox1 ox1Var) {
        if (ox1Var.get(nh4.b) == null) {
            ox1Var = ox1Var.plus(new qh4(null));
        }
        return new dv1(ox1Var);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0139 A[RETURN] */
    public static final boolean d(InetAddress inetAddress) {
        if (!(inetAddress instanceof Inet4Address)) {
            if (inetAddress instanceof Inet6Address) {
                byte[] address = ((Inet6Address) inetAddress).getAddress();
                address.getClass();
                ArrayList arrayList = new ArrayList(address.length);
                for (byte b2 : address) {
                    arrayList.add(Integer.valueOf(b2 & 255));
                }
                int iIntValue = ((Number) arrayList.get(0)).intValue();
                int iS = s(arrayList, 0);
                int iS2 = s(arrayList, 1);
                int iS3 = s(arrayList, 2);
                if ((iIntValue & 224) == 32 && ((iS != 8193 || iS2 != 0) && ((iS != 8193 || iS2 != 2 || iS3 != 0) && ((iS != 8193 || (65520 & iS2) != 16) && ((iS != 8193 || iS2 != 3512) && iS != 8194 && (iS != 16383 || (61440 & iS2) != 0)))))) {
                    return true;
                }
            }
            return false;
        }
        byte[] address2 = ((Inet4Address) inetAddress).getAddress();
        address2.getClass();
        ArrayList arrayList2 = new ArrayList(address2.length);
        for (byte b3 : address2) {
            arrayList2.add(Integer.valueOf(b3 & 255));
        }
        int iIntValue2 = ((Number) arrayList2.get(0)).intValue();
        int iIntValue3 = ((Number) arrayList2.get(1)).intValue();
        int iIntValue4 = ((Number) arrayList2.get(2)).intValue();
        if (iIntValue2 == 0 || iIntValue2 == 10 || ((iIntValue2 == 100 && 64 <= iIntValue3 && iIntValue3 < 128) || iIntValue2 == 127 || ((iIntValue2 == 169 && iIntValue3 == 254) || ((iIntValue2 == 172 && 16 <= iIntValue3 && iIntValue3 < 32) || ((iIntValue2 == 192 && iIntValue3 == 0 && iIntValue4 == 0) || ((iIntValue2 == 192 && iIntValue3 == 0 && iIntValue4 == 2) || ((iIntValue2 == 192 && iIntValue3 == 88 && iIntValue4 == 99) || ((iIntValue2 == 192 && iIntValue3 == 168) || ((iIntValue2 == 198 && 18 <= iIntValue3 && iIntValue3 < 20) || ((iIntValue2 == 198 && iIntValue3 == 51 && iIntValue4 == 100) || ((iIntValue2 == 203 && iIntValue3 == 0 && iIntValue4 == 113) || iIntValue2 >= 224))))))))))) {
            return false;
        }
        return true;
    }

    public static kg2 e(xx1 xx1Var, rx1 rx1Var, qt3 qt3Var, int i2) {
        ox1 ox1Var = rx1Var;
        if ((i2 & 1) != 0) {
            ox1Var = lv2.a;
        }
        kg2 kg2Var = new kg2(w13.p(xx1Var, ox1Var), true);
        kg2Var.a0(ay1.a, kg2Var, qt3Var);
        return kg2Var;
    }

    public static String f(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = (bArr[i2] & 240) >>> 4;
            char[] cArr = b;
            sb.append(cArr[i3]);
            sb.append(cArr[bArr[i2] & 15]);
        }
        return sb.toString();
    }

    public static float g(float f2, float f3, float f4) {
        if (f3 <= f4) {
            if (f2 < f3) {
                return f3;
            }
            return f2 > f4 ? f4 : f2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + '.');
    }

    public static int h(int i2, int i3, int i4) {
        if (i3 <= i4) {
            if (i2 < i3) {
                return i3;
            }
            return i2 > i4 ? i4 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + '.');
    }

    public static long i(long j2, long j3, long j4) {
        if (j3 <= j4) {
            if (j2 < j3) {
                return j3;
            }
            return j2 > j4 ? j4 : j2;
        }
        StringBuilder sbT = dj7.t("Cannot coerce value to an empty range: maximum ", " is less than minimum ", j4);
        sbT.append(j3);
        sbT.append('.');
        throw new IllegalArgumentException(sbT.toString());
    }

    public static boolean j(File file, InputStream inputStream) throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 != -1) {
                            fileOutputStream2.write(bArr, 0, i2);
                        } else {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        }
                    }
                    fileOutputStream2.close();
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static final Object k(qt3 qt3Var, jv1 jv1Var) {
        w57 w57Var = new w57(jv1Var, jv1Var.getContext());
        return xx3.A(w57Var, true, w57Var, qt3Var);
    }

    public static f17 l(ky6 ky6Var) {
        ky6Var.getClass();
        String str = ky6Var.a;
        String str2 = ky6Var.b;
        int i2 = ky6Var.c;
        long j2 = ky6Var.d;
        String str3 = ky6Var.e;
        d17 d17VarK = y13.k(ky6Var.f);
        hy6 hy6Var = ky6Var.g;
        e17 e17Var = new e17(hy6Var.a, hy6Var.b, hy6Var.c, hy6Var.d, hy6Var.e, hy6Var.f);
        fy6 fy6Var = ky6Var.h;
        c17 c17Var = new c17(fy6Var.b, fy6Var.c, fy6Var.a, fy6Var.d);
        List list = ky6Var.i;
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(xx3.f((xy6) it.next()));
        }
        return new f17(str, str2, i2, j2, str3, d17VarK, e17Var, c17Var, new ArrayList(arrayList), -1);
    }

    public static f17 m(ky6 ky6Var, int i2, int i3) {
        int i4 = i2;
        int i5 = i3;
        ky6Var.getClass();
        String str = ky6Var.e;
        List list = ky6Var.i;
        if (i4 < 0) {
            f6.g(fz5.j(i4, "SBA root archive info startIndex must be >= 0: "));
            return null;
        }
        if (i5 <= 0) {
            f6.g(fz5.j(i5, "SBA root archive info maxEntries must be > 0: "));
            return null;
        }
        int size = list.size();
        if (i4 > size) {
            i4 = size;
        }
        if (i5 > 128) {
            i5 = 128;
        }
        boolean z = i4 == 0;
        int length = (ky6Var.b.length() * 2) + 8 + (ky6Var.a.length() * 2) + 520 + (z ? (str.length() * 2) + 8 : 0);
        int i6 = i4;
        while (i6 < list.size() && i6 - i4 < i5) {
            int length2 = (((xy6) list.get(i6)).a.length() * 2) + 264;
            if (i6 > i4 && length + length2 > 262144) {
                break;
            }
            length += length2;
            i6++;
        }
        List listSubList = list.subList(i4, i6);
        if (i6 >= list.size()) {
            i6 = -1;
        }
        int i7 = i6;
        String str2 = ky6Var.a;
        String str3 = ky6Var.b;
        int i8 = ky6Var.c;
        long j2 = ky6Var.d;
        if (!z) {
            str = "";
        }
        String str4 = str;
        d17 d17VarK = y13.k(ky6Var.f);
        hy6 hy6Var = ky6Var.g;
        e17 e17Var = new e17(hy6Var.a, hy6Var.b, hy6Var.c, hy6Var.d, hy6Var.e, hy6Var.f);
        fy6 fy6Var = ky6Var.h;
        c17 c17Var = new c17(fy6Var.b, fy6Var.c, fy6Var.a, fy6Var.d);
        ArrayList arrayList = new ArrayList(hl1.G0(listSubList, 10));
        Iterator it = listSubList.iterator();
        while (it.hasNext()) {
            arrayList.add(xx3.f((xy6) it.next()));
        }
        return new f17(str2, str3, i8, j2, str4, d17VarK, e17Var, c17Var, new ArrayList(arrayList), i7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static eu n(String str, String str2) {
        eu euVar;
        boolean z = g42.a;
        Iterator it = mp6.a.j(true, new String[]{String.format(g42.d(), Arrays.copyOf(new Object[]{"get", str, str2, ""}, 4))}, ip6.SHIZUKU).iterator();
        do {
            euVar = null;
            Object obj = null;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            z3 z3Var = (z3) eu.getEntries();
            z3Var.getClass();
            w3 w3Var = new w3(z3Var);
            while (w3Var.hasNext()) {
                Object next = w3Var.next();
                if (nq7.Z(str3, ((eu) next).toString(), false)) {
                    obj = next;
                    break;
                }
            }
            euVar = (eu) obj;
        } while (euVar == null);
        return euVar;
    }

    public static fu o(String str) {
        Object next;
        boolean z = g42.a;
        List<String> listJ = mp6.a.j(true, new String[]{String.format(g42.d(), Arrays.copyOf(new Object[]{"get", str, "", ""}, 4))}, ip6.SHIZUKU);
        listJ.getClass();
        Pattern patternCompile = Pattern.compile("^\\s*(?:Uid mode:\\s*)?([A-Za-z0-9_:]+):\\s*([a-z_]+)\\b.*");
        patternCompile.getClass();
        ArrayList arrayList = new ArrayList();
        for (String str2 : listJ) {
            str2.getClass();
            Matcher matcher = patternCompile.matcher(str2);
            matcher.getClass();
            pw5 pw5Var = null;
            u75 u75Var = !matcher.matches() ? null : new u75(matcher, str2);
            if (u75Var != null) {
                Iterator it = ((z3) eu.getEntries()).iterator();
                do {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        next = null;
                        break;
                    }
                    next = w3Var.next();
                } while (!pe4.d(((eu) next).name(), ((s75) u75Var.a()).get(2)));
                eu euVar = (eu) next;
                if (euVar != null) {
                    String str3 = (String) ((s75) u75Var.a()).get(1);
                    str3.getClass();
                    String strZ0 = nq7.z0(str3, ":", str3);
                    Locale locale = Locale.US;
                    locale.getClass();
                    String upperCase = strZ0.toUpperCase(locale);
                    upperCase.getClass();
                    pw5Var = new pw5(upperCase, euVar);
                }
            }
            if (pw5Var != null) {
                arrayList.add(pw5Var);
            }
        }
        return new fu(x65.t0(arrayList));
    }

    public static void p(byte[] bArr, int i2, int[] iArr) {
        int length = iArr.length * 2;
        int[] iArr2 = new int[length];
        int i3 = iArr[iArr.length - 1] >> 31;
        int length2 = iArr.length;
        int i4 = length;
        while (true) {
            length2--;
            if (length2 < 0) {
                break;
            }
            int i5 = iArr[length2];
            iArr2[i4 - 1] = (i3 << 16) | (i5 >>> 16);
            i4 -= 2;
            iArr2[i4] = i5;
            i3 = i5;
        }
        int i6 = 32 - i2;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < length) {
            int i10 = iArr2[i7];
            while (i8 < 16) {
                int i11 = i10 >>> i8;
                if ((i11 & 1) == i9) {
                    i8++;
                } else {
                    int i12 = (i11 | 1) << i6;
                    bArr[(i7 << 4) + i8] = (byte) (i12 >> i6);
                    i8 += i2;
                    i9 = i12 >>> 31;
                }
            }
            i7++;
            i8 -= 16;
        }
    }

    public static File q(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i2 = 0; i2 < 100; i2++) {
            File file = new File(cacheDir, str + i2);
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    public static int r(int i2, Object obj) {
        return (i2 * 37) + (obj != null ? obj.hashCode() : 0);
    }

    public static final int s(ArrayList arrayList, int i2) {
        int i3 = i2 * 2;
        return ((Number) arrayList.get(i3 + 1)).intValue() | (((Number) arrayList.get(i3)).intValue() << 8);
    }

    public static final boolean t(xx1 xx1Var) {
        oh4 oh4Var = (oh4) xx1Var.d().get(nh4.b);
        if (oh4Var != null) {
            return oh4Var.isActive();
        }
        return true;
    }

    public static boolean u(String str) {
        return (str == null || str.trim().isEmpty()) ? false : true;
    }

    public static bl7 v(xx1 xx1Var, ox1 ox1Var, qt3 qt3Var, int i2) {
        if ((i2 & 1) != 0) {
            ox1Var = lv2.a;
        }
        bl7 bl7Var = new bl7(w13.p(xx1Var, ox1Var), true);
        bl7Var.a0(ay1.a, bl7Var, qt3Var);
        return bl7Var;
    }

    public static MappedByteBuffer w(Context context, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR, null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return null;
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return map;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        } catch (IOException unused) {
        }
    }

    public static byte[] x(String str) {
        byte[] bArr = new byte[str.length() + 1];
        System.arraycopy(str.getBytes(h51.e), 0, bArr, 0, str.length());
        return bArr;
    }

    public static String y(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            char[] cArr = a;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString();
    }

    public static int z(bn4 bn4Var, String str, int i2, int i3) {
        int iA = bn4Var.A();
        if (iA >= i2 && iA <= i3) {
            return iA;
        }
        String strR = bn4Var.r();
        StringBuilder sbV = dj7.v("Expected ", str, " but was ", iA, " at path ");
        sbV.append(strR);
        throw new lj4(sbV.toString());
    }
}
