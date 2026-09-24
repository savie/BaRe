package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qx0 implements ql6 {
    public final uo2 a;

    public qx0(uo2 uo2Var) {
        this.a = uo2Var;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        return true;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        uo2 uo2Var = this.a;
        return uo2Var.a(new vq(7, (ByteBuffer) obj, uo2Var.d, uo2Var.c), i, i2, ou5Var, uo2.j);
    }
}
