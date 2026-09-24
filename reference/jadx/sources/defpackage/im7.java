package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class im7 extends jm1 {
    public final fm7 g;
    public final fm7 h;
    public final boolean i;
    public final List j;
    public final List k;

    public im7(fm7 fm7Var, fm7 fm7Var2, boolean z) {
        this.g = fm7Var;
        this.h = fm7Var2;
        this.i = z;
        this.j = fm7Var.a;
        this.k = fm7Var2.a;
    }

    @Override // defpackage.jm1
    public final boolean b(int i, int i2) {
        hm7 hm7Var;
        hm7 hm7Var2;
        boolean z = this.i;
        List list = this.k;
        List list2 = this.j;
        if (z) {
            if (i != i2) {
                return false;
            }
            if (list2.size() <= 1) {
                hm7Var = hm7.Single;
            } else if (i == 0) {
                hm7Var = hm7.First;
            } else {
                hm7Var = i == list2.size() - 1 ? hm7.Last : hm7.Middle;
            }
            if (list.size() <= 1) {
                hm7Var2 = hm7.Single;
            } else if (i2 == 0) {
                hm7Var2 = hm7.First;
            } else {
                hm7Var2 = i2 == list.size() - 1 ? hm7.Last : hm7.Middle;
            }
            if (hm7Var != hm7Var2) {
                return false;
            }
        }
        jl0 jl0Var = (jl0) list2.get(i);
        jl0 jl0Var2 = (jl0) list.get(i2);
        return jl0Var.equals(jl0Var2) && this.g.b.contains(jl0Var.getItemId()) == this.h.b.contains(jl0Var2.getItemId());
    }

    @Override // defpackage.jm1
    public final boolean c(int i, int i2) {
        return pe4.d(((jl0) this.j.get(i)).getItemId(), ((jl0) this.k.get(i2)).getItemId());
    }

    @Override // defpackage.jm1
    public final int q() {
        return this.k.size();
    }

    @Override // defpackage.jm1
    public final int r() {
        return this.j.size();
    }
}
