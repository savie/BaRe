package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mn3 implements jk8 {
    public final NestedScrollView a;
    public final MaterialButton b;
    public final fp1 c;
    public final cp1 d;
    public final cp1 e;
    public final cp1 f;
    public final TextView k;

    public mn3(NestedScrollView nestedScrollView, MaterialButton materialButton, fp1 fp1Var, cp1 cp1Var, cp1 cp1Var2, cp1 cp1Var3, TextView textView) {
        this.a = nestedScrollView;
        this.b = materialButton;
        this.c = fp1Var;
        this.d = cp1Var;
        this.e = cp1Var2;
        this.f = cp1Var3;
        this.k = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
