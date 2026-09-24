package defpackage;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import com.google.android.material.checkbox.MaterialCheckBox;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w85 extends zb {
    public final /* synthetic */ MaterialCheckBox b;

    public w85(MaterialCheckBox materialCheckBox) {
        this.b = materialCheckBox;
    }

    @Override // defpackage.zb
    public final void a(Drawable drawable) {
        ColorStateList colorStateList = this.b.G;
        if (colorStateList != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // defpackage.zb
    public final void b(Drawable drawable) {
        MaterialCheckBox materialCheckBox = this.b;
        ColorStateList colorStateList = materialCheckBox.G;
        if (colorStateList != null) {
            drawable.setTint(colorStateList.getColorForState(materialCheckBox.K, colorStateList.getDefaultColor()));
        }
    }
}
