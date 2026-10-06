package defpackage;

import android.content.DialogInterface;
import android.content.res.AssetFileDescriptor;
import android.graphics.PointF;
import android.net.Uri;
import android.webkit.WebView;
import androidx.fragment.app.z;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ns0 implements mr8, cj8, v79, t83, al6, w74, dh5, et9, cs9, gt9, es9, y1a {
    public static final String[] b = new String[0];
    public static final ns0 c = new ns0(2);
    public static final ns0 d = new ns0(3);
    public static final ns0 e = new ns0(4);
    public final /* synthetic */ int a;

    public ns0() {
        this.a = 8;
        new ThreadLocal();
    }

    public static final void d(c70 c70Var, long j, boolean z) {
        i66 i66Var = c70.h;
        if (c70.i == null) {
            c70.i = new c70();
            b70 b70Var = new b70("Okio Watchdog");
            b70Var.setDaemon(true);
            b70Var.start();
        }
        long jNanoTime = System.nanoTime();
        if (j != 0 && z) {
            c70Var.g = Math.min(j, c70Var.c() - jNanoTime) + jNanoTime;
        } else if (j != 0) {
            c70Var.g = jNanoTime + j;
        } else {
            if (!z) {
                d6.n();
                return;
            }
            c70Var.g = c70Var.c();
        }
        i66 i66Var2 = c70.h;
        int i = i66Var2.a + 1;
        i66Var2.a = i;
        c70[] c70VarArr = (c70[]) i66Var2.b;
        if (i == c70VarArr.length) {
            c70[] c70VarArr2 = new c70[i * 2];
            x50.i0(0, 0, 14, c70VarArr, c70VarArr2);
            i66Var2.b = c70VarArr2;
        }
        i66Var2.a(i, c70Var);
        if (c70Var.f == 1) {
            c70.k.signal();
        }
    }

    public static c70 h() throws InterruptedException {
        i66 i66Var = c70.h;
        c70 c70Var = ((c70[]) i66Var.b)[1];
        if (c70Var == null) {
            long jNanoTime = System.nanoTime();
            c70.k.await(c70.l, TimeUnit.MILLISECONDS);
            if (((c70[]) i66Var.b)[1] != null || System.nanoTime() - jNanoTime < c70.m) {
                return null;
            }
            return c70.i;
        }
        long jNanoTime2 = c70Var.g - System.nanoTime();
        if (jNanoTime2 > 0) {
            c70.k.await(jNanoTime2, TimeUnit.NANOSECONDS);
            return null;
        }
        i66Var.b(c70Var);
        c70Var.e = 2;
        return c70Var;
    }

    public static void j(BlacklistApp blacklistApp, ArrayList arrayList) {
        el1.h1(arrayList, new c7(blacklistApp, 5));
        boolean z = blacklistApp.getBlackListType() == is0.Hide.ordinal();
        gs0 gs0Var = gs0.a;
        ds0 ds0Var = BlacklistData.Companion;
        List listV1 = el1.v1(arrayList);
        ds0Var.getClass();
        gs0Var.d(ds0.a(listV1), true);
        if (z) {
            dv.i(kz4.g, true, null, true, false, 10);
            dv.i(ua1.g, true, null, true, false, 10);
        }
    }

    public static void l(zm zmVar, final BlacklistApp blacklistApp, final ArrayList arrayList, final xi xiVar) {
        Object next;
        zmVar.getClass();
        is0.Companion.getClass();
        List entries = is0.getEntries();
        ArrayList arrayList2 = new ArrayList(hl1.G0(entries, 10));
        Iterator it = ((z3) entries).iterator();
        while (true) {
            w3 w3Var = (w3) it;
            if (!w3Var.hasNext()) {
                break;
            } else {
                arrayList2.add(((is0) w3Var.next()).getDisplayString());
            }
        }
        String[] strArr = (String[]) arrayList2.toArray(new String[0]);
        int blackListType = blacklistApp.getBlackListType();
        Iterator it2 = arrayList.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!pe4.d(((BlacklistApp) next).getPackageName(), blacklistApp.getPackageName()));
        BlacklistApp blacklistApp2 = (BlacklistApp) next;
        final Integer numValueOf = blacklistApp2 != null ? Integer.valueOf(blacklistApp2.getBlackListType()) : null;
        boolean z = numValueOf != null;
        final jh6 jh6Var = new jh6();
        jh6Var.a = blackListType;
        s35 s35Var = new s35(zmVar, R.style.M3AlertDialogTheme, new hv1(zmVar, R.style.M3AlertDialogTheme), null);
        ((ra) s35Var.b).d = blacklistApp.getName();
        s35Var.u(strArr, blackListType, new DialogInterface.OnClickListener() { // from class: js0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                jh6Var.a = i;
            }
        });
        s35Var.s(R.string.ok, new DialogInterface.OnClickListener() { // from class: ks0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zn4 zn4Var = zn4.a;
                zn4.b(null, new ms0(blacklistApp, jh6Var, arrayList, numValueOf, xiVar, null));
            }
        });
        s35Var.q(R.string.cancel, null);
        if (z) {
            s35Var.r(R.string.remove_from_blacklist, new DialogInterface.OnClickListener() { // from class: ls0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new q20(blacklistApp, arrayList, xiVar, null, 1));
                }
            });
        }
        s35Var.m();
    }

    @Override // defpackage.t83
    public Class a() {
        return InputStream.class;
    }

    @Override // defpackage.t83
    public void b(Object obj) throws IOException {
        ((InputStream) obj).close();
    }

    @Override // defpackage.w74
    public l15 c(String str) {
        return rj5.a;
    }

    @Override // defpackage.mr8
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        throw new UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }

    @Override // defpackage.y1a
    public /* synthetic */ Object e(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        vq9 vq9Var = (vq9) vm4Var;
        return pt9.a("type.googleapis.com/google.crypto.tink.HpkePublicKey", rq9.b(vq9Var).b(), 4, (r0a) rq9.g.k(vq9Var.d.d), vq9Var.k);
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 21:
                mz9 mz9Var = (mz9) ot9Var.b;
                if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
                    c6.f(xs1.j("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ", mz9Var.B()));
                    return null;
                }
                try {
                    return ki9.a(o0a.u(mz9Var.A(), f79.a), mz9Var.z());
                } catch (p79 e2) {
                    throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
                }
            default:
                mz9 mz9Var2 = (mz9) ot9Var.b;
                if (!mz9Var2.B().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
                    c6.f(xs1.j("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: ", mz9Var2.B()));
                    return null;
                }
                try {
                    if (g1a.u(mz9Var2.A(), f79.a).t() == 0) {
                        return new ik9(ao9.a(mz9Var2.z()));
                    }
                    m0.h("Only version 0 parameters are accepted");
                    return null;
                } catch (p79 e3) {
                    throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e3);
                }
        }
    }

    @Override // defpackage.mr8
    public StaticsBoundaryInterface getStatics() {
        throw new UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }

    public boolean i(CharSequence charSequence) {
        return charSequence instanceof n36;
    }

    public synchronized List k(final String str, List list) {
        try {
            list.getClass();
            if (str != null && str.length() != 0) {
                final gv7 gv7Var = new gv7(new ek(str, 6));
                String str2 = (String) el1.U0((List) gv7Var.getValue());
                int i = 1;
                final String str3 = (str2 == null || str2.length() <= 0 || str2.length() <= 1) ? null : str2;
                int i2 = 0;
                final gv7 gv7Var2 = new gv7(new ix(str, i2));
                final gv7 gv7Var3 = new gv7(new jx(i2));
                return h77.C0(h77.A0(new l77(new q98(new ll1(list), new mt3() { // from class: kx
                    /* JADX WARN: Code duplicated, block: B:30:0x00ac  */
                    @Override // defpackage.mt3
                    public final Object invoke(Object obj) {
                        boolean z;
                        boolean z2;
                        boolean z3;
                        ji jiVar = (ji) obj;
                        jiVar.getClass();
                        mx mxVar = new mx(jiVar);
                        List listX0 = nq7.x0(jiVar.getName(), new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6);
                        gv7 gv7Var4 = gv7Var;
                        List list2 = (List) gv7Var4.getValue();
                        boolean z4 = false;
                        z4 = false;
                        int i3 = 1;
                        if (list2 == null || !list2.isEmpty()) {
                            Iterator it = list2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    String str4 = (String) it.next();
                                    if (!listX0.isEmpty()) {
                                        Iterator it2 = listX0.iterator();
                                        while (true) {
                                            if (it2.hasNext()) {
                                                if (uq7.V((String) it2.next(), str4, true)) {
                                                }
                                            }
                                        }
                                    }
                                    z = false;
                                } else {
                                    z = true;
                                }
                            }
                        } else {
                            z = true;
                        }
                        mxVar.b = z;
                        String name = jiVar.getName();
                        String str5 = str;
                        mxVar.c = uq7.V(name, str5, true);
                        mxVar.f = uq7.V(jiVar.getPackageName(), str5, true);
                        String str6 = str3;
                        if (str6 == null || str6.length() == 0) {
                            z2 = false;
                        } else {
                            gv7 gv7Var5 = new gv7(new yq(i3, listX0, str6));
                            gv7 gv7Var6 = new gv7(new lx(z4 ? 1 : 0, jiVar, str6));
                            if (((Boolean) gv7Var5.getValue()).booleanValue() || ((Boolean) gv7Var6.getValue()).booleanValue()) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        }
                        mxVar.d = z2;
                        List listX1 = nq7.x0(jiVar.getPackageName(), new String[]{"."}, 6);
                        List list3 = (List) gv7Var4.getValue();
                        if (list3 == null || !list3.isEmpty()) {
                            Iterator it3 = list3.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    String str7 = (String) it3.next();
                                    if (!listX1.isEmpty()) {
                                        Iterator it4 = listX1.iterator();
                                        while (true) {
                                            if (it4.hasNext()) {
                                                if (uq7.V((String) it4.next(), str7, true)) {
                                                }
                                            }
                                        }
                                    }
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                            }
                        } else {
                            z3 = true;
                        }
                        mxVar.e = z3;
                        String strC = ((ai6) gv7Var3.getValue()).c(jiVar.getName(), "");
                        gv7 gv7Var7 = gv7Var2;
                        if (((String) gv7Var7.getValue()).length() > 0 && nq7.Z(strC, (String) gv7Var7.getValue(), true)) {
                            z4 = true;
                        }
                        mxVar.g = z4;
                        return mxVar;
                    }
                }), new nx(i2)), new nu(i)));
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // defpackage.t83
    public Object m(File file) {
        return new FileInputStream(file);
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            c6.f("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
            return null;
        }
        try {
            cw9 cw9VarU = cw9.u(pt9Var.c, f79.a);
            if (cw9VarU.t() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            ju7 ju7VarB = sf9.b();
            ju7VarB.k(cw9VarU.z().d());
            ju7VarB.j(cw9VarU.y().t());
            ju7VarB.l();
            ju7VarB.e = sk9.a(pt9Var.e);
            sf9 sf9VarI = ju7VarB.i();
            s02 s02Var = new s02();
            s02Var.b = null;
            s02Var.c = null;
            s02Var.a = sf9VarI;
            s02Var.b = new km8(d2a.a(cw9VarU.z().w()));
            s02Var.c = pt9Var.f;
            return s02Var.d();
        } catch (p79 unused) {
            m0.h("Parsing AesEaxKey failed");
            return null;
        }
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) {
        switch (this.a) {
            case 23:
                lz9 lz9VarT = mz9.t();
                lz9VarT.f("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
                lz9VarT.h(hx9.u().b());
                lz9VarT.e(pm9.b(((ah9) bd9Var).a));
                return ot9.m((mz9) lz9VarT.b());
            default:
                eu9 eu9Var = (eu9) bd9Var;
                lz9 lz9VarT2 = mz9.t();
                lz9VarT2.f("type.googleapis.com/google.crypto.tink.AesCmacKey");
                ev9 ev9VarX = fv9.x();
                hv9 hv9VarV = iv9.v();
                int i = eu9Var.b;
                hv9VarV.c();
                ((iv9) hv9VarV.b).zze = i;
                iv9 iv9Var = (iv9) hv9VarV.b();
                ev9VarX.c();
                fv9.w((fv9) ev9VarX.b, iv9Var);
                int i2 = eu9Var.a;
                ev9VarX.c();
                ((fv9) ev9VarX.b).zzf = i2;
                lz9VarT2.h(((fv9) ev9VarX.b()).b());
                lz9VarT2.e(qu9.b(eu9Var.c));
                return ot9.m((mz9) lz9VarT2.b());
        }
    }

    @Override // defpackage.mr8
    public String[] q() {
        return b;
    }

    @Override // defpackage.cj8
    public Object r(ul4 ul4Var, float f) {
        int iV = ul4Var.v();
        if (iV == 1) {
            return gn4.b(ul4Var, f);
        }
        if (iV == 3) {
            return gn4.b(ul4Var, f);
        }
        if (iV != 7) {
            c6.f("Cannot convert json to point. Next token is ".concat(eq3.t(iV)));
            return null;
        }
        PointF pointF = new PointF(((float) ul4Var.q()) * f, ((float) ul4Var.q()) * f);
        while (ul4Var.m()) {
            ul4Var.G();
        }
        return pointF;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new eq7(ai5Var.a(Uri.class, AssetFileDescriptor.class), 0);
    }

    @Override // defpackage.v79
    public d89 zza(Class cls) {
        if (!k79.class.isAssignableFrom(cls)) {
            c6.f("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (d89) k79.f(cls.asSubclass(k79.class)).d(3);
        } catch (Exception e2) {
            e6.i("Unable to get message info for ".concat(cls.getName()), e2);
            return null;
        }
    }

    @Override // defpackage.v79
    /* JADX INFO: renamed from: zzb */
    public boolean mo73zzb(Class cls) {
        return k79.class.isAssignableFrom(cls);
    }

    public /* synthetic */ ns0(int i) {
        this.a = i;
    }

    public ns0(ro roVar, z zVar) {
        this.a = 12;
    }
}
