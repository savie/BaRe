package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class re2 extends as5 {
    public static final re2 d;
    public final String c;
    public final int b = 2;
    public final char[] a = new char[32];

    static {
        String property;
        try {
            property = System.getProperty("line.separator");
        } catch (Throwable unused) {
            property = "\n";
        }
        d = new re2(property);
    }

    public re2(String str) {
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            "  ".getChars(0, 2, this.a, i);
            i += 2;
        }
        this.c = str;
    }

    @Override // defpackage.as5
    public final void f0(pw8 pw8Var, int i) {
        pw8Var.O(this.c);
        if (i <= 0) {
            return;
        }
        int length = i * this.b;
        while (true) {
            char[] cArr = this.a;
            if (length <= cArr.length) {
                pw8Var.D0(cArr, length);
                return;
            } else {
                pw8Var.D0(cArr, cArr.length);
                length -= cArr.length;
            }
        }
    }
}
