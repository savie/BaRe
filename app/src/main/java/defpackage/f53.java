package defpackage;

import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f53 implements q43 {
    public final q43 a;

    public f53(q43 q43Var) {
        this.a = q43Var;
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        this.a.b(calendar.getWeekYear(), sb);
    }

    @Override // defpackage.q43
    public final void b(int i, StringBuilder sb) {
        this.a.b(i, sb);
    }

    @Override // defpackage.s43
    public final int c() {
        return this.a.c();
    }
}
