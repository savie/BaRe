package defpackage;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ai5 implements jk8, vn5 {
    public static final us2 f = new us2(17);
    public static final fe8 k = new fe8(3);
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    public ai5(oc6 oc6Var) {
        hk5 hk5VarC;
        hk5 hk5VarD;
        this.a = 3;
        nb4 nb4Var = oc6Var.e;
        this.b = new zq8(nb4Var, 11);
        this.c = nb4Var;
        if (!oc6Var.b()) {
            hk5VarC = hk5.c;
        } else {
            if (!oc6Var.b()) {
                c6.f("Cannot get index start name if start has not been set");
                throw null;
            }
            m61 m61Var = oc6Var.b;
            m61Var = m61Var == null ? m61.b : m61Var;
            nb4 nb4Var2 = oc6Var.e;
            if (!oc6Var.b()) {
                c6.f("Cannot get index start value if start has not been set");
                throw null;
            }
            hk5VarC = nb4Var2.c(m61Var, oc6Var.a);
        }
        this.d = hk5VarC;
        qn5 qn5Var = oc6Var.c;
        if (qn5Var == null) {
            hk5VarD = oc6Var.e.d();
        } else {
            if (qn5Var == null) {
                c6.f("Cannot get index end name if start has not been set");
                throw null;
            }
            m61 m61Var2 = oc6Var.d;
            m61Var2 = m61Var2 == null ? m61.c : m61Var2;
            nb4 nb4Var3 = oc6Var.e;
            if (qn5Var == null) {
                c6.f("Cannot get index end value if start has not been set");
                throw null;
            }
            hk5VarD = nb4Var3.c(m61Var2, qn5Var);
        }
        this.e = hk5VarD;
    }

    public static za3 A(String str, String str2) throws InvalidKeySpecException, NoSuchAlgorithmException {
        Object bn6Var;
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PrivateKey privateKeyGeneratePrivate = keyFactory.generatePrivate(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(str)));
        RSAPrivateCrtKey rSAPrivateCrtKey = privateKeyGeneratePrivate instanceof RSAPrivateCrtKey ? (RSAPrivateCrtKey) privateKeyGeneratePrivate : null;
        if (rSAPrivateCrtKey == null) {
            c6.f("Invalid Filen RSA private key");
            return null;
        }
        byte[] bArrDecode = Base64.getDecoder().decode(str2);
        try {
            PublicKey publicKeyGeneratePublic = keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode));
            publicKeyGeneratePublic.getClass();
            bn6Var = (RSAPublicKey) publicKeyGeneratePublic;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (en6.a(bn6Var) != null) {
            try {
                pe6 pe6VarK = pe6.k(bArrDecode);
                PublicKey publicKeyGeneratePublic2 = keyFactory.generatePublic(new RSAPublicKeySpec(pe6VarK.a, pe6VarK.b));
                publicKeyGeneratePublic2.getClass();
                bn6Var = (RSAPublicKey) publicKeyGeneratePublic2;
            } catch (Throwable th2) {
                bn6Var = new bn6(th2);
            }
        }
        lg7.H(bn6Var);
        RSAPublicKey rSAPublicKey = (RSAPublicKey) bn6Var;
        if (pe4.d(rSAPrivateCrtKey.getModulus(), rSAPublicKey.getModulus()) && pe4.d(rSAPrivateCrtKey.getPublicExponent(), rSAPublicKey.getPublicExponent())) {
            return new za3(str, str2);
        }
        c6.f("Filen RSA public and private keys do not match");
        return null;
    }

    public static byte[] d(String str, byte[] bArr) {
        char lowerCase;
        String strC = hb3.c(str, bArr);
        if (strC.length() == 64) {
            for (int i = 0; i < strC.length(); i++) {
                char cCharAt = strC.charAt(i);
                if (Character.isDigit(cCharAt) || ('a' <= (lowerCase = Character.toLowerCase(cCharAt)) && lowerCase < 'g')) {
                }
            }
            byte[] bytes = strC.getBytes(f51.d);
            bytes.getClass();
            return bytes;
        }
        c6.f("Invalid Filen DEK");
        return null;
    }

    public static za3 e(xa3 xa3Var, List list) {
        String str = xa3Var.a;
        if (str == null) {
            l0.e("Required value was null.");
            return null;
        }
        String str2 = xa3Var.b;
        if (str2 == null) {
            l0.e("Required value was null.");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                return A(hb3.c(str, (byte[]) it.next()), str2);
            } catch (Exception e) {
                arrayList.add(e);
            }
        }
        throw new SecurityException("No Filen metadata key could decrypt the private key", (Throwable) el1.b1(arrayList));
    }

    public static Class o(vb8 vb8Var, Object obj) {
        return obj != null ? obj.getClass() : vb8Var.getType();
    }

    public static String v(fl4 fl4Var, String str) {
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                if ((qj4VarX instanceof kl4) && (qj4VarX.k().a instanceof String)) {
                    String strO = qj4VarX.o();
                    if (strO.length() > 0) {
                        return strO;
                    }
                } else {
                    f6.g("Invalid Filen response field type: ".concat(str));
                }
            }
        }
        return null;
    }

    public static List w(String str, byte[] bArr) {
        vw4 vw4Var;
        List listW0 = nq7.w0(hb3.c(str, bArr), new char[]{'|'}, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW0) {
            if (!nq7.j0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            byte[] bytes = ((String) it.next()).getBytes(f51.a);
            bytes.getClass();
            arrayList2.add(bytes);
        }
        HashSet hashSet = new HashSet();
        ArrayList<byte[]> arrayList3 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (hashSet.add(hb3.t((byte[]) obj2))) {
                arrayList3.add(obj2);
            }
        }
        if (arrayList3.size() <= 1) {
            byte[] bArr2 = (byte[]) el1.l1(arrayList3);
            return (bArr2 == null || Arrays.equals(bArr2, bArr)) ? nc8.I(bArr) : fl1.A0(bArr, bArr2);
        }
        ww4 ww4VarP = nc8.p();
        ww4VarP.add(bArr);
        for (byte[] bArr3 : arrayList3) {
            if (!ww4VarP.isEmpty()) {
                ListIterator listIterator = ww4VarP.listIterator(0);
                do {
                    vw4Var = (vw4) listIterator;
                    if (vw4Var.hasNext()) {
                    }
                } while (!Arrays.equals(bArr3, (byte[]) vw4Var.next()));
            }
            ww4VarP.add(bArr3);
        }
        return nc8.h(ww4VarP);
    }

    public static int x(fl4 fl4Var) {
        qj4 qj4VarX = fl4Var.x("authVersion");
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                if (!(qj4VarX instanceof kl4) || !(qj4VarX.k().a instanceof Number)) {
                    c6.f("Invalid Filen response field type: authVersion");
                    return 0;
                }
                try {
                    int iIntValueExact = qj4VarX.d().intValueExact();
                    bo4 entries = eb3.getEntries();
                    if (entries == null || !((l3) entries).isEmpty()) {
                        z3 z3Var = (z3) entries;
                        z3Var.getClass();
                        w3 w3Var = new w3(z3Var);
                        while (w3Var.hasNext()) {
                            if (((eb3) w3Var.next()).getValue() == iIntValueExact) {
                                return iIntValueExact;
                            }
                        }
                    }
                    f6.g(fz5.j(iIntValueExact, "Unsupported Filen auth version: "));
                    return 0;
                } catch (ArithmeticException e) {
                    throw new IllegalArgumentException("Invalid Filen auth version", e);
                }
            }
        }
        c6.f("Missing Filen response field: authVersion");
        return 0;
    }

    public static String y(fl4 fl4Var, String str) {
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                if (!(qj4VarX instanceof kl4) || !(qj4VarX.k().a instanceof String)) {
                    f6.g("Invalid Filen response field type: ".concat(str));
                    return null;
                }
                String strO = qj4VarX.o();
                if (nq7.j0(strO)) {
                    strO = null;
                }
                if (strO != null) {
                    return strO;
                }
                c6.f("Missing Filen response field: ".concat(str));
                return null;
            }
        }
        c6.f("Missing Filen response field: ".concat(str));
        return null;
    }

    public te9 B() throws GeneralSecurityException {
        km8 km8Var;
        d2a d2aVarB;
        gf9 gf9Var = (gf9) this.b;
        if (gf9Var == null) {
            m0.h("Cannot build without parameters");
            return null;
        }
        km8 km8Var2 = (km8) this.c;
        if (km8Var2 == null || (km8Var = (km8) this.d) == null) {
            m0.h("Cannot build without key material");
            return null;
        }
        if (gf9Var.a != ((d2a) km8Var2.a).a.length) {
            m0.h("AES key size mismatch");
            return null;
        }
        if (gf9Var.b != ((d2a) km8Var.a).a.length) {
            m0.h("HMAC key size mismatch");
            return null;
        }
        if (gf9Var.a() && ((Integer) this.e) == null) {
            m0.h("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!((gf9) this.b).a() && ((Integer) this.e) != null) {
            m0.h("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        ef9 ef9Var = ((gf9) this.b).e;
        if (ef9Var == ef9.e) {
            d2aVarB = zs9.a;
        } else if (ef9Var == ef9.d) {
            d2aVarB = zs9.a(((Integer) this.e).intValue());
        } else {
            if (ef9Var != ef9.c) {
                l0.e("Unknown AesCtrHmacAeadParameters.Variant: ".concat(String.valueOf(ef9Var)));
                return null;
            }
            d2aVarB = zs9.b(((Integer) this.e).intValue());
        }
        return new te9((gf9) this.b, (km8) this.c, (km8) this.d, d2aVarB, (Integer) this.e);
    }

    public synchronized ch5 a(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (zh5 zh5Var : (ArrayList) this.b) {
                if (((HashSet) this.d).contains(zh5Var)) {
                    z = true;
                } else if (zh5Var.a.isAssignableFrom(cls) && zh5Var.b.isAssignableFrom(cls2)) {
                    ((HashSet) this.d).add(zh5Var);
                    arrayList.add(zh5Var.c.y(this));
                    ((HashSet) this.d).remove(zh5Var);
                }
            }
            if (arrayList.size() > 1) {
                us2 us2Var = (us2) this.c;
                l22 l22Var = (l22) this.e;
                us2Var.getClass();
                return new yh5(arrayList, l22Var);
            }
            if (arrayList.size() == 1) {
                return (ch5) arrayList.get(0);
            }
            if (z) {
                return k;
            }
            throw new ji6("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            ((HashSet) this.d).clear();
            throw th;
        }
    }

    public synchronized ArrayList b(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (zh5 zh5Var : (ArrayList) this.b) {
                if (!((HashSet) this.d).contains(zh5Var) && zh5Var.a.isAssignableFrom(cls)) {
                    ((HashSet) this.d).add(zh5Var);
                    arrayList.add(zh5Var.c.y(this));
                    ((HashSet) this.d).remove(zh5Var);
                }
            }
        } catch (Throwable th) {
            ((HashSet) this.d).clear();
            throw th;
        }
        return arrayList;
    }

    @Override // defpackage.vn5
    public zq8 f() {
        return (zq8) this.b;
    }

    @Override // defpackage.vn5
    public boolean g() {
        return true;
    }

    @Override // defpackage.vn5
    public nb4 getIndex() {
        return (nb4) this.c;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 1:
                return (MaterialCardView) this.b;
            default:
                return (ConstraintLayout) this.b;
        }
    }

    public String h(String str, int i, byte[] bArr) {
        bt3 bt3Var = (bt3) this.c;
        if (i == eb3.V3.getValue()) {
            byte[] bArr2 = hb3.a;
            return hb3.l(str, bArr, (byte[]) bt3Var.invoke());
        }
        byte[] bArr3 = hb3.a;
        return hb3.k(str, bArr, (byte[]) bt3Var.invoke());
    }

    @Override // defpackage.vn5
    public sb4 i(sb4 sb4Var, m61 m61Var, qn5 qn5Var, gy5 gy5Var, un5 un5Var, vk9 vk9Var) {
        if (!u(new hk5(m61Var, qn5Var))) {
            qn5Var = qv2.e;
        }
        return ((zq8) this.b).i(sb4Var, m61Var, qn5Var, gy5Var, un5Var, vk9Var);
    }

    public synchronized ArrayList j(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (zh5 zh5Var : (ArrayList) this.b) {
            if (!arrayList.contains(zh5Var.b) && zh5Var.a.isAssignableFrom(cls)) {
                arrayList.add(zh5Var.b);
            }
        }
        return arrayList;
    }

    public gd k(Class cls) {
        om5 om5Var = (om5) ((x44) this.d).a;
        om5Var.getClass();
        return new gd(om5Var, cls);
    }

    @Override // defpackage.vn5
    public sb4 l(sb4 sb4Var, sb4 sb4Var2, vk9 vk9Var) {
        sb4 sb4Var3;
        if (sb4Var2.a.Z()) {
            sb4Var3 = new sb4(qv2.e, (nb4) this.c);
        } else {
            sb4Var3 = new sb4(sb4Var2.a.q(qv2.e), sb4Var2.c, sb4Var2.b);
            Iterator it = sb4Var2.iterator();
            while (it.hasNext()) {
                hk5 hk5Var = (hk5) it.next();
                if (!u(hk5Var)) {
                    sb4Var3 = sb4Var3.e(hk5Var.a, qv2.e);
                }
            }
        }
        ((zq8) this.b).l(sb4Var, sb4Var3, vk9Var);
        return sb4Var3;
    }

    public String m(Class cls) {
        String name = ((x44) this.d).d(cls).getName();
        if (name != null) {
            return name;
        }
        if (cls.isArray()) {
            cls = cls.getComponentType();
        }
        String simpleName = cls.getSimpleName();
        return cls.isPrimitive() ? simpleName : z85.v(simpleName);
    }

    public cz4 n() {
        return ((vq3) ((x44) this.d).n).a;
    }

    public List p(String str, byte[] bArr) throws NoSuchAlgorithmException, IOException {
        byte[] bArr2 = (byte[]) ((mt3) this.d).invoke(32);
        if (bArr2.length != 32) {
            c6.f("Invalid generated Filen DEK length");
            return null;
        }
        wa3 wa3Var = (wa3) this.b;
        Map mapSingletonMap = Collections.singletonMap("dek", hb3.l(hb3.t(bArr2), bArr, (byte[]) ((bt3) this.c).invoke()));
        mapSingletonMap.getClass();
        wa3Var.getClass();
        wa3Var.b("POST", "/v3/user/dek", mapSingletonMap, str, null, new zk(9));
        byte[] bytes = hb3.t(bArr2).getBytes(f51.d);
        bytes.getClass();
        return nc8.I(bytes);
    }

    public za3 q(String str, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            c6.f("Missing Filen metadata keys");
            return null;
        }
        fl4 fl4VarI = ((wa3) this.b).a("/v3/user/keyPair/info", str).i();
        xa3 xa3Var = new xa3(v(fl4VarI, "privateKey"), v(fl4VarI, "publicKey"));
        if (xa3Var.a()) {
            return e(xa3Var, arrayList);
        }
        c6.f("Missing persisted Filen key pair");
        return null;
    }

    public za3 r(String str, List list, fl4 fl4Var, int i) throws Exception {
        wa3 wa3Var = (wa3) this.b;
        if (list.isEmpty()) {
            c6.f("Missing Filen metadata keys");
            return null;
        }
        xa3 xa3Var = new xa3(v(fl4Var, "privateKey"), v(fl4Var, "publicKey"));
        try {
            fl4 fl4VarI = wa3Var.a("/v3/user/keyPair/info", str).i();
            xa3 xa3Var2 = new xa3(v(fl4VarI, "privateKey"), v(fl4VarI, "publicKey"));
            if (xa3Var2.a()) {
                try {
                    za3 za3VarE = e(xa3Var2, list);
                    Map mapR0 = x65.r0(new pw5("publicKey", za3VarE.b), new pw5("privateKey", h(za3VarE.a, i, (byte[]) el1.S0(list))));
                    wa3Var.getClass();
                    wa3Var.b("POST", "/v3/user/keyPair/update", mapR0, str, null, new zk(9));
                    return za3VarE;
                } catch (Exception e) {
                    if (!xa3Var.a()) {
                        throw e;
                    }
                    try {
                        return e(xa3Var, list);
                    } catch (Exception e2) {
                        yc9.a(e2, e);
                        throw e2;
                    }
                }
            }
            if (xa3Var.a()) {
                return e(xa3Var, list);
            }
            KeyPair keyPair = (KeyPair) ((bt3) this.e).invoke();
            String strEncodeToString = Base64.getEncoder().encodeToString(keyPair.getPrivate().getEncoded());
            strEncodeToString.getClass();
            String strEncodeToString2 = Base64.getEncoder().encodeToString(keyPair.getPublic().getEncoded());
            strEncodeToString2.getClass();
            za3 za3VarA = A(strEncodeToString, strEncodeToString2);
            Map mapR1 = x65.r0(new pw5("publicKey", za3VarA.b), new pw5("privateKey", h(za3VarA.a, i, (byte[]) el1.S0(list))));
            wa3Var.getClass();
            wa3Var.b("POST", "/v3/user/keyPair/set", mapR1, str, null, new zk(9));
            return za3VarA;
        } catch (Exception e3) {
            if (!xa3Var.a()) {
                throw e3;
            }
            try {
                return e(xa3Var, list);
            } catch (Exception e4) {
                yc9.a(e4, e3);
                throw e4;
            }
        }
    }

    public List s(int i, String str, byte[] bArr, fl4 fl4Var) throws Exception {
        List listW;
        List listI;
        wa3 wa3Var = (wa3) this.b;
        if (i != eb3.V1.getValue() && i != eb3.V2.getValue()) {
            if (i != eb3.V3.getValue()) {
                c6.f(fz5.j(i, "Unsupported Filen auth version: "));
                return null;
            }
            String strV = v(fl4Var, "dek");
            try {
                String strV2 = v(wa3Var.a("/v3/user/dek", str).i(), "dek");
                if (strV2 == null || strV2.length() == 0) {
                    listI = strV != null ? nc8.I(d(strV, bArr)) : p(str, bArr);
                } else {
                    listI = nc8.I(d(strV2, bArr));
                }
                return listI;
            } catch (Exception e) {
                if (strV == null) {
                    throw e;
                }
                try {
                    return nc8.I(d(strV, bArr));
                } catch (Exception e2) {
                    yc9.a(e2, e);
                    throw e2;
                }
            }
        }
        String strV3 = v(fl4Var, "masterKeys");
        try {
            byte[] bArr2 = hb3.a;
            Map mapSingletonMap = Collections.singletonMap("masterKeys", hb3.k(new String(bArr, f51.a), bArr, (byte[]) ((bt3) this.c).invoke()));
            mapSingletonMap.getClass();
            wa3Var.getClass();
            String strV4 = v(wa3Var.b("POST", "/v3/user/masterKeys", mapSingletonMap, str, null, new zk(9)).i(), "keys");
            if (strV4 == null || nq7.j0(strV4)) {
                listW = strV3 != null ? w(strV3, bArr) : nc8.I(bArr);
            } else {
                listW = w(strV4, bArr);
            }
            return listW;
        } catch (Exception e3) {
            if (strV3 == null) {
                throw e3;
            }
            try {
                return w(strV3, bArr);
            } catch (Exception e4) {
                yc9.a(e4, e3);
                throw e4;
            }
        }
    }

    public FilenSession t(String str, String str2, String str3) throws bb3 {
        ib3 ib3VarH;
        ya3 ya3Var;
        str.getClass();
        str2.getClass();
        String string = nq7.H0(str).toString();
        db3 db3Var = db3.AuthInfo;
        try {
            wa3 wa3Var = (wa3) this.b;
            Map mapSingletonMap = Collections.singletonMap("email", string);
            mapSingletonMap.getClass();
            List list = wa3.f;
            Map map = mapSingletonMap;
            int i = 9;
            fl4 fl4VarI = wa3Var.b("POST", "/v3/auth/info", map, null, null, new zk(i)).i();
            try {
                int iX = x(fl4VarI);
                try {
                    String strV = v(fl4VarI, "salt");
                    if (strV == null) {
                        strV = "";
                    }
                    String str4 = strV;
                    eb3 eb3Var = eb3.V1;
                    if (iX != eb3Var.getValue() && nq7.j0(str4)) {
                        throw new IllegalArgumentException("Missing Filen response field: salt");
                    }
                    db3 db3Var2 = db3.KeyDerivation;
                    try {
                        if (iX == eb3Var.getValue()) {
                            ib3VarH = hb3.d(str2);
                        } else if (iX == eb3.V2.getValue()) {
                            ib3VarH = hb3.g(str2, str4);
                        } else {
                            if (iX != eb3.V3.getValue()) {
                                throw new IllegalArgumentException("Unsupported Filen auth version: " + iX);
                            }
                            ib3VarH = hb3.h(str2, str4);
                        }
                        db3 db3Var3 = db3.Login;
                        try {
                            fl4 fl4VarI2 = ((wa3) this.b).b("POST", "/v3/login", x65.r0(new pw5("email", string), new pw5("password", ib3VarH.b), new pw5("twoFactorCode", nq7.j0(str3) ? "XXXXXX" : str3), new pw5("authVersion", Integer.valueOf(iX))), null, null, new zk(i)).i();
                            try {
                                String strY = y(fl4VarI2, "apiKey");
                                db3 db3Var4 = db3.MetadataKeys;
                                try {
                                    List listS = s(iX, strY, ib3VarH.a, fl4VarI2);
                                    db3 db3Var5 = db3.KeyPair;
                                    try {
                                        String str5 = r(strY, listS, fl4VarI2, iX).a;
                                        if (iX == eb3.V3.getValue()) {
                                            byte[] bArrI = hb3.i(str5);
                                            byte[] bArrDecode = Base64.getDecoder().decode(str5);
                                            bArrDecode.getClass();
                                            ya3Var = new ya3(bArrI, hb3.j(bArrDecode));
                                        } else {
                                            ya3Var = new ya3(new byte[0], new byte[0]);
                                        }
                                        db3 db3Var6 = db3.BaseFolder;
                                        try {
                                            String strY2 = y(((wa3) this.b).a("/v3/user/baseFolder", strY).i(), "uuid");
                                            ArrayList arrayList = new ArrayList(hl1.G0(listS, 10));
                                            Iterator it = listS.iterator();
                                            while (it.hasNext()) {
                                                arrayList.add(hb3.t((byte[]) it.next()));
                                            }
                                            byte[] bArr = hb3.a;
                                            return new FilenSession(string, strY, iX, "", arrayList, str4, strY2, hb3.t(ya3Var.a), hb3.t(ya3Var.b), iX == eb3.V3.getValue() ? 2 : 0);
                                        } catch (bb3 e) {
                                            throw e;
                                        } catch (Exception e2) {
                                            throw new bb3(db3Var6, e2);
                                        }
                                    } catch (bb3 e3) {
                                        throw e3;
                                    } catch (Exception e4) {
                                        throw new bb3(db3Var5, e4);
                                    }
                                } catch (bb3 e5) {
                                    throw e5;
                                } catch (Exception e6) {
                                    throw new bb3(db3Var4, e6);
                                }
                            } catch (bb3 e7) {
                                throw e7;
                            } catch (Exception e8) {
                                throw new bb3(db3Var3, e8);
                            }
                        } catch (bb3 e9) {
                            throw e9;
                        } catch (Exception e10) {
                            throw new bb3(db3Var3, e10);
                        }
                    } catch (bb3 e11) {
                        throw e11;
                    } catch (Exception e12) {
                        throw new bb3(db3Var2, e12);
                    }
                } catch (bb3 e13) {
                    throw e13;
                } catch (Exception e14) {
                    throw new bb3(db3Var, e14);
                }
            } catch (bb3 e15) {
                throw e15;
            } catch (Exception e16) {
                throw new bb3(db3Var, e16);
            }
        } catch (bb3 e17) {
            throw e17;
        } catch (Exception e18) {
            throw new bb3(db3Var, e18);
        }
    }

    public boolean u(hk5 hk5Var) {
        nb4 nb4Var = (nb4) this.c;
        return nb4Var.compare((hk5) this.d, hk5Var) <= 0 && nb4Var.compare(hk5Var, (hk5) this.e) <= 0;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00ad  */
    public FilenSession z(FilenSession filenSession) throws bb3 {
        byte[] bArrQ;
        ya3 ya3Var;
        String legacyNameHmacKeyHex;
        db3 db3Var = db3.SessionValidation;
        try {
            if (!filenSession.hasRestorableCryptoState()) {
                throw new IllegalArgumentException("Invalid persisted Filen session");
            }
            List<String> metadataKeysHex = filenSession.getMetadataKeysHex();
            ArrayList arrayList = new ArrayList(hl1.G0(metadataKeysHex, 10));
            Iterator<T> it = metadataKeysHex.iterator();
            while (it.hasNext()) {
                arrayList.add(hb3.q((String) it.next()));
            }
            int authVersion = filenSession.getAuthVersion();
            eb3 eb3Var = eb3.V3;
            if (authVersion == eb3Var.getValue() && (filenSession.getNameHmacKeyHex().length() == 0 || (legacyNameHmacKeyHex = filenSession.getLegacyNameHmacKeyHex()) == null || legacyNameHmacKeyHex.length() == 0 || filenSession.getNameHmacKeyVersion() != 2)) {
                db3 db3Var2 = db3.KeyPair;
                try {
                    String str = q(filenSession.getApiKey(), arrayList).a;
                    byte[] bArrI = hb3.i(str);
                    byte[] bArrDecode = Base64.getDecoder().decode(str);
                    bArrDecode.getClass();
                    ya3Var = new ya3(bArrI, hb3.j(bArrDecode));
                } catch (bb3 e) {
                    throw e;
                } catch (Exception e2) {
                    throw new bb3(db3Var2, e2);
                }
            } else {
                byte[] bArr = hb3.a;
                byte[] bArrQ2 = hb3.q(filenSession.getNameHmacKeyHex());
                String legacyNameHmacKeyHex2 = filenSession.getLegacyNameHmacKeyHex();
                if (legacyNameHmacKeyHex2 == null) {
                    bArrQ = new byte[0];
                } else {
                    if (legacyNameHmacKeyHex2.length() <= 0) {
                        legacyNameHmacKeyHex2 = null;
                    }
                    if (legacyNameHmacKeyHex2 != null) {
                        bArrQ = hb3.q(legacyNameHmacKeyHex2);
                    } else {
                        bArrQ = new byte[0];
                    }
                }
                ya3Var = new ya3(bArrQ2, bArrQ);
            }
            db3 db3Var3 = db3.BaseFolder;
            try {
                return FilenSession.copy$default(filenSession, null, null, 0, "", null, null, y(((wa3) this.b).a("/v3/user/baseFolder", filenSession.getApiKey()).i(), "uuid"), hb3.t(ya3Var.a), hb3.t(ya3Var.b), filenSession.getAuthVersion() == eb3Var.getValue() ? 2 : 0, 55, null);
            } catch (bb3 e3) {
                throw e3;
            } catch (Exception e4) {
                throw new bb3(db3Var3, e4);
            }
        } catch (bb3 e5) {
            throw e5;
        } catch (Exception e6) {
            throw new bb3(db3Var, e6);
        }
    }

    @Override // defpackage.vn5
    public sb4 c(sb4 sb4Var, qn5 qn5Var) {
        return sb4Var;
    }

    public /* synthetic */ ai5(ViewGroup viewGroup, ImageView imageView, TextView textView, TextView textView2, int i) {
        this.a = i;
        this.b = viewGroup;
        this.c = imageView;
        this.d = textView;
        this.e = textView2;
    }

    public ai5(wa3 wa3Var) {
        this.a = 2;
        q9 q9Var = new q9(8);
        hi hiVar = new hi(3);
        zj zjVar = new zj(6);
        wa3Var.getClass();
        this.b = wa3Var;
        this.c = q9Var;
        this.d = hiVar;
        this.e = zjVar;
    }

    public ai5(int i) {
        this.a = i;
        switch (i) {
            case 7:
                this.b = new k50(0);
                this.c = new SparseArray();
                this.d = new v15();
                this.e = new k50(0);
                break;
            case 8:
                break;
            default:
                this.b = new lr6(128);
                this.e = new lr6(256);
                this.d = new jr6(256);
                this.c = new jr6(512);
                break;
        }
    }

    public ai5(l22 l22Var) {
        this.a = 0;
        this.b = new ArrayList();
        this.d = new HashSet();
        this.e = l22Var;
        this.c = f;
    }

    public ai5(wc9 wc9Var, x44 x44Var, i87 i87Var) {
        this.a = 5;
        la laVar = new la();
        laVar.a = this;
        laVar.b = x44Var;
        uz7 uz7Var = new uz7();
        uz7Var.a = new vc9((byte) 0, 3);
        uz7Var.b = new vc9((byte) 0, 3);
        uz7Var.c = new vc9((byte) 0, 3);
        uz7Var.d = laVar;
        this.b = uz7Var;
        this.c = wc9Var;
        this.d = x44Var;
        this.e = i87Var;
    }
}
