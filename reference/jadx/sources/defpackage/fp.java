package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fp extends ky4 implements hp {
    public CharSequence U;
    public bp V;
    public final Rect W;
    public int X;
    public final /* synthetic */ ip Y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fp(ip ipVar, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.Y = ipVar;
        this.W = new Rect();
        this.G = ipVar;
        this.Q = true;
        this.R.setFocusable(true);
        this.H = new cp(this);
    }

    @Override // defpackage.hp
    public final CharSequence f() {
        return this.U;
    }

    @Override // defpackage.hp
    public final void h(CharSequence charSequence) {
        this.U = charSequence;
    }

    @Override // defpackage.hp
    public final void m(int i) {
        this.X = i;
    }

    @Override // defpackage.hp
    public final void n(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        qo qoVar = this.R;
        boolean zIsShowing = qoVar.isShowing();
        s();
        qoVar.setInputMethodMode(2);
        b();
        bq2 bq2Var = this.c;
        bq2Var.setChoiceMode(1);
        bq2Var.setTextDirection(i);
        bq2Var.setTextAlignment(i2);
        ip ipVar = this.Y;
        int selectedItemPosition = ipVar.getSelectedItemPosition();
        bq2 bq2Var2 = this.c;
        if (qoVar.isShowing() && bq2Var2 != null) {
            bq2Var2.setListSelectionHidden(false);
            bq2Var2.setSelection(selectedItemPosition);
            if (bq2Var2.getChoiceMode() != 0) {
                bq2Var2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = ipVar.getViewTreeObserver()) == null) {
            return;
        }
        dp dpVar = new dp(this);
        viewTreeObserver.addOnGlobalLayoutListener(dpVar);
        qoVar.setOnDismissListener(new ep(this, dpVar));
    }

    @Override // defpackage.ky4, defpackage.hp
    public final void p(ListAdapter listAdapter) {
        super.p(listAdapter);
        this.V = (bp) listAdapter;
    }

    public final void s() {
        int i;
        qo qoVar = this.R;
        Drawable background = qoVar.getBackground();
        ip ipVar = this.Y;
        Rect rect = ipVar.n;
        if (background != null) {
            background.getPadding(rect);
            boolean z = xm8.a;
            i = ipVar.getLayoutDirection() == 1 ? rect.right : -rect.left;
        } else {
            i = 0;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = ipVar.getPaddingLeft();
        int paddingRight = ipVar.getPaddingRight();
        int width = ipVar.getWidth();
        int i2 = ipVar.k;
        if (i2 == -2) {
            int iA = ipVar.a(this.V, qoVar.getBackground());
            int i3 = (ipVar.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
            if (iA > i3) {
                iA = i3;
            }
            r(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i2 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i2);
        }
        boolean z2 = xm8.a;
        this.f = ipVar.getLayoutDirection() == 1 ? (((width - paddingRight) - this.e) - this.X) + i : paddingLeft + this.X + i;
    }
}
