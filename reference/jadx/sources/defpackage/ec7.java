package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ec7 extends am0 {
    public final iu1 A;
    public final hp1 B;

    public ec7(c35 c35Var, js4 js4Var, hp1 hp1Var) {
        super(c35Var, js4Var);
        this.B = hp1Var;
        iu1 iu1Var = new iu1(c35Var, this, new bc7("__container", js4Var.a, false));
        this.A = iu1Var;
        List list = Collections.EMPTY_LIST;
        iu1Var.c(list, list);
    }

    @Override // defpackage.am0, defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        super.e(rectF, matrix, z);
        this.A.e(rectF, this.l, z);
    }

    @Override // defpackage.am0
    public final void k(Canvas canvas, Matrix matrix, int i) {
        this.A.h(canvas, matrix, i);
    }

    @Override // defpackage.am0
    public final z28 l() {
        z28 z28Var = this.n.w;
        return z28Var != null ? z28Var : this.B.n.w;
    }

    @Override // defpackage.am0
    public final nz4 m() {
        nz4 nz4Var = this.n.x;
        return nz4Var != null ? nz4Var : this.B.n.x;
    }

    @Override // defpackage.am0
    public final void q(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        this.A.d(po4Var, i, arrayList, po4Var2);
    }
}
