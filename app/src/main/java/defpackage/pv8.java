package defpackage;

import android.graphics.Rect;
import android.view.WindowInsets;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pv8 extends ov8 {
    public pv8(tv8 tv8Var, WindowInsets windowInsets) {
        super(tv8Var, windowInsets);
    }

    @Override // defpackage.iv8, defpackage.qv8
    public List<Rect> e(int i) {
        return this.c.getBoundingRects(sv8.a(i));
    }

    @Override // defpackage.iv8, defpackage.qv8
    public List<Rect> f(int i) {
        return this.c.getBoundingRectsIgnoringVisibility(sv8.a(i));
    }

    @Override // defpackage.iv8, defpackage.qv8
    public void p() {
    }
}
