package defpackage;

import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xp5 extends h58 implements iv1 {
    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        Class cls = this.a;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, cls);
        if (bk4VarK == null || bk4VarK.b.ordinal() != 5) {
            return this;
        }
        return cls == BigDecimal.class ? vp5.e : vp5.f;
    }
}
