package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lq4 extends j3 {
    @Override // defpackage.j3
    public final InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) throws IOException {
        byte[] bArr2 = kk1Var.d;
        if (bArr2 == null) {
            y5.m("Missing LZMA properties");
            return null;
        }
        if (bArr2.length < 1) {
            y5.m("LZMA properties too short");
            return null;
        }
        byte b = bArr2[0];
        int iJ = (int) wx3.j(bArr2, 1, 4);
        if (iJ > 2147483632) {
            y5.m(xs1.j("Dictionary larger than 4GiB maximum size used in ", str));
            return null;
        }
        int i2 = sq4.r;
        if (iJ < 0 || iJ > 2147483632) {
            y5.h("LZMA dictionary is too big for this implementation");
            return null;
        }
        int i3 = b & 255;
        if (i3 > 224) {
            throw new cy1("Invalid LZMA properties byte");
        }
        int i4 = i3 % 45;
        int i5 = i4 / 9;
        int i6 = i4 - (i5 * 9);
        if (i6 < 0 || i6 > 8 || i5 < 0 || i5 > 4) {
            c6.f("Invalid lc or lp");
            return null;
        }
        int iA = ((1536 << (i6 + i5)) / 1024) + (sq4.a(iJ) / 1024) + 10;
        if (iA > i) {
            throw new zb5(i, iA);
        }
        sq4 sq4Var = new sq4(inputStream, j, b, iJ);
        sq4Var.k = true;
        return sq4Var;
    }

    @Override // defpackage.j3
    public final OutputStream b(Object obj, OutputStream outputStream) throws hf8 {
        eq4 eq4Var;
        if (obj instanceof eq4) {
            eq4Var = (eq4) obj;
        } else {
            eq4 eq4Var2 = new eq4();
            eq4Var2.c(j3.e(8388608, obj));
            eq4Var = eq4Var2;
        }
        return new dj3(new tq4(outputStream, eq4Var));
    }

    @Override // defpackage.j3
    public final byte[] c(Object obj) throws hf8 {
        eq4 eq4Var;
        if (obj instanceof eq4) {
            eq4Var = (eq4) obj;
        } else {
            eq4 eq4Var2 = new eq4();
            eq4Var2.c(j3.e(8388608, obj));
            eq4Var = eq4Var2;
        }
        byte b = (byte) ((((eq4Var.d * 5) + eq4Var.c) * 9) + eq4Var.b);
        int i = eq4Var.a;
        byte[] bArr = new byte[5];
        bArr[0] = b;
        wx3.C(i, bArr, 1, 4);
        return bArr;
    }

    @Override // defpackage.j3
    public final Object d(kk1 kk1Var) throws IOException {
        byte[] bArr = kk1Var.d;
        if (bArr == null) {
            y5.m("Missing LZMA properties");
            return null;
        }
        if (bArr.length < 1) {
            y5.m("LZMA properties too short");
            return null;
        }
        int i = bArr[0] & 255;
        int i2 = i / 45;
        int i3 = i - (i2 * 45);
        int i4 = i3 / 9;
        int i5 = i3 - (i4 * 9);
        eq4 eq4Var = new eq4();
        if (i2 < 0 || i2 > 4) {
            y5.h(fz5.j(i2, "pb must not exceed 4: "));
            return null;
        }
        eq4Var.d = i2;
        if (i5 < 0 || i4 < 0 || i5 > 4 || i4 > 4 || i5 + i4 > 4) {
            y5.h(dj7.i("lc + lp must not exceed 4: ", i5, i4, " + "));
            return null;
        }
        eq4Var.b = i5;
        eq4Var.c = i4;
        eq4Var.c((int) wx3.j(bArr, 1, 4));
        return eq4Var;
    }
}
