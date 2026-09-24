package defpackage;

import java.util.Collection;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tm7 extends tn7 implements iv1 {
    public final Boolean c;

    public tm7(Class cls) {
        super(0, cls);
        this.c = null;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4VarE;
        Object objC;
        if (kp0Var != null) {
            as5 as5VarD = c87Var.a.d();
            od odVarA = kp0Var.a();
            if (odVarA == null || (objC = as5VarD.c(odVarA)) == null) {
                em4VarE = null;
            } else {
                em4VarE = c87Var.E(odVarA, objC);
            }
        } else {
            em4VarE = null;
        }
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        Boolean boolA = bk4VarK != null ? bk4VarK.a(yj4.a) : null;
        em4 em4VarJ = tn7.j(c87Var, kp0Var, em4VarE);
        if (em4VarJ == null) {
            em4VarJ = c87Var.j(String.class, kp0Var);
        }
        if (u81.q(em4VarJ)) {
            return Objects.equals(boolA, this.c) ? this : o(kp0Var, boolA);
        }
        return new cl1(c87Var.s().b(null, String.class, lc8.d), true, null, em4VarJ);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((Collection) obj).isEmpty();
    }

    public abstract em4 o(kp0 kp0Var, Boolean bool);

    public tm7(tm7 tm7Var, Boolean bool) {
        super(tm7Var);
        this.c = bool;
    }
}
