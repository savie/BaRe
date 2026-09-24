package defpackage;

import java.lang.reflect.Array;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class za6 extends lb6 {
    public final /* synthetic */ int a;

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                try {
                    return new wy0((sy0) fi8.n.get(subjectPublicKeyInfo.a.a), ms8.k(vy0.k(subjectPublicKeyInfo.l()).a));
                } catch (Exception unused) {
                    return new wy0((sy0) fi8.n.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b.C());
                }
            default:
                byte[] bArr = j1.x(subjectPublicKeyInfo.l()).a;
                re6 re6Var = (re6) fi8.F.get(subjectPublicKeyInfo.a.a);
                te6 te6Var = new te6(false, re6Var);
                int i = re6Var.c;
                int i2 = re6Var.b;
                int i3 = re6Var.e;
                int i4 = re6Var.d;
                int i5 = re6Var.k;
                Class cls = Short.TYPE;
                if (i5 == 1) {
                    te6Var.c = (short[][][]) Array.newInstance((Class<?>) cls, i3, i4, i4);
                    int i6 = 0;
                    for (int i7 = 0; i7 < i4; i7++) {
                        for (int i8 = 0; i8 < i4; i8++) {
                            for (int i9 = 0; i9 < i3; i9++) {
                                short[][][] sArr = te6Var.c;
                                if (i7 > i8) {
                                    sArr[i9][i7][i8] = 0;
                                } else {
                                    sArr[i9][i7][i8] = (short) (bArr[i6] & 255);
                                    i6++;
                                }
                            }
                        }
                    }
                    return te6Var;
                }
                te6Var.d = ms8.t(bArr, 0, 32);
                short[][][] sArr2 = (short[][][]) Array.newInstance((Class<?>) cls, i2, re6Var.a, i);
                te6Var.e = sArr2;
                short[][][] sArr3 = (short[][][]) Array.newInstance((Class<?>) cls, i2, i2, i2);
                te6Var.f = sArr3;
                short[][][] sArr4 = (short[][][]) Array.newInstance((Class<?>) cls, i2, i2, i);
                te6Var.k = sArr4;
                short[][][] sArr5 = (short[][][]) Array.newInstance((Class<?>) cls, i2, i, i);
                te6Var.n = sArr5;
                short[][][] sArr6 = (short[][][]) Array.newInstance((Class<?>) cls, i, i, i);
                te6Var.p = sArr6;
                int iM = x13.M(sArr2, bArr, 32, false) + 32;
                int iM2 = x13.M(sArr3, bArr, iM, true) + iM;
                int iM3 = x13.M(sArr4, bArr, iM2, false) + iM2;
                int iM4 = x13.M(sArr5, bArr, iM3, true) + iM3;
                if (x13.M(sArr6, bArr, iM4, true) + iM4 == bArr.length) {
                    return te6Var;
                }
                c6.f("unparsed data in key encoding");
                return null;
        }
    }
}
