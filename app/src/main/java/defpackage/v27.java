package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.warkiz.widget.IndicatorSeekBar;
import com.warkiz.widget.IndicatorStayLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v27 extends fh6 {
    public final MaterialRadioButton u;
    public final TextView v;
    public final IndicatorStayLayout w;
    public final IndicatorSeekBar x;
    public final View y;
    public final /* synthetic */ w27 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v27(w27 w27Var, xf1 xf1Var) {
        super((ConstraintLayout) xf1Var.c);
        this.z = w27Var;
        this.u = (MaterialRadioButton) xf1Var.k;
        this.v = (TextView) xf1Var.b;
        this.w = (IndicatorStayLayout) xf1Var.f;
        this.x = (IndicatorSeekBar) xf1Var.e;
        this.y = (View) xf1Var.d;
    }
}
