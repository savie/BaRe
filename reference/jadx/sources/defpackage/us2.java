package defpackage;

import android.content.Intent;
import android.graphics.Color;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import android.security.keystore.KeyGenParameterSpec;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.KeyStore;
import java.security.ProviderException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.logging.Logger;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class us2 implements cj8, a87, am6, kx0, gm2, z23, tf7, kw5, zm7, gk8 {
    public static final us2 b = new us2(1);
    public static final us2 c = new us2(2);
    public static final us2 d = new us2(3);
    public static final us2 e = new us2(4);
    public static final us2 f = new us2(5);
    public final /* synthetic */ int a;

    public /* synthetic */ us2(int i) {
        this.a = i;
    }

    public static ty3 B() throws GeneralSecurityException, IOException {
        byte[] bArrE;
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        synchronized (ty3.c) {
            if (!keyStore.containsAlias("_androidx_security_master_key_")) {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder("_androidx_security_master_key_", 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build();
                keyGenParameterSpecBuild.getClass();
                keyGenerator.init(keyGenParameterSpecBuild);
                keyGenerator.generateKey();
            }
        }
        Key key = keyStore.getKey("_androidx_security_master_key_", null);
        key.getClass();
        ty3 ty3Var = new ty3((SecretKey) key);
        byte[] bArr = new byte[10];
        new SecureRandom().nextBytes(bArr);
        byte[] bArr2 = rs9.c;
        try {
            bArrE = ty3Var.e(bArr, bArr2);
        } catch (GeneralSecurityException unused) {
            v();
            bArrE = ty3Var.e(bArr, bArr2);
        } catch (ProviderException unused2) {
            v();
            bArrE = ty3Var.e(bArr, bArr2);
        }
        if (Arrays.equals(bArr, ty3Var.c(bArrE, bArr2))) {
            return ty3Var;
        }
        m0.h("Android Keystore AES-GCM self-test failed");
        return null;
    }

    public static long C(long j, long j2, String str) throws qz6 {
        long j3 = j + j2;
        if (((j ^ j3) & (j2 ^ j3)) >= 0) {
            return j3;
        }
        y5.j("Integer overflow while computing ".concat(str), null);
        return 0L;
    }

    public static void D(k28 k28Var) {
        k28Var.getClass();
        if (!V.INSTANCE.getA()) {
            int i = PremiumActivity.V;
            rs9.u(k28Var);
        } else {
            Intent intentPutExtra = new Intent(k28Var, (Class<?>) LabelsActivity.class).putExtra("labels_activity_mode", 0);
            intentPutExtra.getClass();
            k28Var.startActivity(intentPutExtra);
        }
    }

    public static void E(k28 k28Var, int i, String[] strArr, boolean z, int i2) {
        int i3 = LabelsActivity.Z;
        if ((i2 & 16) != 0) {
            z = true;
        }
        if (!V.INSTANCE.getA()) {
            int i4 = PremiumActivity.V;
            rs9.u(k28Var);
            return;
        }
        lr4 lr4Var = lr4.a;
        if (!lr4.g()) {
            D(k28Var);
            return;
        }
        Intent intentPutExtra = new Intent(k28Var, (Class<?>) LabelsActivity.class).putExtra("labels_activity_mode", 2).putExtra("labels_extra_filtered_ids", strArr).putExtra("select_mode_replace_existing_labels", z);
        intentPutExtra.getClass();
        k28Var.startActivityForResult(intentPutExtra, i);
    }

    public static final long k(int i, long j) {
        if (j == 0) {
            return 0L;
        }
        long j2 = i;
        return C(j, (((j + j2) - 1) / j2) * 16, "AEAD encrypted payload size");
    }

    public static final String n(String str, byte[] bArr) throws qz6 {
        try {
            CharsetDecoder charsetDecoderNewDecoder = f51.a.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
            String string = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr)).toString();
            string.getClass();
            return string;
        } catch (CharacterCodingException e2) {
            y5.j("Malformed UTF-8 in SBA ".concat(str), e2);
            return null;
        }
    }

    public static final int q(cy0 cy0Var, l27 l27Var) {
        int i = !cy0Var.equals(oy6.j) ? 3 : 1;
        switch (t07.a[l27Var.ordinal()]) {
            case 1:
                return i;
            case 2:
                return i | 12;
            case 3:
                return i | 20;
            case 4:
                return i | 20;
            case 5:
            case 6:
                return i | 20;
            default:
                q.j();
                return 0;
        }
    }

    public static final boolean s(ey5 ey5Var) {
        ey5 ey5Var2 = vl6.e;
        hy0 hy0VarS = ey5Var.a;
        int iK = hy0.k(hy0VarS, c.a);
        if (iK == -1) {
            iK = hy0.k(ey5Var.a, c.b);
        }
        if (iK != -1) {
            hy0VarS = hy0.s(hy0VarS, iK + 1, 0, 2);
        } else if (ey5Var.c() != null && hy0VarS.d() == 2) {
            hy0VarS = hy0.d;
        }
        return !uq7.O(hy0VarS.w(), ".class", true);
    }

    public static final int t(ByteBuffer byteBuffer) {
        fh fhVar = fh.g;
        byte b2 = byteBuffer.get();
        int i = b2 & 255;
        if ((b2 & 128) == 0) {
            return i;
        }
        return (byteBuffer.get() & 255) | ((b2 & 127) << 7);
    }

    public static final void u(tq2 tq2Var) throws IOException {
        List list = tq2Var.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            uq2 uq2Var = (uq2) obj;
            boolean z = uq2Var.a;
            if (z) {
                if (z) {
                    String str = uq2Var.b;
                    if (str == null) {
                        str = "";
                    }
                    if (uq7.V(str, "path_lookup/not_found", false) || pe4.d(uq2Var.c, fl1.A0("path_lookup", "not_found"))) {
                    }
                }
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        y5.m(dj7.j("Failed deleting ", arrayList.size(), "/", " Dropbox files", list.size()));
    }

    public static final void v() {
        try {
            Thread.sleep((long) (Math.random() * 100.0d));
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static s74 w(yr7 yr7Var) throws kd5 {
        nd5 nd5Var = yr7Var.a;
        Class cls = nd5Var.e;
        if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
            throw new kd5("The handler invocation must be top level class or nested STATIC inner class");
        }
        try {
            s74 s74Var = (s74) cls.getConstructor(yr7.class).newInstance(yr7Var);
            s74 s74Var2 = s74Var;
            if (nd5Var.k) {
                fv7 fv7Var = new fv7((yr7) ((ol1) s74Var).b, 5);
                fv7Var.e = s74Var;
                s74Var2 = fv7Var;
            }
            return nd5Var.f.equals(lg4.b) ? new e70(s74Var2) : s74Var2;
        } catch (NoSuchMethodException e2) {
            throw new kd5("The provided handler invocation did not specify the necessary constructor " + cls.getSimpleName() + "(SubscriptionContext);", e2);
        } catch (Exception e3) {
            throw new kd5("Could not instantiate the provided handler invocation ".concat(cls.getSimpleName()), e3);
        }
    }

    public static xr7 y(ix0 ix0Var, nd5 nd5Var) throws kd5 {
        String str;
        try {
            yr7 yr7Var = new yr7(ix0Var, nd5Var, (Collection) ix0Var.c("bus.handlers.error"));
            x74 ld5Var = new ld5(yr7Var, w(yr7Var));
            if (nd5Var.g) {
                ld5Var = new ux2(ld5Var);
            }
            if (nd5Var.b.length > 0 || ((str = nd5Var.c) != null && str.trim().length() > 0)) {
                ld5Var = new ke3(ld5Var);
            }
            ty4 ty4Var = nd5Var.j.b;
            return new xr7(yr7Var, ld5Var, (ty4Var == null || !ty4Var.references().equals(nh6.a)) ? new cq8(new WeakHashMap()) : new zq7());
        } catch (Exception e2) {
            throw new kd5(e2);
        }
    }

    public void A(float f2, float f3, float f4, mc7 mc7Var) {
        mc7Var.c(f2, 0.0f);
    }

    @Override // defpackage.kx0
    public Class a() {
        return InputStream.class;
    }

    @Override // defpackage.tf7
    public boolean b(st6 st6Var, SecretKey secretKey) {
        return true;
    }

    @Override // defpackage.zm7
    public boolean c(long j) {
        return j == 0 || j == 3221225768L;
    }

    @Override // defpackage.a87
    public Object d() {
        return new ij5(true);
    }

    @Override // defpackage.gm2
    public File e(jo4 jo4Var) {
        return null;
    }

    @Override // defpackage.ea6
    public Object get() {
        return new fx6(Executors.newSingleThreadExecutor());
    }

    @Override // defpackage.a87
    public void h(Object obj, qd8 qd8Var) {
        av3 av3VarA;
        Map mapA = ((ij5) obj).a();
        o46 o46VarN = q46.n();
        for (Map.Entry entry : mapA.entrySet()) {
            l46 l46Var = (l46) entry.getKey();
            Object value = entry.getValue();
            String str = l46Var.a;
            if (value instanceof Boolean) {
                t46 t46VarD = u46.D();
                boolean zBooleanValue = ((Boolean) value).booleanValue();
                t46VarD.c();
                u46.q((u46) t46VarD.b, zBooleanValue);
                av3VarA = t46VarD.a();
            } else if (value instanceof Float) {
                t46 t46VarD2 = u46.D();
                float fFloatValue = ((Number) value).floatValue();
                t46VarD2.c();
                u46.r((u46) t46VarD2.b, fFloatValue);
                av3VarA = t46VarD2.a();
            } else if (value instanceof Double) {
                t46 t46VarD3 = u46.D();
                double dDoubleValue = ((Number) value).doubleValue();
                t46VarD3.c();
                u46.o((u46) t46VarD3.b, dDoubleValue);
                av3VarA = t46VarD3.a();
            } else if (value instanceof Integer) {
                t46 t46VarD4 = u46.D();
                int iIntValue = ((Number) value).intValue();
                t46VarD4.c();
                u46.s((u46) t46VarD4.b, iIntValue);
                av3VarA = t46VarD4.a();
            } else if (value instanceof Long) {
                t46 t46VarD5 = u46.D();
                long jLongValue = ((Number) value).longValue();
                t46VarD5.c();
                u46.l((u46) t46VarD5.b, jLongValue);
                av3VarA = t46VarD5.a();
            } else if (value instanceof String) {
                t46 t46VarD6 = u46.D();
                t46VarD6.c();
                u46.m((u46) t46VarD6.b, (String) value);
                av3VarA = t46VarD6.a();
            } else if (value instanceof Set) {
                t46 t46VarD7 = u46.D();
                r46 r46VarO = s46.o();
                r46VarO.c();
                s46.l((s46) r46VarO.b, (Set) value);
                t46VarD7.c();
                u46.n((u46) t46VarD7.b, (s46) r46VarO.a());
                av3VarA = t46VarD7.a();
            } else {
                if (!(value instanceof byte[])) {
                    l0.e("PreferencesSerializer does not support type: ".concat(value.getClass().getName()));
                    return;
                }
                t46 t46VarD8 = u46.D();
                byte[] bArr = (byte[]) value;
                gy0 gy0VarE = gy0.e(bArr, 0, bArr.length);
                t46VarD8.c();
                u46.p((u46) t46VarD8.b, gy0VarE);
                av3VarA = t46VarD8.a();
            }
            o46VarN.getClass();
            str.getClass();
            o46VarN.c();
            q46.l((q46) o46VarN.b).put(str, (u46) av3VarA);
        }
        q46 q46Var = (q46) o46VarN.a();
        int iA = q46Var.a(null);
        Logger logger = jk1.f;
        if (iA > 4096) {
            iA = 4096;
        }
        jk1 jk1Var = new jk1(qd8Var, iA);
        q46Var.b(jk1Var);
        if (jk1Var.d > 0) {
            jk1Var.k();
        }
    }

    @Override // defpackage.gk8
    public void i(MediaExtractor mediaExtractor, Object obj) throws IOException {
        mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // defpackage.kx0
    public Object j(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }

    @Override // defpackage.a87
    public Object l(FileInputStream fileInputStream) throws dy1 {
        byte[] bArr;
        try {
            q46 q46VarO = q46.o(fileInputStream);
            ij5 ij5Var = new ij5(false);
            m46[] m46VarArr = (m46[]) Arrays.copyOf(new m46[0], 0);
            ij5Var.b();
            if (m46VarArr.length > 0) {
                m46 m46Var = m46VarArr[0];
                throw null;
            }
            Map mapM = q46VarO.m();
            mapM.getClass();
            for (Map.Entry entry : mapM.entrySet()) {
                String str = (String) entry.getKey();
                u46 u46Var = (u46) entry.getValue();
                str.getClass();
                u46Var.getClass();
                int iC = u46Var.C();
                switch (iC == 0 ? -1 : n46.a[dj7.A(iC)]) {
                    case -1:
                        throw new dy1("Value case is null.", null);
                    case 0:
                    default:
                        q.j();
                        return null;
                    case 1:
                        ij5Var.d(new l46(str), Boolean.valueOf(u46Var.t()));
                        break;
                    case 2:
                        ij5Var.d(new l46(str), Float.valueOf(u46Var.x()));
                        break;
                    case 3:
                        ij5Var.d(new l46(str), Double.valueOf(u46Var.w()));
                        break;
                    case 4:
                        ij5Var.d(new l46(str), Integer.valueOf(u46Var.y()));
                        break;
                    case 5:
                        ij5Var.d(new l46(str), Long.valueOf(u46Var.z()));
                        break;
                    case 6:
                        l46 l46Var = new l46(str);
                        String strA = u46Var.A();
                        strA.getClass();
                        ij5Var.d(l46Var, strA);
                        break;
                    case 7:
                        l46 l46Var2 = new l46(str);
                        xd4 xd4VarN = u46Var.B().n();
                        xd4VarN.getClass();
                        ij5Var.d(l46Var2, el1.z1(xd4VarN));
                        break;
                    case 8:
                        l46 l46Var3 = new l46(str);
                        gy0 gy0VarU = u46Var.u();
                        int size = gy0VarU.size();
                        if (size == 0) {
                            bArr = yd4.b;
                        } else {
                            byte[] bArr2 = new byte[size];
                            gy0VarU.f(bArr2, size);
                            bArr = bArr2;
                        }
                        bArr.getClass();
                        ij5Var.d(l46Var3, bArr);
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        throw new dy1("Value not set.", null);
                }
            }
            return new ij5(new LinkedHashMap(ij5Var.a()), true);
        } catch (fg4 e2) {
            throw new dy1("Unable to parse preferences proto.", e2);
        }
    }

    @Override // defpackage.gk8
    public void o(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // defpackage.kw5
    public boolean p(byte[] bArr) {
        return bArr.length >= 4 && bArr[0] == -3 && bArr[1] == 83 && bArr[2] == 77 && bArr[3] == 66;
    }

    @Override // defpackage.cj8
    public Object r(ul4 ul4Var, float f2) {
        boolean z;
        switch (this.a) {
            case 1:
                z = ul4Var.v() == 1;
                if (z) {
                    ul4Var.a();
                }
                double dQ = ul4Var.q();
                double dQ2 = ul4Var.q();
                double dQ3 = ul4Var.q();
                double dQ4 = ul4Var.v() == 7 ? ul4Var.q() : 1.0d;
                if (z) {
                    ul4Var.g();
                }
                if (dQ <= 1.0d && dQ2 <= 1.0d && dQ3 <= 1.0d) {
                    dQ *= 255.0d;
                    dQ2 *= 255.0d;
                    dQ3 *= 255.0d;
                    if (dQ4 <= 1.0d) {
                        dQ4 *= 255.0d;
                    }
                }
                return Integer.valueOf(Color.argb((int) dQ4, (int) dQ, (int) dQ2, (int) dQ3));
            case 2:
                return gn4.b(ul4Var, f2);
            default:
                z = ul4Var.v() == 1;
                if (z) {
                    ul4Var.a();
                }
                float fQ = (float) ul4Var.q();
                float fQ2 = (float) ul4Var.q();
                while (ul4Var.m()) {
                    ul4Var.G();
                }
                if (z) {
                    ul4Var.g();
                }
                return new p27((fQ / 100.0f) * f2, (fQ2 / 100.0f) * f2);
        }
    }

    @Override // defpackage.kw5
    public ev6 read(byte[] bArr) {
        return new vu6(new nu6(), bArr);
    }

    public float x(float f2) {
        return 1.0f;
    }

    public boolean z() {
        return this instanceof h75;
    }

    @Override // defpackage.tf7
    public rt6 f(rt6 rt6Var, SecretKey secretKey) {
        return rt6Var;
    }

    @Override // defpackage.gm2
    public void g(jo4 jo4Var, u94 u94Var) {
    }

    @Override // defpackage.am6
    public ll6 m(ll6 ll6Var, ou5 ou5Var) {
        return ll6Var;
    }
}
