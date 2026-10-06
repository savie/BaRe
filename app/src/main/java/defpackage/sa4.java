package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sa4 implements z88 {
    public static final sa4[] c;
    public static final sa4 d;
    public final String a;
    public final byte b;

    static {
        sa4[] sa4VarArr = new sa4[256];
        for (int i = 0; i < 256; i++) {
            sa4VarArr[i] = new sa4((byte) i);
        }
        c = sa4VarArr;
        d = sa4VarArr[0];
    }

    public sa4(byte b) {
        int i = b & 255;
        char[] cArr = uu5.a;
        this.a = new String(new char[]{cArr[i], cArr[i | 256]});
        this.b = b;
    }

    @Override // defpackage.z88
    public final byte asByte() {
        return this.b;
    }

    @Override // defpackage.z88
    public final String asHex() {
        return this.a;
    }

    public final String toString() {
        return this.a;
    }
}
