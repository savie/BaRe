package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Chip;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t61 extends ViewOutlineProvider {
    public final /* synthetic */ Chip a;

    public t61(Chip chip) {
        this.a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        v61 v61Var = this.a.e;
        if (v61Var != null) {
            v61Var.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
