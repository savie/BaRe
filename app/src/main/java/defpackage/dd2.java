package defpackage;

import java.text.DateFormat;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dd2 extends ed2 {
    public static final dd2 k = new dd2(null, null);

    public dd2(Boolean bool, DateFormat dateFormat) {
        super(Date.class, bool, dateFormat);
    }

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        Date date = (Date) obj;
        if (p(c87Var)) {
            fk4Var.G(date == null ? 0L : date.getTime());
        } else {
            q(date, fk4Var, c87Var);
        }
    }

    @Override // defpackage.ed2
    public final ed2 r(Boolean bool, DateFormat dateFormat) {
        return new dd2(bool, dateFormat);
    }
}
