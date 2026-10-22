package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l53 extends sg6 {
    public final /* synthetic */ r53 a;

    public l53(r53 r53Var) {
        this.a = r53Var;
    }

    @Override // defpackage.sg6
    public final void b(RecyclerView recyclerView, int i) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        r53 r53Var = this.a;
        int i2 = r53Var.a;
        int iComputeVerticalScrollRange = r53Var.s.computeVerticalScrollRange();
        int i3 = r53Var.r;
        r53Var.t = iComputeVerticalScrollRange - i3 > 0 && i3 >= i2;
        int iComputeHorizontalScrollRange = r53Var.s.computeHorizontalScrollRange();
        int i4 = r53Var.q;
        boolean z = iComputeHorizontalScrollRange - i4 > 0 && i4 >= i2;
        r53Var.u = z;
        boolean z2 = r53Var.t;
        if (!z2 && !z) {
            if (r53Var.v != 0) {
                r53Var.f(0);
                return;
            }
            return;
        }
        if (z2) {
            float f = i3;
            r53Var.l = (int) ((((f / 2.0f) + iComputeVerticalScrollOffset) * f) / iComputeVerticalScrollRange);
            r53Var.k = Math.min(i3, (i3 * i3) / iComputeVerticalScrollRange);
        }
        if (r53Var.u) {
            float f2 = iComputeHorizontalScrollOffset;
            float f3 = i4;
            r53Var.o = (int) ((((f3 / 2.0f) + f2) * f3) / iComputeHorizontalScrollRange);
            r53Var.n = Math.min(i4, (i4 * i4) / iComputeHorizontalScrollRange);
        }
        int i5 = r53Var.v;
        if (i5 == 0 || i5 == 1) {
            r53Var.f(1);
        }
    }
}
