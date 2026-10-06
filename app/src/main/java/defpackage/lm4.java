package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lm4 {
    public char[] a;
    public int b;

    public final void a(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.a;
        if (cArr.length <= i3) {
            int i4 = i * 2;
            if (i3 < i4) {
                i3 = i4;
            }
            this.a = Arrays.copyOf(cArr, i3);
        }
    }

    public final void b() {
        v41 v41Var = v41.c;
        char[] cArr = this.a;
        v41Var.getClass();
        cArr.getClass();
        synchronized (v41Var) {
            int i = v41Var.b;
            if (cArr.length + i < l50.a) {
                v41Var.b = i + cArr.length;
                v41Var.a.addLast(cArr);
            }
        }
    }

    public final void c(String str) {
        str.getClass();
        int length = str.length();
        if (length == 0) {
            return;
        }
        a(this.b, length);
        str.getChars(0, str.length(), this.a, this.b);
        this.b += length;
    }

    public final String toString() {
        return new String(this.a, 0, this.b);
    }
}
