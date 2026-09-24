package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fs5 {
    public final jg4 a;
    public final int[] b;
    public final String[] c;
    public final Set d;

    public fs5(jg4 jg4Var, int[] iArr, String[] strArr) {
        jg4Var.getClass();
        iArr.getClass();
        strArr.getClass();
        this.a = jg4Var;
        this.b = iArr;
        this.c = strArr;
        if (iArr.length == strArr.length) {
            this.d = !(strArr.length == 0) ? sz8.Y(strArr[0]) : sv2.a;
        } else {
            l0.e("Check failed.");
            throw null;
        }
    }
}
