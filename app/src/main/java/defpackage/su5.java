package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class su5 extends gu2 {
    @Override // defpackage.gu2
    public final int d(View view) {
        qg6 qg6Var = (qg6) view.getLayoutParams();
        ((a) this.b).getClass();
        return a.O(view) + ((ViewGroup.MarginLayoutParams) qg6Var).rightMargin;
    }

    @Override // defpackage.gu2
    public final int e(View view) {
        qg6 qg6Var = (qg6) view.getLayoutParams();
        ((a) this.b).getClass();
        return a.N(view) + ((ViewGroup.MarginLayoutParams) qg6Var).leftMargin + ((ViewGroup.MarginLayoutParams) qg6Var).rightMargin;
    }

    @Override // defpackage.gu2
    public final int f(View view) {
        qg6 qg6Var = (qg6) view.getLayoutParams();
        ((a) this.b).getClass();
        return a.M(view) + ((ViewGroup.MarginLayoutParams) qg6Var).topMargin + ((ViewGroup.MarginLayoutParams) qg6Var).bottomMargin;
    }

    @Override // defpackage.gu2
    public final int g(View view) {
        qg6 qg6Var = (qg6) view.getLayoutParams();
        ((a) this.b).getClass();
        return a.L(view) - ((ViewGroup.MarginLayoutParams) qg6Var).leftMargin;
    }

    @Override // defpackage.gu2
    public final int h() {
        return ((a) this.b).y;
    }

    @Override // defpackage.gu2
    public final int i() {
        a aVar = (a) this.b;
        return aVar.y - aVar.getPaddingRight();
    }

    @Override // defpackage.gu2
    public final int j() {
        return ((a) this.b).getPaddingRight();
    }

    @Override // defpackage.gu2
    public final int k() {
        return ((a) this.b).t;
    }

    @Override // defpackage.gu2
    public final int l() {
        return ((a) this.b).x;
    }

    @Override // defpackage.gu2
    public final int m() {
        return ((a) this.b).getPaddingLeft();
    }

    @Override // defpackage.gu2
    public final int n() {
        a aVar = (a) this.b;
        return (aVar.y - aVar.getPaddingLeft()) - aVar.getPaddingRight();
    }

    @Override // defpackage.gu2
    public final int p(View view) {
        a aVar = (a) this.b;
        Rect rect = (Rect) this.c;
        aVar.U(rect, view);
        return rect.right;
    }

    @Override // defpackage.gu2
    public final int q(View view) {
        a aVar = (a) this.b;
        Rect rect = (Rect) this.c;
        aVar.U(rect, view);
        return rect.left;
    }

    @Override // defpackage.gu2
    public final void r(int i) {
        ((a) this.b).Z(i);
    }
}
