package defpackage;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s61 extends jb9 {
    public final /* synthetic */ Chip M;

    public s61(Chip chip) {
        this.M = chip;
    }

    @Override // defpackage.jb9
    public final void K(Typeface typeface, boolean z) {
        Chip chip = this.M;
        v61 v61Var = chip.e;
        chip.setText(v61Var.e1 ? v61Var.g0 : chip.getText());
        chip.requestLayout();
        chip.invalidate();
    }

    @Override // defpackage.jb9
    public final void J(int i) {
    }
}
