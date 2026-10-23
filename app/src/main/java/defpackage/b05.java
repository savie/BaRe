package defpackage;

import android.graphics.Path;
import java.io.File;
import java.lang.reflect.Array;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b05 implements dh5, zm7, am6, x76, zo7, ba1, et9, gt9, cs9, es9 {
    public static final b05 a = new b05();

    public static Path a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        path.lineTo(f3, f4);
        return path;
    }

    public static jr7 h() {
        g00 g00Var = g00.a;
        return new jr7(new File(new File(new File((File) mk7.a.getValue(), "system"), "users"), String.valueOf(g00.i())).getAbsolutePath(), "settings_ssaid.xml");
    }

    public static List j(Inet4Address inet4Address, int i) {
        int iH = l73.h(i, 24, 30);
        byte[] address = inet4Address.getAddress();
        address.getClass();
        if (address.length != 4) {
            c6.f("Expected IPv4 address bytes");
            return null;
        }
        int i2 = 1;
        int i3 = 3;
        int i4 = (address[3] & 255) | ((address[0] & 255) << 24) | ((address[1] & 255) << 16) | ((address[2] & 255) << 8);
        int i5 = iH == 0 ? 0 : (-1) << (32 - iH);
        int i6 = i4 & i5;
        int i7 = (~i5) | i6;
        String hostAddress = inet4Address.getHostAddress();
        nd4 nd4VarF = l73.F(i6 + 1, i7);
        nd4VarF.getClass();
        return h77.C0(h77.B0(new me3(new q98(new ll1(nd4VarF), new ai(i3)), false, new qh1(hostAddress, i2)), 254));
    }

    public static s35 l(io1 io1Var, String str, String str2, int i) {
        if ((i & 2) != 0) {
            str = null;
        }
        String string = (i & 8) != 0 ? null : "Ok";
        io1Var.getClass();
        str2.getClass();
        s35 s35Var = new s35(io1Var, R.style.M3AlertDialogTheme, new hv1(io1Var, R.style.M3AlertDialogTheme), null);
        ra raVar = (ra) s35Var.b;
        if (str != null && str.length() != 0) {
            raVar.d = str;
        }
        raVar.f = str2;
        if (string == null || string.length() == 0) {
            string = io1Var.getString(R.string.ok);
            string.getClass();
        }
        s35Var.t(string, null);
        s35Var.m();
        return s35Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.zo7
    public wi8 b(vb8 vb8Var, xn5 xn5Var, Map map) {
        pn5 pn5VarRemove = xn5Var.remove("class");
        Class<?> type = vb8Var.getType();
        if (type.isArray()) {
            type = type.getComponentType();
        }
        if (pn5VarRemove != null) {
            String value = pn5VarRemove.getValue();
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = cz4.class.getClassLoader();
            }
            type = contextClassLoader.loadClass(value);
        }
        Class<?> type2 = vb8Var.getType();
        Object[] objArr = 0;
        if (!type2.isArray()) {
            if (type2 == type) {
                return null;
            }
            cd cdVar = new cd(11, (boolean) (objArr == true ? 1 : 0));
            cdVar.c = type;
            return cdVar;
        }
        pn5 pn5VarRemove2 = xn5Var.remove("length");
        int i = pn5VarRemove2 != null ? Integer.parseInt(pn5VarRemove2.getValue()) : 0;
        u50 u50Var = new u50();
        u50Var.c = type;
        u50Var.a = i;
        return u50Var;
    }

    @Override // defpackage.zm7
    public boolean c(long j) {
        return j == 3221225524L || j == 3221225530L || j == 3221225658L || j == 3221225558L;
    }

    @Override // defpackage.zo7
    public boolean d(vb8 vb8Var, Object obj, xn5 xn5Var, Map map) {
        Class<?> componentType;
        Class<?> cls = obj.getClass();
        Class<?> type = vb8Var.getType();
        if (cls.isArray()) {
            xn5Var.A("length", String.valueOf(Array.getLength(obj)));
            componentType = type.getComponentType();
        } else {
            componentType = cls;
        }
        if (cls == type) {
            return false;
        }
        xn5Var.A("class", componentType.getName());
        return false;
    }

    @Override // defpackage.ba1
    public long e() {
        return System.currentTimeMillis();
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) throws GeneralSecurityException {
        fq9 fq9Var = (fq9) vm4Var;
        sx9 sx9VarY = tx9.y();
        sx9VarY.c();
        ((tx9) sx9VarY.b).zzf = 0;
        wx9 wx9VarC = gr9.c(fq9Var.d);
        sx9VarY.c();
        tx9.x((tx9) sx9VarY.b, wx9VarC);
        cq9 cq9Var = fq9Var.d.d;
        if (cq9Var.a.equals(yp9.e)) {
            byte[] bArrB = ((d2a) fq9Var.f.a).b();
            x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
            sx9VarY.c();
            tx9.w((tx9) sx9VarY.b, x69VarG);
        } else {
            byte[] bArrI = wx3.I(gr9.a(cq9Var.a), (BigInteger) fq9Var.e.b);
            x69 x69VarG2 = t69.g(bArrI, 0, bArrI.length);
            sx9VarY.c();
            tx9.w((tx9) sx9VarY.b, x69VarG2);
        }
        return pt9.a("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", ((tx9) sx9VarY.b()).b(), 3, (r0a) gr9.g.k(cq9Var.d), fq9Var.H());
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        mz9 mz9Var = (mz9) ot9Var.b;
        if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            c6.f(xs1.j("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ", mz9Var.B()));
            return null;
        }
        try {
            fw9 fw9VarU = fw9.u(mz9Var.A(), f79.a);
            ju7 ju7VarB = sf9.b();
            ju7VarB.k(fw9VarU.t());
            ju7VarB.j(fw9VarU.y().t());
            ju7VarB.l();
            ju7VarB.e = sk9.a(mz9Var.z());
            return ju7VarB.i();
        } catch (p79 e) {
            throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e);
        }
    }

    @Override // defpackage.am6
    public ll6 m(ll6 ll6Var, ou5 ou5Var) {
        byte[] bArrArray;
        ByteBuffer byteBufferAsReadOnlyBuffer = ((fx3) ll6Var.get()).a.a.a.d.asReadOnlyBuffer();
        AtomicReference atomicReference = ay0.a;
        zx0 zx0Var = (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) ? null : new zx0(byteBufferAsReadOnlyBuffer.array(), byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.limit());
        if (zx0Var != null && zx0Var.a == 0 && zx0Var.b == zx0Var.c.length) {
            bArrArray = byteBufferAsReadOnlyBuffer.array();
        } else {
            ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
            byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
            byteBufferAsReadOnlyBuffer2.get(bArr);
            bArrArray = bArr;
        }
        return new jy0(bArrArray);
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            c6.f("Wrong type URL in call to XAesGcmProtoSerialization.parseKey");
            return null;
        }
        try {
            u0a u0aVarU = u0a.u(pt9Var.c, f79.a);
            if (u0aVarU.t() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (u0aVarU.z().d() == 32) {
                return mj9.K(xj9.b(tn9.a(pt9Var.e), u0aVarU.y().t()), new km8(d2a.a(u0aVarU.z().w())), pt9Var.f);
            }
            throw new GeneralSecurityException("Only 32 byte key size is accepted");
        } catch (p79 unused) {
            m0.h("Parsing XAesGcmKey failed");
            return null;
        }
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) {
        tg9 tg9Var = (tg9) bd9Var;
        lz9 lz9VarT = mz9.t();
        lz9VarT.f("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        tw9 tw9VarX = uw9.x();
        int i = tg9Var.a;
        tw9VarX.c();
        ((uw9) tw9VarX.b).zze = i;
        lz9VarT.h(((uw9) tw9VarX.b()).b());
        lz9VarT.e(sl9.b(tg9Var.b));
        return ot9.m((mz9) lz9VarT.b());
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new mx0(new us2(8));
    }

    @Override // defpackage.x76
    public void i() {
    }

    @Override // defpackage.x76
    public void k(int i, Object obj) {
    }
}
