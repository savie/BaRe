package defpackage;

import android.view.View;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wc4 extends ol1 {
    public final View e;
    public int f;
    public int k;
    public final int[] n;

    public wc4(View view) {
        super(13, false);
        this.n = new int[2];
        this.e = view;
    }

    @Override // defpackage.ol1
    public final tv8 A(tv8 tv8Var, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            yu8 yu8Var = (yu8) it.next();
            if ((yu8Var.a.d() & 8) != 0) {
                this.e.setTranslationY(ed.c(yu8Var.a.c(), this.k, 0));
                break;
            }
        }
        return tv8Var;
    }

    @Override // defpackage.ol1
    public final l39 B(yu8 yu8Var, l39 l39Var) {
        View view = this.e;
        int[] iArr = this.n;
        view.getLocationOnScreen(iArr);
        int i = this.f - iArr[1];
        this.k = i;
        view.setTranslationY(i);
        return l39Var;
    }

    @Override // defpackage.ol1
    public final void x(yu8 yu8Var) {
        this.e.setTranslationY(0.0f);
    }

    @Override // defpackage.ol1
    public final void z(yu8 yu8Var) {
        View view = this.e;
        int[] iArr = this.n;
        view.getLocationOnScreen(iArr);
        this.f = iArr[1];
    }
}
