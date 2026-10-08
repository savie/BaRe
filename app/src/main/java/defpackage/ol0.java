package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ol0 extends ql0 {
    public final char[] d;

    public ol0() {
        nl0 nl0Var = new nl0("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'});
        super(nl0Var, (Character) null);
        this.d = new char[512];
        char[] cArr = nl0Var.b;
        if (cArr.length != 16) {
            c6.b();
            throw null;
        }
        for (int i = 0; i < 256; i++) {
            char[] cArr2 = this.d;
            cArr2[i] = cArr[i >>> 4];
            cArr2[i | 256] = cArr[i & 15];
        }
    }
}
