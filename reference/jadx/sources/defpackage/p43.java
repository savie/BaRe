package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p43 implements s43 {
    public static final p43 b = new p43(3);
    public static final p43 c = new p43(5);
    public static final p43 d = new p43(6);
    public final int a;

    public p43(int i) {
        this.a = i;
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        int i = calendar.get(16) + calendar.get(15);
        if (i == 0) {
            sb.append("Z");
            return;
        }
        if (i < 0) {
            sb.append('-');
            i = -i;
        } else {
            sb.append('+');
        }
        int i2 = i / 3600000;
        g53.a(i2, sb);
        int i3 = this.a;
        if (i3 < 5) {
            return;
        }
        if (i3 == 6) {
            sb.append(':');
        }
        g53.a((i / 60000) - (i2 * 60), sb);
    }

    @Override // defpackage.s43
    public final int c() {
        return this.a;
    }
}
