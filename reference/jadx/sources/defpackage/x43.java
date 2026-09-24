package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x43 implements s43 {
    public static final x43 b = new x43(true);
    public static final x43 c = new x43(false);
    public final boolean a;

    public x43(boolean z) {
        this.a = z;
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        int i = calendar.get(16) + calendar.get(15);
        if (i < 0) {
            sb.append('-');
            i = -i;
        } else {
            sb.append('+');
        }
        int i2 = i / 3600000;
        g53.a(i2, sb);
        if (this.a) {
            sb.append(':');
        }
        g53.a((i / 60000) - (i2 * 60), sb);
    }

    @Override // defpackage.s43
    public final int c() {
        return 5;
    }
}
