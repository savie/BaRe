package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fo8 implements nx1, fy0, kw5, qa7, zm7, cs9, et9, aa9, es9 {
    public static final fo8 b = new fo8(1);
    public static fo8 c;
    public final /* synthetic */ int a;

    public /* synthetic */ fo8(int i) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x010c  */
    public static boolean b(fo8 fo8Var, List list) {
        Boolean boolValueOf;
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            yn8 yn8Var = (yn8) obj;
            if (!yn8Var.a.j() || yn8Var.a.A() != yn8Var.c) {
                arrayList.add(obj);
            }
        }
        int iQ0 = x65.q0(hl1.G0(arrayList, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        for (Object obj2 : arrayList) {
            String str = ((yn8) obj2).e;
            str.getClass();
            linkedHashMap.put(str, obj2);
        }
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Iterator it = linkedHashMap.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            j += ((yn8) it.next()).c;
        }
        Long lValueOf = Long.valueOf(j);
        if (j <= 0) {
            lValueOf = null;
        }
        final long jLongValue = lValueOf != null ? lValueOf.longValue() : 1L;
        final kh6 kh6Var = new kh6();
        ArrayList arrayList2 = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            final String str2 = (String) entry.getKey();
            final yn8 yn8Var2 = (yn8) entry.getValue();
            zn4 zn4Var = zn4.a;
            final fo8 fo8Var2 = fo8Var;
            arrayList2.add(new vn4(new bt3(fo8Var2) { // from class: eo8
                @Override // defpackage.bt3
                public final Object invoke() throws IOException {
                    e08 e08Var = new e08(concurrentHashMap, str2, kh6Var, jLongValue);
                    yn8 yn8Var3 = yn8Var2;
                    Long lValueOf2 = Long.valueOf(yn8Var3.c);
                    p93 p93Var = p93.a;
                    Log.i("WallDownloadHelper", "Wall size = " + ((Object) p93.c(lValueOf2)));
                    String str3 = yn8Var3.e;
                    str3.getClass();
                    long j2 = yn8Var3.c;
                    Long lValueOf3 = Long.valueOf(j2);
                    q63 q63Var = yn8Var3.a;
                    q63Var.getClass();
                    if (j2 <= 0) {
                        lValueOf3 = null;
                    }
                    fo2 fo2Var = new fo2(str3, 22, lValueOf3 != null ? lValueOf3.longValue() : -1L, q63Var);
                    tb1 tb1Var = tb1.a;
                    no2 no2VarC = qb1.c().c(fo2Var);
                    try {
                        no2VarC.f = new px(e08Var, 18);
                        ke keVarB = no2VarC.b();
                        e08Var.invoke(Long.valueOf(j2));
                        boolean zE = keVarB.e();
                        no2VarC.close();
                        return Boolean.valueOf(zE);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(no2VarC, th);
                            throw th2;
                        }
                    }
                }
            }));
            fo8Var = fo8Var2;
        }
        zn4 zn4Var2 = zn4.a;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            z = false;
        } else {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                if (z2) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (ClassCastException unused2) {
                z2 = false;
            }
        }
        List listA = zn4.a(4, arrayList2, z);
        if (listA == null || !listA.isEmpty()) {
            Iterator it2 = listA.iterator();
            while (it2.hasNext()) {
                if (!((Boolean) it2.next()).booleanValue()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static xq6 e(String str) {
        Object next;
        Iterator it = xq6.m.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (pe4.d(((xq6) next).a, str)) {
                return (xq6) next;
            }
        }
        next = null;
        return (xq6) next;
    }

    public static xq6 h(String str) {
        Object obj;
        List list;
        String string;
        Iterator it = xq6.k.iterator();
        loop0: while (true) {
            obj = null;
            strQ = null;
            strQ = null;
            String strQ = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            xq6 xq6Var = (xq6) next;
            xq6Var.getClass();
            if (str != null && (string = nq7.H0(str).toString()) != null) {
                if (string.length() <= 0) {
                    string = null;
                }
                if (string != null) {
                    String strQ0 = nq7.q0(nq7.q0(string, "https://"), "http://");
                    String strC0 = nq7.C0(strQ0, "/", strQ0);
                    String strC1 = nq7.C0(strC0, ":", strC0);
                    Locale locale = Locale.ROOT;
                    strQ = dj7.q(locale, strC1, locale);
                }
            }
            if (strQ != null && ((list = xq6Var.i) == null || !list.isEmpty())) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    if (((ai6) it2.next()).b(strQ)) {
                        obj = next;
                        break loop0;
                    }
                }
            }
        }
        xq6 xq6Var2 = (xq6) obj;
        return xq6Var2 == null ? xq6.j : xq6Var2;
    }

    @Override // defpackage.fy0
    public byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    @Override // defpackage.zm7
    public boolean c(long j) {
        switch (this.a) {
            case 15:
                return j == 0 || j == 2147483654L || j == 3221225487L;
            default:
                if (j != 2147483693L) {
                    return (j > 0L ? 1 : (j == 0L ? 0 : -1)) == 0;
                }
                return true;
        }
    }

    @Override // defpackage.aa9
    public Object d(ix0 ix0Var, Class cls) throws GeneralSecurityException {
        Object obj;
        int i;
        ca9 lr9Var;
        d2a d2aVarJ;
        List list;
        ix0 ix0Var2 = ix0Var;
        String str = "EC";
        if (cls.equals(ba9.class)) {
            ix0Var2.q();
            vm4 vm4VarA = ix0Var2.w().a();
            if (vm4VarA instanceof nq9) {
                nq9 nq9Var = (nq9) vm4VarA;
                cq9 cq9Var = nq9Var.d;
                p1a p1aVar = (p1a) n1a.a.k(cq9Var.a);
                ECPoint eCPoint = nq9Var.e;
                byte[] byteArray = eCPoint.getAffineX().toByteArray();
                byte[] byteArray2 = eCPoint.getAffineY().toByteArray();
                ECParameterSpec eCParameterSpecM = zm5.M(p1aVar);
                ECPoint eCPoint2 = new ECPoint(new BigInteger(1, byteArray), new BigInteger(1, byteArray2));
                yr9.g(eCPoint2, eCParameterSpecM.getCurve());
                ECPublicKey eCPublicKey = (ECPublicKey) ((KeyFactory) s1a.f.a.zza("EC")).generatePublic(new ECPublicKeySpec(eCPoint2, eCParameterSpecM));
                d2a d2aVar = cq9Var.f;
                if (d2aVar != null) {
                    d2aVar.b();
                }
                n1a.a(cq9Var.b);
                x13.W(cq9Var);
                nq9Var.k.b();
                yr9.g(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
            } else {
                if (!(vm4VarA instanceof vq9)) {
                    throw new GeneralSecurityException("Unknown key class: ".concat(String.valueOf(vm4VarA.getClass())));
                }
                vq9 vq9Var = (vq9) vm4VarA;
                lq9 lq9Var = vq9Var.d;
                d2a d2aVar2 = vq9Var.e;
                l73.K(lq9Var.a);
                l73.I(lq9Var.b);
                l73.J(lq9Var.c);
                d2a d2aVar3 = vq9Var.f;
                d2aVar2.b();
                d2aVar3.b();
            }
            return cls.cast(new hi9(6));
        }
        if (!cls.equals(ca9.class)) {
            m0.h("HybridConfigurationV1 can only create HybridEncrypt and HybridDecrypt primitives");
            return null;
        }
        HashMap map = new HashMap();
        int i2 = 0;
        int i3 = 0;
        while (i3 < ((List) ix0Var2.b).size()) {
            lb9 lb9VarP = ix0Var2.p(i3);
            if (lb9VarP.c.equals(ia9.c)) {
                vm4 vm4VarA2 = lb9VarP.a();
                if (vm4VarA2 instanceof fq9) {
                    fq9 fq9Var = (fq9) vm4VarA2;
                    cq9 cq9Var2 = fq9Var.d.d;
                    p1a p1aVar2 = (p1a) n1a.a.k(cq9Var2.a);
                    ECPrivateKey eCPrivateKey = (ECPrivateKey) ((KeyFactory) s1a.f.a.zza(str)).generatePrivate(new ECPrivateKeySpec(wx3.G(wx3.J((BigInteger) fq9Var.e.b)), zm5.M(p1aVar2)));
                    byte[] bArrB = new byte[i2];
                    d2a d2aVar4 = cq9Var2.f;
                    if (d2aVar4 != null) {
                        bArrB = d2aVar4.b();
                    }
                    obj = null;
                    lr9Var = new o1a(eCPrivateKey, bArrB, n1a.a(cq9Var2.b), (r1a) n1a.b.k(cq9Var2.c), x13.W(cq9Var2), ((dr9) fq9Var.J()).J().b());
                } else {
                    obj = null;
                    if (!(vm4VarA2 instanceof oq9)) {
                        throw new GeneralSecurityException("Unknown key class: ".concat(String.valueOf(vm4VarA2.getClass())));
                    }
                    oq9 oq9Var = (oq9) vm4VarA2;
                    vq9 vq9Var2 = oq9Var.d;
                    lq9 lq9Var2 = vq9Var2.d;
                    jq9 jq9Var = lq9Var2.a;
                    mr9 mr9VarK = l73.K(jq9Var);
                    ia9 ia9VarI = l73.I(lq9Var2.b);
                    hr9 hr9VarJ = l73.J(lq9Var2.c);
                    jq9 jq9Var2 = jq9.g;
                    boolean zEquals = jq9Var.equals(jq9Var2);
                    jq9 jq9Var3 = jq9.f;
                    jq9 jq9Var4 = jq9.e;
                    jq9 jq9Var5 = jq9.d;
                    if (zEquals) {
                        i = 32;
                    } else if (jq9Var == jq9Var5) {
                        i = 65;
                    } else if (jq9Var == jq9Var4) {
                        i = 97;
                    } else {
                        if (jq9Var != jq9Var3) {
                            m0.h("Unrecognized HPKE KEM identifier");
                            return null;
                        }
                        i = 133;
                    }
                    int i4 = i;
                    if (!jq9Var.equals(jq9Var2) && jq9Var != jq9Var5 && jq9Var != jq9Var4 && jq9Var != jq9Var3) {
                        m0.h("Unrecognized HPKE KEM identifier");
                        return null;
                    }
                    lr9Var = new lr9(new la(d2a.a(((d2a) oq9Var.e.a).b()), vq9Var2.e), mr9VarK, ia9VarI, hr9VarJ, i4, ((dr9) oq9Var.J()).J());
                }
                vm4 vm4VarA3 = lb9VarP.a();
                if (vm4VarA3 instanceof br9) {
                    d2aVarJ = ((dr9) ((br9) vm4VarA3).J()).J();
                } else {
                    if (!(vm4VarA3 instanceof ns9)) {
                        throw new GeneralSecurityException(dj7.l("Cannot get output prefix for key of class ", vm4VarA3.getClass().getName(), " with parameters ", String.valueOf(vm4VarA3.G())));
                    }
                    d2aVarJ = ((ns9) vm4VarA3).J();
                }
                rr9 rr9Var = new rr9(lr9Var, lb9VarP.d);
                byte[] bArr = d2aVarJ.a;
                if (bArr.length != 0 && bArr.length != 5) {
                    m0.h("PrefixMap only supports 0 and 5 byte prefixes");
                    return obj;
                }
                if (map.containsKey(d2aVarJ)) {
                    list = (List) map.get(d2aVarJ);
                } else {
                    ArrayList arrayList = new ArrayList();
                    map.put(d2aVarJ, arrayList);
                    list = arrayList;
                }
                list.add(rr9Var);
            } else {
                str = str;
            }
            i3++;
            ix0Var2 = ix0Var;
            str = str;
            i2 = 0;
        }
        ix0Var.q();
        return cls.cast(new qr9(new it9(map)));
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        nq9 nq9Var = (nq9) vm4Var;
        return pt9.a("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", gr9.c(nq9Var).b(), 4, (r0a) gr9.g.k(nq9Var.d.d), nq9Var.n);
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 24:
                mz9 mz9Var = (mz9) ot9Var.b;
                if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    c6.f(xs1.j("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ", mz9Var.B()));
                    return null;
                }
                try {
                    uw9 uw9VarU = uw9.u(mz9Var.A(), f79.a);
                    if (uw9VarU.w() != 0) {
                        m0.h("Only version 0 parameters are accepted");
                        return null;
                    }
                    cd cdVarB = tg9.b();
                    cdVarB.o(uw9VarU.t());
                    cdVarB.c = sl9.a(mz9Var.z());
                    return cdVarB.n();
                } catch (p79 e) {
                    throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e);
                }
            default:
                mz9 mz9Var2 = (mz9) ot9Var.b;
                if (!mz9Var2.B().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
                    c6.f(xs1.j("Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: ", mz9Var2.B()));
                    return null;
                }
                try {
                    x0a x0aVarU = x0a.u(mz9Var2.A(), f79.a);
                    if (x0aVarU.t() == 0) {
                        return xj9.b(tn9.a(mz9Var2.z()), x0aVarU.x().t());
                    }
                    m0.h("Only version 0 parameters are accepted");
                    return null;
                } catch (p79 e2) {
                    throw new GeneralSecurityException("Parsing XAesGcmParameters failed: ", e2);
                }
        }
    }

    @Override // defpackage.qa7
    public fa7 j(fo8 fo8Var, JSONObject jSONObject) throws JSONException {
        long jCurrentTimeMillis;
        jSONObject.optInt("settings_version", 0);
        int iOptInt = jSONObject.optInt("cache_duration", 3600);
        double dOptDouble = jSONObject.optDouble("on_demand_upload_rate_per_minute", 10.0d);
        double dOptDouble2 = jSONObject.optDouble("on_demand_backoff_base", 1.2d);
        int iOptInt2 = jSONObject.optInt("on_demand_backoff_step_duration_seconds", 60);
        me6 me6Var = jSONObject.has("session") ? new me6(jSONObject.getJSONObject("session").optInt("max_custom_exception_events", 8)) : new me6(new JSONObject().optInt("max_custom_exception_events", 8));
        JSONObject jSONObject2 = jSONObject.getJSONObject("features");
        ea7 ea7Var = new ea7(jSONObject2.optBoolean("collect_reports", true), jSONObject2.optBoolean("collect_anrs", false), jSONObject2.optBoolean("collect_build_ids", false));
        long j = iOptInt;
        if (jSONObject.has("expires_at")) {
            jCurrentTimeMillis = jSONObject.optLong("expires_at");
        } else {
            jCurrentTimeMillis = (j * 1000) + System.currentTimeMillis();
        }
        return new fa7(jCurrentTimeMillis, me6Var, ea7Var, dOptDouble, dOptDouble2, iOptInt2);
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 23:
                if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    c6.f("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
                    return null;
                }
                try {
                    c0a c0aVarU = c0a.u(pt9Var.c, f79.a);
                    if (c0aVarU.t() == 0) {
                        return kh9.K(new mh9(c0aVarU.x().x(), wh9.a(pt9Var.e)), pt9Var.f);
                    }
                    throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got ".concat(String.valueOf(c0aVarU)));
                } catch (p79 e) {
                    throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e);
                }
            default:
                if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                    c6.f("Wrong type URL in call to HmacProtoSerialization.parseKey");
                    return null;
                }
                try {
                    iy9 iy9VarU = iy9.u(pt9Var.c, f79.a);
                    if (iy9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    kc kcVarB = mu9.b();
                    kcVarB.b = Integer.valueOf(iy9VarU.A().d());
                    kcVarB.c = Integer.valueOf(iy9VarU.z().t());
                    kcVarB.d = (lu9) su9.b.l(iy9VarU.z().w());
                    kcVarB.e = (ku9) su9.a.l(pt9Var.e);
                    mu9 mu9VarC = kcVarB.c();
                    u00 u00Var = new u00();
                    u00Var.c = null;
                    u00Var.d = null;
                    u00Var.b = mu9VarC;
                    u00Var.c = new km8(d2a.a(iy9VarU.A().w()));
                    u00Var.d = pt9Var.f;
                    return u00Var.k();
                } catch (IllegalArgumentException | p79 unused) {
                    m0.h("Parsing HmacKey failed");
                    return null;
                }
        }
    }

    @Override // defpackage.kw5
    public boolean p(byte[] bArr) {
        return bArr.length >= 4 && bArr[0] == -4 && bArr[1] == 83 && bArr[2] == 77 && bArr[3] == 66;
    }

    @Override // defpackage.kw5
    public ev6 read(byte[] bArr) {
        return new kd2(bArr);
    }
}
