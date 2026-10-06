package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r43 implements q43 {
    public final int a;
    public final int b;

    public r43(int i, int i2) {
        if (i2 < 3) {
            c6.b();
            throw null;
        }
        this.a = i;
        this.b = i2;
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        b(calendar.get(this.a), sb);
    }

    @Override // defpackage.q43
    public final void b(int i, StringBuilder sb) {
        g53.b(sb, i, this.b);
    }

    @Override // defpackage.s43
    public final int c() {
        return this.b;
    }
}
