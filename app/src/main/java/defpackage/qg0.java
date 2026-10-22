package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qg0 {
    public static final HashMap b;
    public final hl2 a;

    static {
        HashMap map = new HashMap();
        b = map;
        map.put("SHA-512", new df0(1));
        map.put("SHA256", new og0());
        map.put("MD4", new ff0(1));
        map.put("MD5", new pg0());
    }

    public qg0(String str) {
        x23 x23Var = (x23) b.get(str);
        if (x23Var != null) {
            this.a = (hl2) x23Var.b();
        } else {
            c6.f(eq3.k("No MessageDigest ", str, " defined in BouncyCastle"));
            throw null;
        }
    }

    public final byte[] a() {
        hl2 hl2Var = this.a;
        byte[] bArr = new byte[hl2Var.c()];
        hl2Var.doFinal(bArr, 0);
        return bArr;
    }

    public final void b(byte[] bArr) {
        this.a.update(bArr, 0, bArr.length);
    }
}
