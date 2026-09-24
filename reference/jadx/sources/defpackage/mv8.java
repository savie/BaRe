package defpackage;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class mv8 extends lv8 {
    public static final tv8 v = tv8.h(WindowInsets.CONSUMED, null);

    public mv8(tv8 tv8Var, WindowInsets windowInsets) {
        super(tv8Var, windowInsets);
    }

    @Override // defpackage.iv8, defpackage.qv8
    public vc4 h(int i) {
        return vc4.d(this.c.getInsets(rv8.a(i)));
    }

    @Override // defpackage.iv8, defpackage.qv8
    public vc4 i(int i) {
        return vc4.d(this.c.getInsetsIgnoringVisibility(rv8.a(i)));
    }

    @Override // defpackage.iv8, defpackage.qv8
    public final void d(View view) {
    }
}
