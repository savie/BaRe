package defpackage;

import java.util.Stack;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ip1 extends p61 {
    public final /* synthetic */ jp1 i;

    public ip1(jp1 jp1Var) {
        this.i = jp1Var;
    }

    @Override // defpackage.p61
    public final void G(m61 m61Var, qn5 qn5Var) {
        jp1 jp1Var = this.i;
        Stack stack = jp1Var.b;
        jp1Var.c();
        if (jp1Var.e) {
            jp1Var.a.append(",");
        }
        jp1Var.a.append(zm5.E(m61Var.a));
        jp1Var.a.append(":(");
        if (jp1Var.d == stack.size()) {
            stack.add(m61Var);
        } else {
            stack.set(jp1Var.d, m61Var);
        }
        jp1Var.d++;
        jp1Var.e = false;
        c00.o(qn5Var, jp1Var);
        jp1Var.d--;
        StringBuilder sb = jp1Var.a;
        if (sb != null) {
            sb.append(")");
        }
        jp1Var.e = true;
    }
}
