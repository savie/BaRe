package defpackage;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zu2 extends ji8 {
    public final yu2 n;

    public zu2(TextView textView) {
        this.n = new yu2(textView);
    }

    @Override // defpackage.ji8
    public final void I(boolean z) {
        if (ku2.k != null) {
            this.n.I(z);
        }
    }

    @Override // defpackage.ji8
    public final void J(boolean z) {
        boolean z2 = ku2.k != null;
        yu2 yu2Var = this.n;
        if (z2) {
            yu2Var.J(z);
        } else {
            yu2Var.q = z;
        }
    }

    @Override // defpackage.ji8
    public final TransformationMethod P(TransformationMethod transformationMethod) {
        return !(ku2.k != null) ? transformationMethod : this.n.P(transformationMethod);
    }

    @Override // defpackage.ji8
    public final InputFilter[] n(InputFilter[] inputFilterArr) {
        return !(ku2.k != null) ? inputFilterArr : this.n.n(inputFilterArr);
    }

    @Override // defpackage.ji8
    public final boolean y() {
        return this.n.q;
    }
}
