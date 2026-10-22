package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Xml;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.jcraft.jsch.SftpATTRS;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pe4 {
    public static final du9 a;
    public static final du9 b;
    public static final du9 c;
    public static final du9 d;
    public static final du9 e;
    public static final du9 f;
    public static final du9 i;
    public static final iv2 g = new iv2(false);
    public static final iv2 h = new iv2(true);
    public static final px1 j = new px1(2);
    public static final qc1 k = new qc1(4);
    public static final xc1 l = new xc1(2);

    static {
        int i2 = 2;
        a = new du9("RESUME_TOKEN", i2);
        b = new du9("COMPLETING_ALREADY", i2);
        c = new du9("COMPLETING_WAITING_CHILDREN", i2);
        d = new du9("COMPLETING_RETRY", i2);
        e = new du9("TOO_LATE_TO_CANCEL", i2);
        f = new du9("SEALED", i2);
        i = new du9("NO_THREAD_ELEMENTS", i2);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0024 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0025  */
    public static final int A(p67 p67Var, int i2) {
        int i3;
        int[] iArr = p67Var.f;
        int i4 = i2 + 1;
        int length = p67Var.e.length;
        iArr.getClass();
        int i5 = length - 1;
        int i6 = 0;
        while (i6 <= i5) {
            i3 = (i6 + i5) >>> 1;
            int i7 = iArr[i3];
            if (i7 < i4) {
                i6 = i3 + 1;
            } else {
                if (i7 <= i4) {
                    if (i3 >= 0) {
                        return i3;
                    }
                    return ~i3;
                }
                i5 = i3 - 1;
            }
        }
        i3 = (-i6) - 1;
        if (i3 >= 0) {
            return i3;
        }
        return ~i3;
    }

    public static void B(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) (i3 >>> 24);
        bArr[i2 + 1] = (byte) (i3 >>> 16);
        bArr[i2 + 2] = (byte) (i3 >>> 8);
        bArr[i2 + 3] = (byte) i3;
    }

    public static void C(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) i3;
        bArr[i2 + 1] = (byte) (i3 >>> 8);
        bArr[i2 + 2] = (byte) (i3 >>> 16);
        bArr[i2 + 3] = (byte) (i3 >>> 24);
    }

    public static void D(Activity activity, ArrayList arrayList, boolean z) {
        g00 g00Var = g00.a;
        if (!g00.r().hasSystemFeature("android.hardware.telephony")) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, "Feature not supported on this device");
            return;
        }
        ge5 ge5Var = new ge5(arrayList, z);
        ny2 ny2VarB = ny2.b();
        synchronized (ny2VarB.c) {
            ny2VarB.c.put(ge5.class, ge5Var);
        }
        ny2VarB.e(ge5Var);
        ai8.q(activity, MessagesBackupsActivity.class);
    }

    public static final Object E(ox1 ox1Var) {
        Object objFold = ox1Var.fold(0, j);
        objFold.getClass();
        return objFold;
    }

    public static void F(String str) {
        fx5 fx5Var = new fx5(eq3.k("lateinit property ", str, " has not been initialized"));
        z(fx5Var, pe4.class.getName());
        throw fx5Var;
    }

    public static final long G(int i2, or2 or2Var) {
        if (or2Var.compareTo(or2.SECONDS) > 0) {
            return H(i2, or2Var);
        }
        long jConvert = TimeUnit.NANOSECONDS.convert(i2, or2Var.a);
        ma2 ma2Var = mr2.b;
        long j2 = jConvert << 1;
        int i3 = nr2.a;
        return j2;
    }

    public static final long H(long j2, or2 or2Var) {
        TimeUnit timeUnit = or2Var.a;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        long jConvert = timeUnit.convert(4611686018426999999L, timeUnit2);
        if ((-jConvert) <= j2 && j2 <= jConvert) {
            long jConvert2 = timeUnit2.convert(j2, timeUnit);
            ma2 ma2Var = mr2.b;
            long j3 = jConvert2 << 1;
            int i2 = nr2.a;
            return j3;
        }
        if (or2Var.compareTo(or2.MILLISECONDS) < 0) {
            return j(l73.i(TimeUnit.MILLISECONDS.convert(j2, timeUnit), -4611686018427387903L, 4611686018427387903L));
        }
        long jSignum = Long.signum(j2);
        if (j2 < -9223372036854775807L) {
            j2 = -9223372036854775807L;
        }
        return j(vm4.g(Math.abs(j2), or2Var) * jSignum);
    }

    public static final Object I(Object obj) {
        fb4 fb4Var;
        gb4 gb4Var = obj instanceof gb4 ? (gb4) obj : null;
        return (gb4Var == null || (fb4Var = gb4Var.a) == null) ? obj : fb4Var;
    }

    public static final Object J(ox1 ox1Var, Object obj) {
        if (obj == null) {
            obj = E(ox1Var);
        }
        if (obj == 0) {
            return i;
        }
        return obj instanceof Integer ? ox1Var.fold(new u28(((Number) obj).intValue(), ox1Var), l) : ((l28) obj).a();
    }

    public static int K(int i2) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i2) * (-862048943)), 15)) * 461845907);
    }

    public static void L(int i2, int i3) {
        String strO;
        if (i2 < 0 || i2 >= i3) {
            if (i2 < 0) {
                strO = lg7.O("%s (%s) must not be negative", "index", Integer.valueOf(i2));
            } else {
                if (i3 < 0) {
                    c6.f(fz5.j(i3, "negative size: "));
                    return;
                }
                strO = lg7.O("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i2), Integer.valueOf(i3));
            }
            throw new IndexOutOfBoundsException(strO);
        }
    }

    public static void M(int i2, int i3, int i4) {
        String strN;
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            if (i2 < 0 || i2 > i4) {
                strN = N(i2, i4, "start index");
            } else {
                strN = (i3 < 0 || i3 > i4) ? N(i3, i4, "end index") : lg7.O("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strN);
        }
    }

    public static String N(int i2, int i3, String str) {
        if (i2 < 0) {
            return lg7.O("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return lg7.O("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        c6.f(fz5.j(i3, "negative size: "));
        return null;
    }

    public static void O(int i2, int i3) {
        if (i2 < 0 || i2 > i3) {
            a6.d(N(i2, i3, "index"));
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(y28 y28Var, mb2 mb2Var, Throwable th, kv1 kv1Var) {
        ni3 ni3Var;
        if (kv1Var instanceof ni3) {
            ni3Var = (ni3) kv1Var;
            int i2 = ni3Var.c;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                ni3Var.c = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                ni3Var = new ni3(kv1Var);
            }
        } else {
            ni3Var = new ni3(kv1Var);
        }
        Object obj = ni3Var.b;
        int i3 = ni3Var.c;
        try {
            if (i3 == 0) {
                lg7.H(obj);
                ni3Var.a = th;
                ni3Var.c = 1;
                Object objA = mb2Var.a(y28Var, th, ni3Var);
                Object obj2 = yx1.a;
                if (objA == obj2) {
                    return obj2;
                }
            } else {
                if (i3 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                th = ni3Var.a;
                lg7.H(obj);
            }
            return be8.a;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                yc9.a(th2, th);
            }
            throw th2;
        }
    }

    public static final long b(long j2, long j3) {
        if (j2 != 4611686018427387903L && j2 != -4611686018427387903L) {
            return (j3 == 4611686018427387903L || j3 == -4611686018427387903L) ? j3 : l73.i(j2 + j3, -4611686018427387903L, 4611686018427387903L);
        }
        if ((-4611686018427387903L >= j3 || j3 >= 4611686018427387903L) && (j3 ^ j2) < 0) {
            return 9223372036854759646L;
        }
        return j2;
    }

    public static void c(Uri.Builder builder, String str, Object obj) {
        if (obj == null || obj.toString() == null) {
            return;
        }
        builder.appendQueryParameter(str, obj.toString());
    }

    public static boolean d(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static final void e(tl8 tl8Var, ot9 ot9Var, hu4 hu4Var) {
        AutoCloseable autoCloseable;
        ot9Var.getClass();
        hu4Var.getClass();
        ul8 ul8Var = tl8Var.a;
        if (ul8Var != null) {
            synchronized (ul8Var.a) {
                autoCloseable = (AutoCloseable) ul8Var.b.get("androidx.lifecycle.savedstate.vm.tag");
            }
        } else {
            autoCloseable = null;
        }
        ox6 ox6Var = (ox6) autoCloseable;
        if (ox6Var == null || ox6Var.c) {
            return;
        }
        ox6Var.a(hu4Var, ot9Var);
        st4 st4Var = hu4Var.d;
        if (st4Var == st4.b || st4Var.compareTo(st4.d) >= 0) {
            ot9Var.i();
        } else {
            hu4Var.a(new dt4(hu4Var, ot9Var));
        }
    }

    public static int f(int i2, int i3) {
        if (i2 < i3) {
            return -1;
        }
        return i2 == i3 ? 0 : 1;
    }

    public static int g(long j2, long j3) {
        if (j2 < j3) {
            return -1;
        }
        return j2 == j3 ? 0 : 1;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static ao h(Bundle bundle, String str) throws an5 {
        str.getClass();
        bundle.getClass();
        try {
            switch (str.hashCode()) {
                case -1678407252:
                    if (str.equals("androidx.credentials.TYPE_DIGITAL_CREDENTIAL")) {
                        try {
                            Object obj = bundle.get("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                            obj.getClass();
                            return obj instanceof byte[] ? new ml2(bundle, new String((byte[]) obj, f51.a)) : new ml2(bundle, (String) obj);
                        } catch (Exception unused) {
                            throw new fs3();
                        }
                    }
                    throw new fs3();
                case -1072734346:
                    if (str.equals("androidx.credentials.TYPE_RESTORE_CREDENTIAL")) {
                        String string = bundle.getString("androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE");
                        if (string == null) {
                            throw new an5("The device does not contain a restore credential.");
                        }
                        jm6 jm6Var = new jm6(bundle, "androidx.credentials.TYPE_RESTORE_CREDENTIAL");
                        if (string.length() != 0) {
                            try {
                                new JSONObject(string);
                                return jm6Var;
                            } catch (Exception unused2) {
                            }
                        }
                        throw new IllegalArgumentException("authenticationResponseJson must not be empty, and must be a valid JSON");
                    }
                    throw new fs3();
                case -543568185:
                    if (str.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                        try {
                            String string2 = bundle.getString("androidx.credentials.BUNDLE_KEY_ID");
                            String string3 = bundle.getString("androidx.credentials.BUNDLE_KEY_PASSWORD");
                            string2.getClass();
                            string3.getClass();
                            return new rx5(bundle, string3);
                        } catch (Exception unused3) {
                            throw new fs3();
                        }
                    }
                    throw new fs3();
                case -95037569:
                    if (str.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                        try {
                            String string4 = bundle.getString("androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON");
                            string4.getClass();
                            return new oa6(bundle, string4);
                        } catch (Exception unused4) {
                            throw new fs3();
                        }
                    }
                    throw new fs3();
                default:
                    throw new fs3();
            }
        } catch (fs3 unused5) {
            return new u62(bundle, str);
        }
    }

    public static SubjectPublicKeyInfo i(n60 n60Var) throws IOException {
        if (n60Var instanceof ew6) {
            ew6 ew6Var = (ew6) n60Var;
            return new SubjectPublicKeyInfo(new ya(bw5.a, new tv6(fi8.d(ew6Var.b))), ms8.k(ew6Var.c));
        }
        if (n60Var instanceof oj5) {
            return new SubjectPublicKeyInfo(new ya(bw5.b), ms8.k(((oj5) n60Var).b));
        }
        if (n60Var instanceof rp4) {
            rp4 rp4Var = (rp4) n60Var;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(1);
            try {
                byteArrayOutputStream.write(rp4Var.b());
                return new SubjectPublicKeyInfo(new ya(tv5.a), byteArrayOutputStream.toByteArray());
            } catch (Exception e2) {
                e6.i(e2.getMessage(), e2);
                return null;
            }
        }
        if (n60Var instanceof n24) {
            n24 n24Var = (n24) n60Var;
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            int i2 = n24Var.b;
            byteArrayOutputStream2.write((byte) (i2 >>> 24));
            byteArrayOutputStream2.write((byte) (i2 >>> 16));
            byteArrayOutputStream2.write((byte) (i2 >>> 8));
            byteArrayOutputStream2.write((byte) i2);
            try {
                byteArrayOutputStream2.write(n24Var.c.b());
                return new SubjectPublicKeyInfo(new ya(tv5.a), byteArrayOutputStream2.toByteArray());
            } catch (Exception e3) {
                e6.i(e3.getMessage(), e3);
                return null;
            }
        }
        if (n60Var instanceof tr6) {
            tr6 tr6Var = (tr6) n60Var;
            oe oeVar = tr6Var.c;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.K.get((rr6) tr6Var.b)), ms8.p((byte[]) oeVar.b, (byte[]) oeVar.c));
        }
        if (n60Var instanceof cw6) {
            cw6 cw6Var = (cw6) n60Var;
            w00 w00Var = cw6Var.c;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.o.get((aw6) cw6Var.b)), ms8.p((byte[]) w00Var.b, (byte[]) w00Var.c));
        }
        if (n60Var instanceof wy0) {
            wy0 wy0Var = (wy0) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.m.get((sy0) wy0Var.b)), ms8.k(wy0Var.c));
        }
        if (n60Var instanceof vx8) {
            vx8 vx8Var = (vx8) n60Var;
            byte[] bArrG = jd4.g(vx8Var.f);
            byte[] bArrG2 = jd4.g(vx8Var.e);
            byte[] encoded = vx8Var.getEncoded();
            return encoded.length > bArrG.length + bArrG2.length ? new SubjectPublicKeyInfo(new ya(pg4.a), new p82(encoded)) : new SubjectPublicKeyInfo(new ya(bw5.c, new hx8(vx8Var.c.b, fi8.f(vx8Var.b))), new ux8(bArrG, bArrG2));
        }
        if (n60Var instanceof px8) {
            px8 px8Var = (px8) n60Var;
            byte[] bArr = px8Var.e;
            byte[] bArr2 = px8Var.f;
            byte[] bArrG3 = jd4.g(bArr2);
            byte[] bArrG4 = jd4.g(bArr);
            byte[] bArrA = px8Var.a();
            if (bArrA.length > bArrG3.length + bArrG4.length) {
                return new SubjectPublicKeyInfo(new ya(pg4.b), new p82(bArrA));
            }
            f1 f1Var = bw5.d;
            kx8 kx8Var = px8Var.c;
            return new SubjectPublicKeyInfo(new ya(f1Var, new jx8(kx8Var.c, kx8Var.d, fi8.f(px8Var.b))), new ox8(jd4.g(bArr2), jd4.g(bArr)));
        }
        if (n60Var instanceof ss3) {
            ss3 ss3Var = (ss3) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.i.get((qs3) ss3Var.b)), new p82(ms8.k(ss3Var.c)));
        }
        if (n60Var instanceof dr6) {
            dr6 dr6Var = (dr6) n60Var;
            byte[] bArrK = ms8.k(dr6Var.c);
            ya yaVar = new ya((f1) fi8.k.get((br6) dr6Var.b));
            t82 t82Var = new t82(new p82(bArrK));
            t82Var.c = -1;
            return new SubjectPublicKeyInfo(yaVar, t82Var);
        }
        if (n60Var instanceof i06) {
            i06 i06Var = (i06) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.g.get((g06) i06Var.b)), new p82(ms8.k(i06Var.c)));
        }
        if (n60Var instanceof zj5) {
            zj5 zj5Var = (zj5) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.q.get((xj5) zj5Var.b)), ms8.k(zj5Var.c));
        }
        if (n60Var instanceof o33) {
            o33 o33Var = (o33) n60Var;
            k33 k33Var = (k33) o33Var.b;
            byte[] bArrK2 = ms8.k(o33Var.c);
            ya yaVar2 = new ya((f1) fi8.s.get(k33Var));
            byte[] bArr3 = new byte[bArrK2.length + 1];
            bArr3[0] = (byte) k33Var.b;
            System.arraycopy(bArrK2, 0, bArr3, 1, bArrK2.length);
            return new SubjectPublicKeyInfo(yaVar2, bArr3);
        }
        if (n60Var instanceof r45) {
            r45 r45Var = (r45) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.G.get((o45) r45Var.b)), r45Var.getEncoded());
        }
        if (n60Var instanceof wj5) {
            wj5 wj5Var = (wj5) n60Var;
            uj5 uj5Var = (uj5) wj5Var.b;
            byte[] bArr4 = new byte[uj5Var.a];
            byte[] bArr5 = wj5Var.c;
            System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            byte[] bArr6 = wj5Var.d;
            System.arraycopy(bArr6, 0, bArr4, bArr5.length, bArr6.length);
            return new SubjectPublicKeyInfo(new ya((f1) fi8.u.get(uj5Var)), new p82(bArr4));
        }
        if (n60Var instanceof qv6) {
            qv6 qv6Var = (qv6) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.w.get((ov6) qv6Var.b)), new p82(ms8.k(qv6Var.c)));
        }
        if (n60Var instanceof ql2) {
            ql2 ql2Var = (ql2) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.y.get((ol2) ql2Var.b)), ms8.p(ql2Var.c, ql2Var.d));
        }
        if (n60Var instanceof j45) {
            j45 j45Var = (j45) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.I.get((h45) j45Var.b)), ms8.p(j45Var.c, j45Var.d));
        }
        if (n60Var instanceof hi0) {
            hi0 hi0Var = (hi0) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.A.get((fi0) hi0Var.b)), ms8.k(hi0Var.c));
        }
        if (n60Var instanceof l24) {
            l24 l24Var = (l24) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.C.get((j24) l24Var.b)), ms8.k(l24Var.c));
        }
        if (n60Var instanceof te6) {
            te6 te6Var = (te6) n60Var;
            re6 re6Var = (re6) te6Var.b;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.E.get(re6Var)), new p82(re6Var.k != 1 ? ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(te6Var.d, x13.s(te6Var.e, false)), x13.s(te6Var.f, true)), x13.s(te6Var.k, false)), x13.s(te6Var.n, true)), x13.s(te6Var.p, true)) : x13.s(te6Var.c, true)));
        }
        if (n60Var instanceof o95) {
            o95 o95Var = (o95) n60Var;
            return new SubjectPublicKeyInfo(new ya((f1) fi8.M.get((m95) o95Var.b)), new p82(ms8.k(o95Var.c)));
        }
        if (!(n60Var instanceof vi7)) {
            y5.m("key parameters not recognized");
            return null;
        }
        vi7 vi7Var = (vi7) n60Var;
        return new SubjectPublicKeyInfo(new ya((f1) fi8.O.get(vi7Var.c)), new p82(ms8.k(vi7Var.b)));
    }

    public static final long j(long j2) {
        long j3 = (j2 << 1) + 1;
        mr2.b.getClass();
        int i2 = nr2.a;
        return j3;
    }

    public static String k(HashMap map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            StringBuilder sb = new StringBuilder();
            sb.append((String) entry.getKey());
            sb.append("=");
            String str = (String) entry.getValue();
            str.getClass();
            try {
                sb.append(URLEncoder.encode(str, "utf-8"));
                arrayList.add(sb.toString());
            } catch (UnsupportedEncodingException unused) {
                l0.e("Unable to encode using UTF-8");
                return null;
            }
        }
        return TextUtils.join("&", arrayList);
    }

    public static q17 l(List list, int i2, int i3) {
        int i4 = i2;
        int i5 = i3;
        list.getClass();
        if (i4 < 0) {
            f6.g(fz5.j(i4, "SBA root tar list startIndex must be >= 0: "));
            return null;
        }
        if (i5 <= 0) {
            f6.g(fz5.j(i5, "SBA root tar list maxEntries must be > 0: "));
            return null;
        }
        int size = list.size();
        if (i4 > size) {
            i4 = size;
        }
        if (i5 > 128) {
            i5 = 128;
        }
        int i6 = 64;
        int i7 = i4;
        while (i7 < list.size() && i7 - i4 < i5) {
            z17 z17Var = (z17) list.get(i7);
            int length = (z17Var.a.length() * 2) + 104;
            String str = z17Var.c;
            int length2 = 0;
            int length3 = length + (str != null ? (str.length() * 2) + 8 : 0);
            Iterator it = z17Var.i.iterator();
            while (it.hasNext()) {
                length2 += (((String) it.next()).length() * 2) + 8;
            }
            int i8 = length3 + length2;
            if (i7 > i4 && i6 + i8 > 262144) {
                break;
            }
            i6 += i8;
            i7++;
        }
        List listSubList = list.subList(i4, i7);
        if (i7 >= list.size()) {
            i7 = -1;
        }
        ArrayList arrayList = new ArrayList(hl1.G0(listSubList, 10));
        for (Iterator it2 = listSubList.iterator(); it2.hasNext(); it2 = it2) {
            z17 z17Var2 = (z17) it2.next();
            z17Var2.getClass();
            arrayList.add(new p17(z17Var2.a, z17Var2.b.name(), z17Var2.c, z17Var2.d, z17Var2.e, z17Var2.f, z17Var2.g, z17Var2.h, new ArrayList(z17Var2.i)));
        }
        return new q17(new ArrayList(arrayList), i7);
    }

    public static int o(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | (bArr[i2] << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static int p(byte[] bArr, int i2) {
        return (bArr[i2 + 3] << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static int q(List list, InputStream inputStream, m35 m35Var) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new eg6(inputStream, m35Var);
        }
        inputStream.mark(yr5.n);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                int iD = ((x94) list.get(i2)).d(inputStream, m35Var);
                inputStream.reset();
                if (iD != -1) {
                    return iD;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return -1;
    }

    public static ImageHeaderParser$ImageType s(List list, InputStream inputStream, m35 m35Var) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new eg6(inputStream, m35Var);
        }
        inputStream.mark(yr5.n);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = ((x94) list.get(i2)).c(inputStream);
                inputStream.reset();
                if (imageHeaderParser$ImageTypeC != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeC;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static ImageHeaderParser$ImageType t(List list, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeA = ((x94) list.get(i2)).a(byteBuffer);
                AtomicReference atomicReference = ay0.a;
                if (imageHeaderParser$ImageTypeA != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeA;
                }
            } catch (Throwable th) {
                AtomicReference atomicReference2 = ay0.a;
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static cw5 w(ar arVar, String str, boolean z) {
        String strK;
        String strName;
        String str2;
        String str3;
        arVar.getClass();
        String upperCase = (str == null ? "" : str).toUpperCase(Locale.ROOT);
        upperCase.getClass();
        if (nq7.Z(upperCase, "INSTALL_FAILED_NO_MATCHING_ABIS", false)) {
            strK = "This APK set does not include native code for this device's CPU architecture. Ask the sender to share the app from a compatible device, or install it from the original source.";
        } else if (nq7.Z(upperCase, "INSTALL_FAILED_MISSING_SPLIT", false)) {
            strK = "This APK set is incomplete. Ask the sender to share the app again with all split APKs.";
        } else if (nq7.Z(upperCase, "INSTALL_FAILED_UPDATE_INCOMPATIBLE", false) || arVar == ar.STATUS_FAILURE_CONFLICT) {
            strK = "A version of this app is already installed with a different signature. Only uninstall the installed app first if you trust this APK set.";
        } else if (nq7.Z(upperCase, "INSTALL_FAILED_VERSION_DOWNGRADE", false)) {
            strK = "The APK is older than the installed app.";
        } else if (nq7.Z(upperCase, "INSTALL_FAILED_INSUFFICIENT_STORAGE", false) || arVar == ar.STATUS_FAILURE_STORAGE) {
            strK = "There is not enough free space to install this app.";
        } else if (nq7.Z(upperCase, "INSTALL_FAILED_INVALID_APK", false) || arVar == ar.STATUS_FAILURE_INVALID) {
            strK = "One or more APK files are invalid, corrupt, or incompatible with each other.";
        } else {
            if (arVar == ar.STATUS_FAILURE_BLOCKED) {
                strName = z ? " Advanced Protection is enabled on this device." : "";
                str2 = "APK install was blocked.";
                str3 = " Try restoring with root/Shizuku, or install with ADB if you trust the APK.";
            } else if (arVar == ar.STATUS_FAILURE_ABORTED) {
                strK = "APK install was cancelled or aborted by the system.";
            } else {
                strName = arVar.name();
                str2 = "APK install failed: ";
                str3 = ".";
            }
            strK = eq3.k(str2, strName, str3);
        }
        String strConcat = null;
        if (str != null) {
            if (nq7.j0(str)) {
                str = null;
            }
            if (str != null) {
                strConcat = "\n\nSystem message: ".concat(str);
            }
        }
        return new cw5("APK install failed", strK.concat(strConcat != null ? strConcat : ""));
    }

    public static uc8 x(File file) throws IOException {
        uc8 dy8Var;
        FileInputStream fileInputStream = new FileInputStream(file.getPath());
        byte[] bArr = new byte[4];
        fileInputStream.read(bArr);
        fileInputStream.getChannel().position(0L);
        if (Arrays.equals(bArr, br0.d)) {
            ar0 ar0Var = new ar0();
            ar0Var.b = 0;
            ar0Var.c = 0;
            ar0Var.f = 0;
            dy8Var = ar0Var;
        } else {
            XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
            dy8Var = xmlPullParserNewPullParser instanceof uc8 ? (uc8) xmlPullParserNewPullParser : new dy8(xmlPullParserNewPullParser);
        }
        try {
            dy8Var.setInput(fileInputStream, StandardCharsets.UTF_8.name());
            return dy8Var;
        } catch (XmlPullParserException e2) {
            throw new IOException(e2);
        }
    }

    public static final void y(ox1 ox1Var, Object obj) {
        if (obj == i) {
            return;
        }
        if (!(obj instanceof u28)) {
            Object objFold = ox1Var.fold(null, k);
            objFold.getClass();
            ((l28) objFold).h(obj);
            return;
        }
        u28 u28Var = (u28) obj;
        l28[] l28VarArr = u28Var.c;
        int length = l28VarArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i2 = length - 1;
            l28 l28Var = l28VarArr[length];
            l28Var.getClass();
            l28Var.h(u28Var.b[length]);
            if (i2 < 0) {
                return;
            } else {
                length = i2;
            }
        }
    }

    public static void z(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
    }

    public abstract Method m(Class cls, Field field);

    public abstract Constructor n(Class cls);

    public abstract String[] r(Class cls);

    public abstract boolean u(Class cls);

    public abstract boolean v();
}
