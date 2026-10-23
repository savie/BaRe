package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ip5 {
    public static final Charset a = h51.c;

    public static byte[] a(lv1 lv1Var, byte[] bArr, byte[]... bArr2) {
        try {
            lv1Var.getClass();
            c55 c55VarH = lv1.h("HMACT64");
            c55VarH.init(bArr);
            for (byte[] bArr3 : bArr2) {
                c55VarH.update(bArr3);
            }
            return c55VarH.b();
        } catch (h67 e) {
            throw new hp5(e);
        }
    }

    public static byte[] b(lv1 lv1Var, byte[]... bArr) {
        try {
            lv1Var.getClass();
            qg0 qg0Var = new qg0("MD5");
            for (byte[] bArr2 : bArr) {
                qg0Var.b(bArr2);
            }
            return qg0Var.a();
        } catch (h67 e) {
            throw new hp5(e);
        }
    }

    public static byte[] c(lv1 lv1Var, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr2.length];
        try {
            lv1Var.getClass();
            x23 x23Var = (x23) qf0.a.get("RC4");
            if (x23Var == null) {
                throw new IllegalArgumentException("Unknown Cipher RC4");
            }
            y61 y61Var = (y61) x23Var.b();
            y61Var.init(bArr);
            y61Var.doFinal(bArr3, y61Var.a(bArr2.length, bArr2, bArr3));
            return bArr3;
        } catch (h67 e) {
            throw new hp5(e);
        }
    }
}
