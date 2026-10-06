package defpackage;

import android.content.res.AssetFileDescriptor;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.view.View;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ma2 implements mo1, vl0, dh5, fy0, e33, nx1, hu5, z23, y57, r67, gk8, aa9, es9, gt9, cs9, y1a {
    public static final ma2 b = new ma2(1);
    public final /* synthetic */ int a;

    public ma2(View view) {
        this.a = 21;
    }

    public static ff2 q(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return new ff2(httpURLConnection);
    }

    public static ey5 r(String str) {
        str.getClass();
        hy0 hy0Var = c.a;
        nw0 nw0Var = new nw0();
        nw0Var.Z(str);
        return c.d(nw0Var, false);
    }

    @Override // defpackage.fy0
    public byte[] a(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }

    @Override // defpackage.vl0
    public boolean c(float f) {
        throw new IllegalStateException("not implemented");
    }

    @Override // defpackage.aa9
    public Object d(ix0 ix0Var, Class cls) throws GeneralSecurityException {
        d2a d2aVarJ;
        List arrayList;
        if (cls != w99.class) {
            m0.h("AeadConfigurationV1 can only create AEADs");
            return null;
        }
        hx0 hx0Var = new hx0(17);
        HashMap map = new HashMap();
        for (int i = 0; i < ((List) ix0Var.b).size(); i++) {
            lb9 lb9VarP = ix0Var.p(i);
            if (lb9VarP.c.equals(ia9.c)) {
                vm4 vm4VarA = lb9VarP.a();
                if (vm4VarA instanceof oe9) {
                    d2aVarJ = ((oe9) vm4VarA).J();
                } else {
                    if (!(vm4VarA instanceof ns9)) {
                        throw new GeneralSecurityException(dj7.l("Cannot get output prefix for key of class ", vm4VarA.getClass().getName(), " with parameters ", String.valueOf(vm4VarA.G())));
                    }
                    d2aVarJ = ((ns9) vm4VarA).J();
                }
                on9 on9Var = new on9((w99) hx0Var.o(lb9VarP), lb9VarP.d);
                byte[] bArr = d2aVarJ.a;
                if (bArr.length != 0 && bArr.length != 5) {
                    m0.h("PrefixMap only supports 0 and 5 byte prefixes");
                    return null;
                }
                if (map.containsKey(d2aVarJ)) {
                    arrayList = (List) map.get(d2aVarJ);
                } else {
                    arrayList = new ArrayList();
                    map.put(d2aVarJ, arrayList);
                }
                arrayList.add(on9Var);
            }
        }
        ix0Var.q();
        return cls.cast(new sn9(new on9((w99) hx0Var.o(ix0Var.w()), ix0Var.w().d), new it9(map)));
    }

    @Override // defpackage.y1a
    public /* synthetic */ Object e(String str, Provider provider) {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) throws GeneralSecurityException {
        r0a r0aVar;
        switch (this.a) {
            case 24:
                kh9 kh9Var = (kh9) vm4Var;
                b0a b0aVarW = c0a.w();
                h0a h0aVarT = i0a.t();
                String str = kh9Var.d.a;
                h0aVarT.c();
                i0a.v((i0a) h0aVarT.b, str);
                i0a i0aVar = (i0a) h0aVarT.b();
                b0aVarW.c();
                c0a.v((c0a) b0aVarW.b, i0aVar);
                x69 x69VarB = ((c0a) b0aVarW.b()).b();
                lh9 lh9Var = kh9Var.d.b;
                if (lh9.c == lh9Var) {
                    r0aVar = r0a.TINK;
                } else {
                    if (lh9.d != lh9Var) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(lh9Var)));
                    }
                    r0aVar = r0a.RAW;
                }
                return pt9.a("type.googleapis.com/google.crypto.tink.KmsAeadKey", x69VarB, 5, r0aVar, kh9Var.f);
            default:
                to9 to9Var = (to9) vm4Var;
                xw9 xw9VarW = yw9.w();
                byte[] bArrB = ((d2a) to9Var.e.a).b();
                x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
                xw9VarW.c();
                yw9.v((yw9) xw9VarW.b, x69VarG);
                x69 x69VarB2 = ((yw9) xw9VarW.b()).b();
                cp9 cp9Var = to9Var.d.b;
                Map map = lp9.e;
                if (map.containsKey(cp9Var)) {
                    return pt9.a("type.googleapis.com/google.crypto.tink.AesSivKey", x69VarB2, 2, (r0a) map.get(cp9Var), to9Var.k);
                }
                throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(cp9Var)));
        }
    }

    @Override // defpackage.vl0
    public wo4 g() {
        throw new IllegalStateException("not implemented");
    }

    @Override // defpackage.ea6
    public Object get() {
        b05 b05Var = new b05();
        HashMap map = new HashMap();
        Set set = Collections.EMPTY_SET;
        if (set == null) {
            f6.n("Null flags");
            return null;
        }
        map.put(d66.a, new he0(30000L, 86400000L, set));
        if (set == null) {
            f6.n("Null flags");
            return null;
        }
        map.put(d66.c, new he0(1000L, 86400000L, set));
        if (set == null) {
            f6.n("Null flags");
            return null;
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(r47.b)));
        if (setUnmodifiableSet == null) {
            f6.n("Null flags");
            return null;
        }
        map.put(d66.b, new he0(86400000L, 86400000L, setUnmodifiableSet));
        if (map.keySet().size() >= d66.values().length) {
            new HashMap();
            return new ge0(b05Var, map);
        }
        l0.e("Not all priorities have been configured");
        return null;
    }

    @Override // defpackage.vl0
    public boolean h(float f) {
        return false;
    }

    @Override // defpackage.gk8
    public void i(MediaExtractor mediaExtractor, Object obj) throws IOException {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // defpackage.vl0
    public boolean isEmpty() {
        return true;
    }

    @Override // defpackage.e33
    public void j(Object obj) {
        ((List) obj).clear();
    }

    @Override // defpackage.vl0
    public float k() {
        return 1.0f;
    }

    @Override // defpackage.vl0
    public float l() {
        return 0.0f;
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        Object objG = pp0Var.g(new nc6(ku4.class, Executor.class));
        objG.getClass();
        return rs9.e((Executor) objG);
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 27:
                String str = pt9Var.a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.HpkePublicKey")) {
                    c6.f(xs1.j("Wrong type URL in call to HpkeProtoSerialization.parsePublicKey: ", str));
                    return null;
                }
                try {
                    gz9 gz9VarU = gz9.u(pt9Var.c, f79.a);
                    if (gz9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    lq9 lq9VarA = rq9.a(pt9Var.e, gz9VarU.y());
                    return vq9.K(lq9VarA, rq9.c(lq9VarA.a, gz9VarU.B().w()), pt9Var.f);
                } catch (p79 unused) {
                    m0.h("Parsing HpkePublicKey failed");
                    return null;
                }
            default:
                if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
                    c6.f("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
                    return null;
                }
                try {
                    cv9 cv9VarU = cv9.u(pt9Var.c, f79.a);
                    if (cv9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    l22 l22VarB = eu9.b();
                    l22VarB.r(cv9VarU.z().d());
                    l22VarB.s(cv9VarU.y().t());
                    l22VarB.d = qu9.a(pt9Var.e);
                    eu9 eu9VarQ = l22VarB.q();
                    gd gdVar = new gd(10);
                    gdVar.c = null;
                    gdVar.d = null;
                    gdVar.b = eu9VarQ;
                    gdVar.c = new km8(d2a.a(cv9VarU.z().w()));
                    gdVar.d = pt9Var.f;
                    return gdVar.p();
                } catch (IllegalArgumentException | p79 unused2) {
                    m0.h("Parsing AesCmacKey failed");
                    return null;
                }
        }
    }

    @Override // defpackage.gk8
    public void o(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) {
        gf9 gf9Var = (gf9) bd9Var;
        lz9 lz9VarT = mz9.t();
        lz9VarT.f("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        nv9 nv9VarT = ov9.t();
        vv9 vv9VarW = wv9.w();
        yv9 yv9VarV = zv9.v();
        int i = gf9Var.c;
        yv9VarV.c();
        ((zv9) yv9VarV.b).zze = i;
        zv9 zv9Var = (zv9) yv9VarV.b();
        vv9VarW.c();
        wv9.v((wv9) vv9VarW.b, zv9Var);
        int i2 = gf9Var.a;
        vv9VarW.c();
        ((wv9) vv9VarW.b).zzg = i2;
        wv9 wv9Var = (wv9) vv9VarW.b();
        nv9VarT.c();
        ov9.v((ov9) nv9VarT.b, wv9Var);
        ly9 ly9VarY = my9.y();
        py9 py9VarD = mk9.d(gf9Var);
        ly9VarY.c();
        my9.w((my9) ly9VarY.b, py9VarD);
        int i3 = gf9Var.b;
        ly9VarY.c();
        ((my9) ly9VarY.b).zzg = i3;
        my9 my9Var = (my9) ly9VarY.b();
        nv9VarT.c();
        ov9.w((ov9) nv9VarT.b, my9Var);
        lz9VarT.h(((ov9) nv9VarT.b()).b());
        lz9VarT.e(mk9.c(gf9Var.e));
        return ot9.m((mz9) lz9VarT.b());
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new sx0(0);
    }

    public /* synthetic */ ma2(int i) {
        this.a = i;
    }

    @Override // defpackage.hu5
    public void b(byte[] bArr, Object obj, MessageDigest messageDigest) {
    }

    @Override // defpackage.y57
    public void onScrollLimit(int i, int i2, int i3, boolean z) {
    }

    @Override // defpackage.y57
    public void onScrollProgress(int i, int i2, int i3, int i4) {
    }
}
