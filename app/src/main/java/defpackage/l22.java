package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l22 implements d36, c55, z23, n59 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public l22(StringWriter stringWriter, vq3 vq3Var) {
        this.a = 4;
        wq3 wq3Var = new wq3();
        wq3Var.d = new BufferedWriter(stringWriter, 1024);
        lb4 lb4Var = new lb4();
        lb4Var.a = vq3Var.b;
        vc9 vc9Var = new vc9((byte) 0, 1);
        vc9Var.c = new String[16];
        lb4Var.d = vc9Var;
        wq3Var.c = lb4Var;
        ln5 ln5Var = new ln5(9);
        ln5Var.b = new StringBuilder();
        wq3Var.b = ln5Var;
        this.c = wq3Var;
        HashSet hashSet = new HashSet();
        this.d = hashSet;
        this.b = new iv5(hashSet);
    }

    public static int i(l22 l22Var, int i, int i2, byte[] bArr, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        while (i5 < i2 && i6 < i3) {
            byte b = bArr[i6];
            int i7 = b & 15;
            i6++;
            int i8 = (b & 255) >> 4;
            if (i4 == 2) {
                if (i7 < 15) {
                    ((int[]) l22Var.b)[i + i5] = 2 - (i7 - (((i7 * 205) >> 10) * 5));
                    i5++;
                }
                if (i8 < 15 && i5 < i2) {
                    ((int[]) l22Var.b)[i + i5] = 2 - (i8 - (((i8 * 205) >> 10) * 5));
                    i5++;
                }
            } else if (i4 == 4) {
                if (i7 < 9) {
                    ((int[]) l22Var.b)[i + i5] = 4 - i7;
                    i5++;
                }
                if (i8 < 9 && i5 < i2) {
                    ((int[]) l22Var.b)[i + i5] = 4 - i8;
                    i5++;
                }
            }
        }
        return i5;
    }

    public static int j(l22 l22Var, int i, int i2, byte[] bArr, int i3) {
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = i5 + 3;
            if (i6 > i3) {
                break;
            }
            int i7 = (((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255)) & 8388607;
            if (i7 < 8380417) {
                ((int[]) l22Var.b)[i + i4] = i7;
                i4++;
            }
            i5 = i6;
        }
        return i4;
    }

    @Override // defpackage.c55
    public void a(byte b) {
        ((qg0) this.b).a.a(b);
    }

    @Override // defpackage.c55
    public byte[] b() {
        byte[] bArr = (byte[]) this.c;
        qg0 qg0Var = (qg0) this.b;
        try {
            byte[] bArrA = qg0Var.a();
            qg0Var.b((byte[]) this.d);
            qg0Var.a.update(bArrA, 0, bArrA.length);
            return qg0Var.a();
        } finally {
            qg0Var.a.reset();
            qg0Var.a.update(bArr, 0, bArr.length);
        }
    }

    @Override // defpackage.d36
    public boolean c(Object obj) {
        if (obj instanceof d33) {
            ((d33) obj).a().a = true;
        }
        ((e33) this.c).j(obj);
        return ((f36) this.d).c(obj);
    }

    @Override // defpackage.d36
    public Object d() {
        Object objD = ((f36) this.d).d();
        if (objD == null) {
            objD = ((c33) this.b).b();
            if (Log.isLoggable("FactoryPools", 2)) {
                Log.v("FactoryPools", "Created new " + objD.getClass());
            }
        }
        if (objD instanceof d33) {
            ((d33) objD).a().a = false;
        }
        return objD;
    }

    public void e(byte[] bArr, int i) {
        byte[] bArr2 = new byte[8];
        int i2 = ((g45) this.c).e;
        if (i2 != 2) {
            if (i2 != 4) {
                g84.h("Eta needs to be 2 or 4!");
                return;
            }
            for (int i3 = 0; i3 < 128; i3++) {
                int i4 = i3 * 2;
                int[] iArr = (int[]) this.b;
                byte b = (byte) (i2 - iArr[i4]);
                bArr2[0] = b;
                byte b2 = (byte) (i2 - iArr[i4 + 1]);
                bArr2[1] = b2;
                bArr[i + i3] = (byte) ((b2 << 4) | b);
            }
            return;
        }
        for (int i5 = 0; i5 < 32; i5++) {
            int i6 = i5 * 8;
            int[] iArr2 = (int[]) this.b;
            byte b3 = (byte) (i2 - iArr2[i6]);
            bArr2[0] = b3;
            byte b4 = (byte) (i2 - iArr2[i6 + 1]);
            bArr2[1] = b4;
            byte b5 = (byte) (i2 - iArr2[i6 + 2]);
            bArr2[2] = b5;
            bArr2[3] = (byte) (i2 - iArr2[i6 + 3]);
            bArr2[4] = (byte) (i2 - iArr2[i6 + 4]);
            bArr2[5] = (byte) (i2 - iArr2[i6 + 5]);
            bArr2[6] = (byte) (i2 - iArr2[i6 + 6]);
            bArr2[7] = (byte) (i2 - iArr2[i6 + 7]);
            int i7 = (i5 * 3) + i;
            bArr[i7] = (byte) ((b4 << 3) | b3 | (b5 << 6));
            bArr[i7 + 1] = (byte) ((bArr2[2] >> 2) | (bArr2[3] << 1) | (bArr2[4] << 4) | (bArr2[5] << 7));
            bArr[i7 + 2] = (byte) ((bArr2[5] >> 1) | (bArr2[6] << 2) | (bArr2[7] << 5));
        }
    }

    public void f(byte[] bArr, int i) {
        int i2 = ((g45) this.c).e;
        int i3 = 0;
        if (i2 != 2) {
            if (i2 == 4) {
                while (i3 < 128) {
                    int i4 = i3 * 2;
                    byte b = bArr[i + i3];
                    int[] iArr = (int[]) this.b;
                    iArr[i4] = b & 15;
                    int i5 = i4 + 1;
                    iArr[i5] = (b & 255) >> 4;
                    iArr[i4] = i2 - iArr[i4];
                    iArr[i5] = i2 - iArr[i5];
                    i3++;
                }
                return;
            }
            return;
        }
        while (i3 < 32) {
            int i6 = (i3 * 3) + i;
            int i7 = i3 * 8;
            byte b2 = bArr[i6];
            int[] iArr2 = (int[]) this.b;
            iArr2[i7] = b2 & 7;
            int i8 = i7 + 1;
            int i9 = b2 & 255;
            iArr2[i8] = (i9 >> 3) & 7;
            int i10 = i7 + 2;
            int i11 = bArr[i6 + 1] & 255;
            iArr2[i10] = (i9 >> 6) | ((i11 << 2) & 7);
            int i12 = i7 + 3;
            iArr2[i12] = (i11 >> 1) & 7;
            int i13 = i7 + 4;
            iArr2[i13] = (i11 >> 4) & 7;
            int i14 = i7 + 5;
            int i15 = bArr[i6 + 2] & 255;
            iArr2[i14] = (i11 >> 7) | ((i15 << 1) & 7);
            int i16 = i7 + 6;
            iArr2[i16] = (i15 >> 2) & 7;
            int i17 = i7 + 7;
            iArr2[i17] = (i15 >> 5) & 7;
            iArr2[i7] = i2 - iArr2[i7];
            iArr2[i8] = i2 - iArr2[i8];
            iArr2[i10] = i2 - iArr2[i10];
            iArr2[i12] = i2 - iArr2[i12];
            iArr2[i13] = i2 - iArr2[i13];
            iArr2[i14] = i2 - iArr2[i14];
            iArr2[i16] = i2 - iArr2[i16];
            iArr2[i17] = i2 - iArr2[i17];
            i3++;
        }
    }

    public void g(vc7 vc7Var) {
        ab8 ab8Var = vc7Var.b;
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) this.b;
        reentrantReadWriteLock.writeLock().lock();
        try {
            ((HashMap) this.c).put(Long.valueOf(ab8Var.a), vc7Var);
            ((HashMap) this.d).put(ab8Var.b.b, vc7Var);
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return new e41(4, (Context) ((ea6) this.b).get(), (mw6) ((ea6) this.c).get(), (ge0) ((ma2) this.d).get());
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        yf1 yf1Var = (yf1) this.b;
        m69 m69Var = (m69) f59Var;
        if (!TextUtils.isEmpty(m69Var.e)) {
            yf1Var.j(new Status(17025, null, null, null), new xz5(null, null, m69Var.f, m69Var.e, true));
        } else {
            ((ke) ((s02) this.d).c).t(new b69(m69Var.b, m69Var.a, Long.valueOf(m69Var.c), BearerAuthenticationSchemeInternal.SCHEME_BEARER), null, "phone", Boolean.valueOf(m69Var.d), null, yf1Var, (s02) this.c);
        }
    }

    @Override // defpackage.c55
    public void init(byte[] bArr) throws h67 {
        byte[] bArr2 = (byte[]) this.d;
        byte[] bArr3 = (byte[]) this.c;
        if (bArr == null) {
            throw new h67("Missing key data");
        }
        int iMin = Math.min(bArr.length, 64);
        for (int i = 0; i < iMin; i++) {
            bArr3[i] = (byte) (54 ^ bArr[i]);
            bArr2[i] = (byte) (92 ^ bArr[i]);
        }
        while (iMin < 64) {
            bArr3[iMin] = 54;
            bArr2[iMin] = 92;
            iMin++;
        }
        qg0 qg0Var = (qg0) this.b;
        qg0Var.a.reset();
        qg0Var.a.update(bArr3, 0, bArr3.length);
    }

    public void k(byte[] bArr, short s) {
        int i;
        oe oeVar = (oe) this.d;
        int i2 = ((g45) this.c).e;
        if (i2 == 2) {
            oeVar.getClass();
            i = 1;
        } else if (i2 != 4) {
            g84.h("Wrong Dilithium Eta!");
            return;
        } else {
            oeVar.getClass();
            i = 2;
        }
        oeVar.getClass();
        lr6 lr6Var = (lr6) oeVar.c;
        int i3 = i * 136;
        byte[] bArr2 = new byte[i3];
        lr6Var.reset();
        lr6Var.update(bArr, 0, bArr.length);
        lr6Var.update(new byte[]{(byte) s, (byte) (s >> 8)}, 0, 2);
        lr6Var.m(bArr2, 0, i3);
        int i4 = i(this, 0, 256, bArr2, i3, i2);
        while (i4 < 256) {
            lr6Var.m(bArr2, 0, 136);
            i4 += i(this, i4, 256 - i4, bArr2, 136, i2);
        }
    }

    public cv5 l(ev5 ev5Var, String str) throws IOException, sn5 {
        iv5 iv5Var = (iv5) this.b;
        if (iv5Var.isEmpty()) {
            return n(ev5Var, str);
        }
        if (!iv5Var.contains(ev5Var)) {
            return null;
        }
        ev5 ev5VarD = iv5Var.d();
        if (((HashSet) this.d).contains(ev5VarD)) {
            o(ev5VarD);
        }
        while (iv5Var.d() != ev5Var) {
            m(iv5Var.c());
        }
        if (!iv5Var.isEmpty()) {
            p(ev5Var);
        }
        return n(ev5Var, str);
    }

    public void m(ev5 ev5Var) throws IOException {
        wq3 wq3Var = (wq3) this.c;
        String name = ev5Var.getName();
        String strH = ev5Var.h(false);
        if (ev5Var.getValue() != null) {
            p(ev5Var);
        }
        if (name != null) {
            lb4 lb4Var = (lb4) wq3Var.c;
            BufferedWriter bufferedWriter = (BufferedWriter) wq3Var.d;
            ln5 ln5Var = (ln5) wq3Var.b;
            int i = lb4Var.c - 1;
            lb4Var.c = i;
            String strA = lb4Var.a(i);
            int i2 = lb4Var.a;
            if (i2 > 0) {
                lb4Var.b -= i2;
            }
            int i3 = wq3Var.a;
            if (i3 == 2) {
                wq3Var.d('/');
                wq3Var.d('>');
            } else {
                if (i3 != 3) {
                    wq3Var.e(strA);
                }
                if (wq3Var.a != 2) {
                    wq3Var.d('<');
                    wq3Var.d('/');
                    bufferedWriter.append((CharSequence) ln5Var.b);
                    ((StringBuilder) ln5Var.b).setLength(0);
                    if (strH != null && strH.length() != 0) {
                        bufferedWriter.write(strH);
                        bufferedWriter.write(58);
                    }
                    bufferedWriter.write(name);
                    wq3Var.d('>');
                }
            }
            wq3Var.a = 4;
            bufferedWriter.append((CharSequence) ln5Var.b);
            ((StringBuilder) ln5Var.b).setLength(0);
            bufferedWriter.flush();
        }
    }

    public cv5 n(ev5 ev5Var, String str) throws sn5 {
        cv5 cv5Var = new cv5();
        cv5Var.b = new x46(ev5Var);
        cv5Var.a = new fv5(cv5Var);
        cv5Var.h = 3;
        cv5Var.c = this;
        cv5Var.d = ev5Var;
        cv5Var.g = str;
        if (str == null) {
            throw new sn5("Can not have a null name");
        }
        iv5 iv5Var = (iv5) this.b;
        iv5Var.a.add(cv5Var);
        iv5Var.add(cv5Var);
        return cv5Var;
    }

    public void o(ev5 ev5Var) throws IOException, sn5 {
        wq3 wq3Var = (wq3) this.c;
        ev5Var.getClass();
        String strH = ev5Var.h(false);
        String name = ev5Var.getName();
        if (name != null) {
            lb4 lb4Var = (lb4) wq3Var.c;
            ln5 ln5Var = (ln5) wq3Var.b;
            int i = lb4Var.c;
            lb4Var.c = i + 1;
            String strA = lb4Var.a(i);
            int i2 = lb4Var.a;
            if (i2 > 0) {
                lb4Var.b += i2;
            }
            if (wq3Var.a == 2) {
                ((StringBuilder) ln5Var.b).append('>');
            }
            BufferedWriter bufferedWriter = (BufferedWriter) wq3Var.d;
            bufferedWriter.append((CharSequence) ln5Var.b);
            ((StringBuilder) ln5Var.b).setLength(0);
            bufferedWriter.flush();
            ((StringBuilder) ln5Var.b).append(strA);
            ((StringBuilder) ln5Var.b).append('<');
            if (strH != null && strH.length() != 0) {
                ((StringBuilder) ln5Var.b).append(strH);
                ((StringBuilder) ln5Var.b).append(':');
            }
            ((StringBuilder) ln5Var.b).append(name);
            wq3Var.a = 2;
        }
        fv5<String> fv5Var = (fv5) ev5Var.getAttributes();
        for (String str : fv5Var) {
            ev5 ev5Var2 = (ev5) fv5Var.get(str);
            String value = ev5Var2.getValue();
            String strH2 = ev5Var2.h(false);
            if (wq3Var.a != 2) {
                throw new sn5("Start element required");
            }
            wq3Var.d(' ');
            ln5 ln5Var2 = (ln5) wq3Var.b;
            BufferedWriter bufferedWriter2 = (BufferedWriter) wq3Var.d;
            bufferedWriter2.append((CharSequence) ln5Var2.b);
            ((StringBuilder) ln5Var2.b).setLength(0);
            if (strH2 != null && strH2.length() != 0) {
                bufferedWriter2.write(strH2);
                bufferedWriter2.write(58);
            }
            bufferedWriter2.write(str);
            wq3Var.d('=');
            wq3Var.d('\"');
            wq3Var.a(value);
            wq3Var.d('\"');
        }
        ((HashSet) this.d).remove(ev5Var);
        x46<String> x46VarC = ev5Var.c();
        for (String str2 : x46VarC) {
            String strD = x46VarC.d(str2);
            if (wq3Var.a != 2) {
                throw new sn5("Start element required");
            }
            wq3Var.d(' ');
            ln5 ln5Var3 = (ln5) wq3Var.b;
            BufferedWriter bufferedWriter3 = (BufferedWriter) wq3Var.d;
            bufferedWriter3.append((CharSequence) ln5Var3.b);
            ((StringBuilder) ln5Var3.b).setLength(0);
            bufferedWriter3.write(wq3.e);
            if (strD != null && strD.length() != 0) {
                wq3Var.d(':');
                wq3Var.e(strD);
            }
            wq3Var.d('=');
            wq3Var.d('\"');
            wq3Var.a(str2);
            wq3Var.d('\"');
        }
    }

    public void p(ev5 ev5Var) {
        int iA = ev5Var.a();
        String value = ev5Var.getValue();
        if (value != null) {
            iv5 iv5Var = (iv5) this.b;
            iv5Var.getClass();
            hv5 hv5Var = new hv5(iv5Var);
            while (hv5Var.hasNext()) {
                ev5 ev5Var2 = (ev5) hv5Var.next();
                if (iA != 3) {
                    break;
                } else {
                    iA = ev5Var2.a();
                }
            }
            wq3 wq3Var = (wq3) this.c;
            if (wq3Var.a == 2) {
                wq3Var.d('>');
            }
            if (iA == 1) {
                wq3Var.e("<![CDATA[");
                wq3Var.e(value);
                wq3Var.e("]]>");
            } else {
                wq3Var.a(value);
            }
            wq3Var.a = 3;
        }
        ev5Var.setValue(null);
    }

    public eu9 q() {
        Integer num = (Integer) this.b;
        if (num == null) {
            m0.h("key size not set");
            return null;
        }
        if (((Integer) this.c) == null) {
            m0.h("tag size not set");
            return null;
        }
        if (((du9) this.d) != null) {
            return new eu9(num.intValue(), ((Integer) this.c).intValue(), (du9) this.d);
        }
        m0.h("variant not set");
        return null;
    }

    public void r(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i << 3)));
        }
        this.b = Integer.valueOf(i);
    }

    public void s(int i) {
        if (i < 10 || 16 < i) {
            throw new GeneralSecurityException(fz5.j(i, "Invalid tag size for AesCmacParameters: "));
        }
        this.c = Integer.valueOf(i);
    }

    public String toString() {
        switch (this.a) {
            case 5:
                StringBuilder sb = new StringBuilder("[");
                int i = 0;
                while (true) {
                    int[] iArr = (int[]) this.b;
                    if (i >= iArr.length) {
                        sb.append("]");
                        return sb.toString();
                    }
                    sb.append(iArr[i]);
                    if (i != ((int[]) this.b).length - 1) {
                        sb.append(", ");
                    }
                    i++;
                }
                break;
            default:
                return super.toString();
        }
    }

    @Override // defpackage.c55
    public void update(byte[] bArr, int i, int i2) {
        ((qg0) this.b).a.update(bArr, i, i2);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((s02) this.c).zza(str);
    }

    @Override // defpackage.c55
    public void update(byte[] bArr) {
        ((qg0) this.b).b(bArr);
    }

    public /* synthetic */ l22(byte b, int i) {
        this.a = i;
    }

    public /* synthetic */ l22(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public l22(g45 g45Var) {
        this.a = 5;
        this.b = new int[256];
        this.c = g45Var;
        oe oeVar = g45Var.h;
        this.d = oeVar;
        oeVar.getClass();
    }

    public /* synthetic */ l22(Object obj, Object obj2, Object obj3, int i, boolean z) {
        this.a = i;
        this.d = obj;
        this.b = obj2;
        this.c = obj3;
    }

    public l22(int i) {
        this.a = 7;
        this.b = new long[i];
        this.c = new BitSet(i);
        this.d = new long[i];
    }

    public l22() {
        this.a = 1;
        this.b = new int[10];
        this.c = new int[10];
        this.d = new int[10];
    }
}
