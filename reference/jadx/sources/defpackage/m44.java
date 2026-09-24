package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m44 extends zv1 {
    @Override // defpackage.zv1
    public final int h(View view, ViewGroup.MarginLayoutParams marginLayoutParams) {
        return view.getMeasuredWidth() + marginLayoutParams.leftMargin;
    }

    @Override // defpackage.zv1
    public final int i() {
        return 2;
    }

    @Override // defpackage.zv1
    public final ViewPropertyAnimator j(View view, int i) {
        return view.animate().translationX(-i);
    }
}
