package defpackage;

import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fk8 implements gk8, q36, et9, es9, cs9, gt9, y1a {
    public final /* synthetic */ int a;

    public /* synthetic */ fk8(int i) {
        this.a = i;
    }

    @Override // defpackage.q36
    public boolean a(Object obj) {
        return ((kh8) obj).e;
    }

    @Override // defpackage.y1a
    public /* synthetic */ Object e(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        te9 te9Var = (te9) vm4Var;
        kv9 kv9VarX = lv9.x();
        qv9 qv9VarW = rv9.w();
        yv9 yv9VarV = zv9.v();
        int i = te9Var.d.c;
        yv9VarV.c();
        ((zv9) yv9VarV.b).zze = i;
        zv9 zv9Var = (zv9) yv9VarV.b();
        qv9VarW.c();
        rv9.v((rv9) qv9VarW.b, zv9Var);
        byte[] bArrB = ((d2a) te9Var.e.a).b();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        qv9VarW.c();
        rv9.u((rv9) qv9VarW.b, x69VarG);
        rv9 rv9Var = (rv9) qv9VarW.b();
        kv9VarX.c();
        lv9.v((lv9) kv9VarX.b, rv9Var);
        hy9 hy9VarX = iy9.x();
        gf9 gf9Var = te9Var.d;
        py9 py9VarD = mk9.d(gf9Var);
        hy9VarX.c();
        iy9.w((iy9) hy9VarX.b, py9VarD);
        byte[] bArrB2 = ((d2a) te9Var.f.a).b();
        x69 x69VarG2 = t69.g(bArrB2, 0, bArrB2.length);
        hy9VarX.c();
        iy9.v((iy9) hy9VarX.b, x69VarG2);
        iy9 iy9Var = (iy9) hy9VarX.b();
        kv9VarX.c();
        lv9.w((lv9) kv9VarX.b, iy9Var);
        return pt9.a("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((lv9) kv9VarX.b()).b(), 2, mk9.c(gf9Var.e), te9Var.n);
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        mz9 mz9Var = (mz9) ot9Var.b;
        if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            c6.f(xs1.j("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ", mz9Var.B()));
            return null;
        }
        try {
            return new mh9(i0a.u(mz9Var.A(), f79.a).x(), wh9.a(mz9Var.z()));
        } catch (p79 e) {
            throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e);
        }
    }

    @Override // defpackage.gk8
    public void i(MediaExtractor mediaExtractor, Object obj) throws IOException {
        mediaExtractor.setDataSource(new ek8((ByteBuffer) obj));
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 6:
                if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    c6.f("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
                    return null;
                }
                try {
                    ex9 ex9VarU = ex9.u(pt9Var.c, f79.a);
                    if (ex9VarU.t() == 0) {
                        return vg9.K(pm9.a(pt9Var.e), new km8(d2a.a(ex9VarU.x().w())), pt9Var.f);
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (p79 unused) {
                    m0.h("Parsing ChaCha20Poly1305Key failed");
                    return null;
                }
            default:
                String str = pt9Var.a;
                if (!str.equals("type.googleapis.com/google.crypto.tink.HpkePrivateKey")) {
                    c6.f(xs1.j("Wrong type URL in call to HpkeProtoSerialization.parsePrivateKey: ", str));
                    return null;
                }
                try {
                    dz9 dz9VarU = dz9.u(pt9Var.c, f79.a);
                    if (dz9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    gz9 gz9VarZ = dz9VarU.z();
                    if (gz9VarZ.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    lq9 lq9VarA = rq9.a(pt9Var.e, gz9VarZ.y());
                    jq9 jq9Var = lq9VarA.a;
                    return oq9.K(vq9.K(lq9VarA, rq9.c(jq9Var, gz9VarZ.B().w()), pt9Var.f), new km8(d2a.a(wx3.I(or9.a(jq9Var), wx3.G(dz9VarU.A().w())))));
                } catch (p79 unused2) {
                    m0.h("Parsing HpkePrivateKey failed");
                    return null;
                }
        }
    }

    @Override // defpackage.gk8
    public void o(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(new ek8((ByteBuffer) obj));
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) {
        switch (this.a) {
            case 8:
                cq9 cq9Var = (cq9) bd9Var;
                lz9 lz9VarT = mz9.t();
                lz9VarT.f("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
                mx9 mx9VarT = nx9.t();
                qx9 qx9VarD = gr9.d(cq9Var);
                mx9VarT.c();
                nx9.v((nx9) mx9VarT.b, qx9VarD);
                lz9VarT.h(((nx9) mx9VarT.b()).b());
                lz9VarT.e((r0a) gr9.g.k(cq9Var.d));
                return ot9.m((mz9) lz9VarT.b());
            default:
                mu9 mu9Var = (mu9) bd9Var;
                lz9 lz9VarT2 = mz9.t();
                lz9VarT2.f("type.googleapis.com/google.crypto.tink.HmacKey");
                ly9 ly9VarY = my9.y();
                oy9 oy9VarX = py9.x();
                int i = mu9Var.b;
                oy9VarX.c();
                ((py9) oy9VarX.b).zzf = i;
                jy9 jy9Var = (jy9) su9.b.k(mu9Var.d);
                oy9VarX.c();
                ((py9) oy9VarX.b).zze = jy9Var.zza();
                py9 py9Var = (py9) oy9VarX.b();
                ly9VarY.c();
                my9.w((my9) ly9VarY.b, py9Var);
                int i2 = mu9Var.a;
                ly9VarY.c();
                ((my9) ly9VarY.b).zzg = i2;
                lz9VarT2.h(((my9) ly9VarY.b()).b());
                lz9VarT2.e((r0a) su9.a.k(mu9Var.c));
                return ot9.m((mz9) lz9VarT2.b());
        }
    }
}
