package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t43 implements s43 {
    public final String a;

    public t43(String str) {
        this.a = str;
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        sb.append((CharSequence) this.a);
    }

    @Override // defpackage.s43
    public final int c() {
        return this.a.length();
    }
}
