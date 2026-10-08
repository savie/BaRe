package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q54 extends fh6 {
    public final p54 u;
    public final /* synthetic */ r54 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q54(r54 r54Var, p54 p54Var) {
        super(p54Var.a);
        this.v = r54Var;
        this.u = p54Var;
    }

    public final void r(zc6 zc6Var) {
        int iIntValue;
        qt3 qt3Var;
        boolean z = zc6Var.f;
        r54 r54Var = this.v;
        if (z) {
            mp6 mp6Var = mp6.a;
            if (!mp6.f()) {
                Const.N(r54Var.l);
                return;
            }
        }
        int iB = b();
        Integer numValueOf = Integer.valueOf(iB);
        if (iB == -1) {
            numValueOf = null;
        }
        if (numValueOf == null || (iIntValue = numValueOf.intValue()) < 0 || iIntValue >= r54Var.e.a.size() || (qt3Var = r54Var.j) == null) {
            return;
        }
        qt3Var.invoke(s54.a((s54) r54Var.m(iIntValue), zc6Var, 7167), numValueOf);
    }
}
