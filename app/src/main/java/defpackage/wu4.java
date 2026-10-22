package defpackage;

import android.view.View;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wu4 {
    public boolean a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public List k;
    public boolean l;

    public final void a(View view) {
        int iC;
        int size = this.k.size();
        View view2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = ((fh6) this.k.get(i2)).a;
            qg6 qg6Var = (qg6) view3.getLayoutParams();
            if (view3 != view && !qg6Var.a.i() && (iC = (qg6Var.a.c() - this.d) * this.e) >= 0 && iC < i) {
                view2 = view3;
                if (iC == 0) {
                    break;
                } else {
                    i = iC;
                }
            }
        }
        if (view2 == null) {
            this.d = -1;
        } else {
            this.d = ((qg6) view2.getLayoutParams()).a.c();
        }
    }

    public final View b(vg6 vg6Var) {
        List list = this.k;
        if (list == null) {
            View viewD = vg6Var.d(this.d);
            this.d += this.e;
            return viewD;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            View view = ((fh6) this.k.get(i)).a;
            qg6 qg6Var = (qg6) view.getLayoutParams();
            if (!qg6Var.a.i() && this.d == qg6Var.a.c()) {
                a(view);
                return view;
            }
        }
        return null;
    }
}
