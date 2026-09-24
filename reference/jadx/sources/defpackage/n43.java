package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n43 implements s43 {
    public final char a;

    public n43(char c) {
        this.a = c;
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        sb.append(this.a);
    }

    @Override // defpackage.s43
    public final int c() {
        return 1;
    }
}
