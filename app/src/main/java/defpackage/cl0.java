package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cl0 {
    public static final bl0 a;

    static {
        bl0 bl0Var = new bl0("MIME", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", true, '=', 76);
        a = new bl0(bl0Var);
        byte[] bArr = bl0Var.c;
        System.arraycopy(bArr, 0, new byte[64], 0, bArr.length);
        char[] cArr = bl0Var.b;
        System.arraycopy(cArr, 0, new char[64], 0, cArr.length);
        int[] iArr = bl0Var.a;
        System.arraycopy(iArr, 0, new int[128], 0, iArr.length);
        StringBuilder sb = new StringBuilder("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        sb.setCharAt(sb.indexOf("+"), '-');
        sb.setCharAt(sb.indexOf("/"), '_');
        new bl0("MODIFIED-FOR-URL", sb.toString(), false, (char) 0, Integer.MAX_VALUE);
    }
}
