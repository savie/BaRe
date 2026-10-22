package defpackage;

import android.R;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s35 extends v75 implements eu4 {
    public final io1 e;
    public final Float f;
    public wa k;

    public s35(io1 io1Var, int i, hv1 hv1Var, Float f) {
        super(hv1Var, i);
        this.e = io1Var;
        this.f = f;
    }

    @Override // defpackage.va
    public final wa m() {
        io1 io1Var = this.e;
        if (io1Var.isFinishing()) {
            return null;
        }
        wa waVarM = super.m();
        this.k = waVarM;
        TextView textView = (TextView) waVarM.findViewById(R.id.message);
        if (textView != null) {
            textView.setLineSpacing((((ra) this.b).a.getResources().getDisplayMetrics().densityDpi / 160.0f) * 6.0f, 1.0f);
        }
        Float f = this.f;
        if (f != null && textView != null) {
            textView.setTextSize(f.floatValue());
        }
        io1Var.getLifecycle().a(this);
        return waVarM;
    }

    @ct5(rt4.ON_DESTROY)
    public final void onLifecycleDestroy() {
        sz8.m(this.k);
    }
}
