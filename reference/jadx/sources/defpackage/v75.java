package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class v75 extends va {
    public final c95 c;
    public final Rect d;

    /* JADX WARN: Illegal instructions before constructor call */
    public v75(ContextWrapper contextWrapper, int i) {
        TypedValue typedValueP = jm1.P(contextWrapper.getTheme(), R.attr.materialAlertDialogTheme);
        int i2 = typedValueP == null ? 0 : typedValueP.data;
        Context contextJ = zm5.J(contextWrapper, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        contextJ = i2 != 0 ? new hv1(contextJ, i2) : contextJ;
        if (i == 0) {
            TypedValue typedValueP2 = jm1.P(contextWrapper.getTheme(), R.attr.materialAlertDialogTheme);
            i = typedValueP2 == null ? 0 : typedValueP2.data;
        }
        super(contextJ, i);
        ContextThemeWrapper contextThemeWrapper = ((ra) this.b).a;
        Resources.Theme theme = contextThemeWrapper.getTheme();
        jd4.d(contextThemeWrapper, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int[] iArr = td6.t;
        jd4.e(contextThemeWrapper, null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_start));
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_top));
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_end));
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_bottom));
        typedArrayObtainStyledAttributes.recycle();
        int layoutDirection = contextThemeWrapper.getResources().getConfiguration().getLayoutDirection();
        this.d = new Rect(layoutDirection == 1 ? dimensionPixelSize3 : dimensionPixelSize, dimensionPixelSize2, layoutDirection != 1 ? dimensionPixelSize3 : dimensionPixelSize, dimensionPixelSize4);
        int iC = z85.C(contextThemeWrapper, jm1.T(R.attr.colorSurface, contextThemeWrapper, getClass().getCanonicalName()));
        TypedArray typedArrayObtainStyledAttributes2 = contextThemeWrapper.obtainStyledAttributes(null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int color = typedArrayObtainStyledAttributes2.getColor(4, iC);
        typedArrayObtainStyledAttributes2.recycle();
        c95 c95Var = new c95(contextThemeWrapper, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        c95Var.p(contextThemeWrapper);
        c95Var.t(ColorStateList.valueOf(color));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(((ra) this.b).a.getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                c95Var.setShapeAppearanceModel(c95Var.b.a.a(dimension));
            }
        }
        this.c = c95Var;
    }

    @Override // defpackage.va
    public final wa c() {
        wa waVarC = super.c();
        Window window = waVarC.getWindow();
        View decorView = window.getDecorView();
        c95 c95Var = this.c;
        if (c95Var != null) {
            c95Var.s(decorView.getElevation());
        }
        Rect rect = this.d;
        window.setBackgroundDrawable(new InsetDrawable((Drawable) c95Var, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new uc4(waVarC, rect));
        return waVarC;
    }

    @Override // defpackage.va
    public final va d(int i) {
        throw null;
    }

    @Override // defpackage.va
    public final va f(int i, DialogInterface.OnClickListener onClickListener) {
        throw null;
    }

    @Override // defpackage.va
    public final va h(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        throw null;
    }

    @Override // defpackage.va
    public final va i(int i, DialogInterface.OnClickListener onClickListener) {
        throw null;
    }

    @Override // defpackage.va
    public final void j(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.j(null, null);
    }

    @Override // defpackage.va
    public final va l(int i) {
        throw null;
    }

    public final void n(int i) {
        super.d(i);
    }

    public final void o(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        super.e(charSequenceArr, zArr, onMultiChoiceClickListener);
    }

    public final void p() {
        super.h("Cancel", null);
    }

    public final void q(int i, DialogInterface.OnClickListener onClickListener) {
        super.f(i, onClickListener);
    }

    public final void r(int i, DialogInterface.OnClickListener onClickListener) {
        ra raVar = (ra) this.b;
        raVar.k = raVar.a.getText(i);
        raVar.l = onClickListener;
    }

    public final void s(int i, DialogInterface.OnClickListener onClickListener) {
        super.i(i, onClickListener);
    }

    public final void t(String str, kb1 kb1Var) {
        super.j(str, kb1Var);
    }

    public final void u(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        super.k(charSequenceArr, i, onClickListener);
    }

    public final void v(int i) {
        super.l(i);
    }
}
