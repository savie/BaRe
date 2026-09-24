package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d53 implements q43 {
    public static final d53 a = new d53();

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        b(calendar.get(2) + 1, sb);
    }

    @Override // defpackage.q43
    public final void b(int i, StringBuilder sb) {
        if (i < 10) {
            sb.append((char) (i + 48));
        } else {
            g53.a(i, sb);
        }
    }

    @Override // defpackage.s43
    public final int c() {
        return 2;
    }
}
