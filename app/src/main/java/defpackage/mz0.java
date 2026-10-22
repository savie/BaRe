package defpackage;

import java.text.DateFormat;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mz0 extends ed2 {
    public static final mz0 k = new mz0(null, null);

    public mz0(Boolean bool, DateFormat dateFormat) {
        super(Calendar.class, bool, dateFormat);
    }

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        Calendar calendar = (Calendar) obj;
        if (p(c87Var)) {
            fk4Var.G(calendar == null ? 0L : calendar.getTimeInMillis());
        } else {
            q(calendar.getTime(), fk4Var, c87Var);
        }
    }

    @Override // defpackage.ed2
    public final ed2 r(Boolean bool, DateFormat dateFormat) {
        return new mz0(bool, dateFormat);
    }
}
