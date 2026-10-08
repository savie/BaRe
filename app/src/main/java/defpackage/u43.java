package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u43 implements s43 {
    public final int a;
    public final String[] b;

    public u43(int i, String[] strArr) {
        this.a = i;
        this.b = strArr;
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        sb.append((CharSequence) this.b[calendar.get(this.a)]);
    }

    @Override // defpackage.s43
    public final int c() {
        String[] strArr = this.b;
        int length = strArr.length;
        int i = 0;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            int length2 = strArr[length].length();
            if (length2 > i) {
                i = length2;
            }
        }
    }
}
