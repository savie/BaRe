package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.google.firebase.components.ComponentRegistrar;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hx0 implements vc5, zv2, nx1, e33, q36, aj8, dh5, gt9, es9, cs9, et9, hr9, y1a {
    public static final hx0 b = new hx0(0);
    public final /* synthetic */ int a;

    public /* synthetic */ hx0(int i) {
        this.a = i;
    }

    public static Object m(bt3 bt3Var) throws Exception {
        gv7 gv7Var = by3.a;
        y63 y63Var = new y63(1, Const.a, Const.class, "sleepTemporarily", "sleepTemporarily(J)V", 0, 2);
        int i = 0;
        while (true) {
            try {
                return bt3Var.invoke();
            } catch (Exception e) {
                if (i >= 50) {
                    throw e;
                }
                y63Var.invoke(5000L);
                i++;
            }
        }
    }

    @Override // defpackage.q36
    public boolean a(Object obj) {
        return true;
    }

    public List b(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (un1 un1Var : componentRegistrar.getComponents()) {
            String str = un1Var.a;
            if (str != null) {
                un1Var = new un1(str, un1Var.b, un1Var.c, un1Var.d, un1Var.e, new no1(str, un1Var), un1Var.g);
            }
            arrayList.add(un1Var);
        }
        return arrayList;
    }

    @Override // defpackage.hr9
    public byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, byte[] bArr4) throws GeneralSecurityException {
        if (bArr.length != 32) {
            throw new InvalidAlgorithmParameterException("Unexpected key length: 32");
        }
        try {
            im9.c();
            Provider provider = im9.c().getProvider();
            if (!u48.e(1)) {
                m0.h("Can not use ChaCha20Poly1305 in FIPS-mode.");
                return null;
            }
            if (bArr.length != 32) {
                d6.f("The key length in bytes must be 32.");
                return null;
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "ChaCha20");
            if (bArr3 == null) {
                f6.n("ciphertext is null");
                return null;
            }
            if (bArr2.length != 12) {
                m0.h("nonce length must be 12 bytes.");
                return null;
            }
            if (bArr3.length < i + 16) {
                m0.h("ciphertext too short");
                return null;
            }
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
            Cipher cipher = Cipher.getInstance("ChaCha20-Poly1305", provider);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            if (bArr4.length != 0) {
                cipher.updateAAD(bArr4);
            }
            return cipher.doFinal(bArr3, i, bArr3.length - i);
        } catch (GeneralSecurityException unused) {
            return new en9(bArr).t(ByteBuffer.wrap(Arrays.copyOfRange(bArr3, i, bArr3.length)), bArr2, bArr4);
        }
    }

    @Override // defpackage.y1a
    public /* synthetic */ Object e(String str, Provider provider) {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        switch (this.a) {
            case 20:
                hf9 hf9Var = (hf9) vm4Var;
                bw9 bw9VarX = cw9.x();
                iw9 iw9VarC = sk9.c(hf9Var.d);
                bw9VarX.c();
                cw9.w((cw9) bw9VarX.b, iw9VarC);
                byte[] bArrB = ((d2a) hf9Var.e.a).b();
                x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
                bw9VarX.c();
                cw9.v((cw9) bw9VarX.b, x69VarG);
                return pt9.a("type.googleapis.com/google.crypto.tink.AesEaxKey", ((cw9) bw9VarX.b()).b(), 2, sk9.b(hf9Var.d.d), hf9Var.k);
            case 21:
                vg9 vg9Var = (vg9) vm4Var;
                dx9 dx9VarW = ex9.w();
                byte[] bArrB2 = ((d2a) vg9Var.e.a).b();
                x69 x69VarG2 = t69.g(bArrB2, 0, bArrB2.length);
                dx9VarW.c();
                ex9.v((ex9) dx9VarW.b, x69VarG2);
                return pt9.a("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((ex9) dx9VarW.b()).b(), 2, pm9.b(vg9Var.d.a), vg9Var.k);
            default:
                zt9 zt9Var = (zt9) vm4Var;
                bv9 bv9VarX = cv9.x();
                eu9 eu9Var = zt9Var.d;
                hv9 hv9VarV = iv9.v();
                int i = eu9Var.b;
                hv9VarV.c();
                ((iv9) hv9VarV.b).zze = i;
                iv9 iv9Var = (iv9) hv9VarV.b();
                bv9VarX.c();
                cv9.w((cv9) bv9VarX.b, iv9Var);
                byte[] bArrB3 = ((d2a) zt9Var.e.a).b();
                x69 x69VarG3 = t69.g(bArrB3, 0, bArrB3.length);
                bv9VarX.c();
                cv9.v((cv9) bv9VarX.b, x69VarG3);
                return pt9.a("type.googleapis.com/google.crypto.tink.AesCmacKey", ((cv9) bv9VarX.b()).b(), 2, qu9.b(zt9Var.d.c), zt9Var.f);
        }
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        mz9 mz9Var = (mz9) ot9Var.b;
        if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.HpkePrivateKey")) {
            c6.f(xs1.j("Wrong type URL in call to HpkeProtoSerialization.parseParameters: ", mz9Var.B()));
            return null;
        }
        try {
            return rq9.a(mz9Var.z(), wy9.t(mz9Var.A(), f79.a).w());
        } catch (p79 e) {
            throw new GeneralSecurityException("Parsing HpkeParameters failed: ", e);
        }
    }

    @Override // defpackage.zv2
    public boolean h(Object obj, File file, ou5 ou5Var) throws Throwable {
        try {
            ay0.d((ByteBuffer) obj, file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e);
            return false;
        }
    }

    public synchronized void i(Object obj) {
        boolean zContainsKey;
        obj.getClass();
        ny2 ny2VarB = ny2.b();
        synchronized (ny2VarB) {
            zContainsKey = ny2VarB.b.containsKey(obj);
        }
        if (!zContainsKey) {
            ny2.b().i(obj);
        }
    }

    public void k(View view, String str) {
        Uri uriBuild = Uri.parse(str);
        if (TextUtils.isEmpty(uriBuild.getScheme())) {
            uriBuild = uriBuild.buildUpon().scheme("https").build();
        }
        Context context = view.getContext();
        Intent intent = new Intent("android.intent.action.VIEW", uriBuild);
        intent.putExtra("com.android.browser.application_id", context.getPackageName());
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Log.w("LinkResolverDef", "Actvity was not found for the link: '" + str + "'");
        }
    }

    public synchronized void l(Object obj) {
        boolean zContainsKey;
        ny2 ny2VarB = ny2.b();
        synchronized (ny2VarB) {
            zContainsKey = ny2VarB.b.containsKey(obj);
        }
        if (zContainsKey) {
            ny2.b().k(obj);
        }
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            c6.f("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
            return null;
        }
        try {
            d1a d1aVarU = d1a.u(pt9Var.c, f79.a);
            if (d1aVarU.t() == 0) {
                return ck9.K(ao9.a(pt9Var.e), new km8(d2a.a(d1aVarU.x().w())), pt9Var.f);
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (p79 unused) {
            m0.h("Parsing XChaCha20Poly1305Key failed");
            return null;
        }
    }

    public Object o(lb9 lb9Var) throws GeneralSecurityException {
        vm4 vm4VarA = lb9Var.a();
        if (vm4VarA instanceof te9) {
            return q1a.c((te9) vm4VarA);
        }
        if (vm4VarA instanceof uf9) {
            uf9 uf9Var = (uf9) vm4VarA;
            kg9 kg9Var = uf9Var.d;
            int i = kg9Var.b;
            int i2 = kg9Var.c;
            if (i != 12) {
                throw new GeneralSecurityException(fz5.j(kg9Var.b, "Expected IV Size 12, got "));
            }
            if (i2 == 16) {
                return new l1a(((d2a) uf9Var.e.a).b(), uf9Var.f);
            }
            throw new GeneralSecurityException(fz5.j(i2, "Expected tag Size 16, got "));
        }
        if (vm4VarA instanceof lg9) {
            lg9 lg9Var = (lg9) vm4VarA;
            io9 io9Var = eo9.a;
            q34 q34Var = new q34(21);
            byte[] bArr = ml9.d;
            if (ml9.c(q34.t())) {
                return new ml9(((d2a) lg9Var.e.a).b(), lg9Var.f.b(), q34Var);
            }
            l0.e("Cipher does not implement AES GCM SIV.");
            return null;
        }
        if (vm4VarA instanceof hf9) {
            hf9 hf9Var = (hf9) vm4VarA;
            ei8 ei8Var = k1a.e;
            if (!u48.e(1)) {
                m0.h("Can not use AES-EAX in FIPS-mode.");
                return null;
            }
            sf9 sf9Var = hf9Var.d;
            if (sf9Var.c != 16) {
                throw new GeneralSecurityException(fz5.j(sf9Var.c, "AesEaxJce only supports 16 byte tag size, not "));
            }
            return new k1a(sf9Var.b, ((d2a) hf9Var.e.a).b(), hf9Var.f.b());
        }
        if (vm4VarA instanceof vg9) {
            vg9 vg9Var = (vg9) vm4VarA;
            d2a d2aVar = vg9Var.f;
            d2a d2aVar2 = (d2a) vg9Var.e.a;
            try {
                im9.c();
                return new im9(d2aVar2.b(), d2aVar.b(), im9.c().getProvider());
            } catch (GeneralSecurityException unused) {
                return new sn9(d2aVar2.b(), d2aVar.b());
            }
        }
        if (vm4VarA instanceof ck9) {
            ck9 ck9Var = (ck9) vm4VarA;
            d2a d2aVar3 = ck9Var.f;
            d2a d2aVar4 = (d2a) ck9Var.e.a;
            try {
                im9.c();
                return new yn9(d2aVar4.b(), d2aVar3.b(), im9.c().getProvider());
            } catch (GeneralSecurityException unused2) {
                return new c2a(d2aVar4.b(), d2aVar3.b());
            }
        }
        if (!(vm4VarA instanceof mj9)) {
            throw new GeneralSecurityException("Unknown key class: ".concat(String.valueOf(vm4VarA.getClass())));
        }
        mj9 mj9Var = (mj9) vm4VarA;
        int i3 = mj9Var.d.b;
        if (i3 >= 8 && i3 <= 12) {
            return new vn9(((d2a) mj9Var.e.a).b(), mj9Var.f, i3);
        }
        m0.h("invalid salt size");
        return null;
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) throws GeneralSecurityException {
        r0a r0aVar;
        mh9 mh9Var = (mh9) bd9Var;
        lz9 lz9VarT = mz9.t();
        lz9VarT.f("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        h0a h0aVarT = i0a.t();
        String str = mh9Var.a;
        h0aVarT.c();
        i0a.v((i0a) h0aVarT.b, str);
        lz9VarT.h(((i0a) h0aVarT.b()).b());
        lh9 lh9Var = mh9Var.b;
        if (lh9.c == lh9Var) {
            r0aVar = r0a.TINK;
        } else {
            if (lh9.d != lh9Var) {
                throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(lh9Var)));
            }
            r0aVar = r0a.RAW;
        }
        lz9VarT.e(r0aVar);
        return ot9.m((mz9) lz9VarT.b());
    }

    @Override // defpackage.vc5
    public boolean r(fc5 fc5Var) {
        return false;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new eq7(ai5Var.a(Uri.class, ParcelFileDescriptor.class), 0);
    }

    @Override // defpackage.hr9
    public int zza() {
        return 32;
    }

    @Override // defpackage.hr9
    public byte[] zzc() {
        return or9.k;
    }

    @Override // defpackage.e33
    public void j(Object obj) {
    }

    @Override // defpackage.aj8
    public void onCancelled(wc2 wc2Var) {
    }

    @Override // defpackage.aj8
    public void onDataChange(eb2 eb2Var) {
    }

    @Override // defpackage.vc5
    public void d(fc5 fc5Var, boolean z) {
    }
}
