package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d44 extends ot1 {
    public ot1[] q0 = new ot1[4];
    public int r0 = 0;

    public final void R(int i, or8 or8Var, ArrayList arrayList) {
        for (int i2 = 0; i2 < this.r0; i2++) {
            ot1 ot1Var = this.q0[i2];
            ArrayList arrayList2 = or8Var.a;
            if (!arrayList2.contains(ot1Var)) {
                arrayList2.add(ot1Var);
            }
        }
        for (int i3 = 0; i3 < this.r0; i3++) {
            xh8.k(this.q0[i3], i, arrayList, or8Var);
        }
    }

    public void S() {
    }
}
