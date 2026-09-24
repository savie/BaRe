package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b46 extends og6 {
    public Drawable a;
    public int b;
    public boolean c = true;
    public final /* synthetic */ c46 d;

    public b46(c46 c46Var) {
        this.d = c46Var;
    }

    @Override // defpackage.og6
    public final void a(Rect rect, View view, RecyclerView recyclerView) {
        if (c(view, recyclerView)) {
            rect.bottom = this.b;
        }
    }

    @Override // defpackage.og6
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        if (this.a == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        int width = recyclerView.getWidth();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (c(childAt, recyclerView)) {
                int height = childAt.getHeight() + ((int) childAt.getY());
                this.a.setBounds(0, height, width, this.b + height);
                this.a.draw(canvas);
            }
        }
    }

    public final boolean c(View view, RecyclerView recyclerView) {
        fh6 fh6VarK = recyclerView.K(view);
        if (!(fh6VarK instanceof k46) || !((k46) fh6VarK).y) {
            return false;
        }
        boolean z = this.c;
        int iIndexOfChild = recyclerView.indexOfChild(view);
        if (iIndexOfChild >= recyclerView.getChildCount() - 1) {
            return z;
        }
        fh6 fh6VarK2 = recyclerView.K(recyclerView.getChildAt(iIndexOfChild + 1));
        return (fh6VarK2 instanceof k46) && ((k46) fh6VarK2).x;
    }
}
