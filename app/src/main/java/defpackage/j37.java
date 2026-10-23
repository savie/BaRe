package defpackage;

import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j37 implements Runnable {
    public final /* synthetic */ m37 a;
    public final /* synthetic */ float b;

    public j37(m37 m37Var, float f) {
        this.a = m37Var;
        this.b = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        NestedScrollView nestedScrollViewK = this.a.k();
        nestedScrollViewK.u(0 - nestedScrollViewK.getScrollX(), tu0.v(this.b) - nestedScrollViewK.getScrollY(), false);
    }
}
