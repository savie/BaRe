package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lg0 implements c55 {
    public static final HashMap b;
    public final b55 a;

    static {
        HashMap map = new HashMap();
        b = map;
        map.put("HMACSHA256", new ig0());
        map.put("HMACMD5", new jg0());
        map.put("AESCMAC", new kg0());
    }

    public lg0(String str) {
        x23 x23Var = (x23) b.get(str.toUpperCase());
        if (x23Var != null) {
            this.a = (b55) x23Var.b();
        } else {
            c6.f("No Mac defined for ".concat(str));
            throw null;
        }
    }

    @Override // defpackage.c55
    public final void a(byte b2) {
        this.a.a(b2);
    }

    @Override // defpackage.c55
    public final byte[] b() {
        b55 b55Var = this.a;
        byte[] bArr = new byte[b55Var.b()];
        b55Var.doFinal(bArr, 0);
        return bArr;
    }

    @Override // defpackage.c55
    public final void init(byte[] bArr) {
        this.a.c(new oo4(bArr, bArr.length));
    }

    @Override // defpackage.c55
    public final void update(byte[] bArr) {
        this.a.update(bArr, 0, bArr.length);
    }

    @Override // defpackage.c55
    public final void update(byte[] bArr, int i, int i2) {
        this.a.update(bArr, i, i2);
    }
}
