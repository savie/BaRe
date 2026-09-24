package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.google.android.material.focus.FocusRingDrawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x75 extends ArrayAdapter {
    public ColorStateList a;
    public ColorStateList b;
    public final /* synthetic */ y75 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x75(y75 y75Var, Context context, int i, String[] strArr) {
        super(context, i, strArr);
        this.c = y75Var;
        a();
    }

    public final void a() {
        ColorStateList colorStateList;
        y75 y75Var = this.c;
        ColorStateList colorStateList2 = y75Var.x;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.b = colorStateList;
        if (y75Var.t != 0 && y75Var.x != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{xl1.e(y75Var.x.getColorForState(iArr3, 0), y75Var.t), xl1.e(y75Var.x.getColorForState(iArr2, 0), y75Var.t), y75Var.t});
        }
        this.a = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            y75 y75Var = this.c;
            Drawable drawable = null;
            if (y75Var.getText().toString().contentEquals(textView.getText()) && y75Var.t != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(y75Var.t);
                if (this.b != null) {
                    colorDrawable.setTintList(this.a);
                    RippleDrawable rippleDrawable = new RippleDrawable(this.b, colorDrawable, null);
                    FocusRingDrawable focusRingDrawableF = FocusRingDrawable.f(getContext(), rippleDrawable, null);
                    if (focusRingDrawableF != null) {
                        focusRingDrawableF.G.x = y75Var.k;
                    }
                    drawable = rippleDrawable;
                } else {
                    drawable = colorDrawable;
                }
            }
            textView.setBackground(drawable);
        }
        return view2;
    }
}
