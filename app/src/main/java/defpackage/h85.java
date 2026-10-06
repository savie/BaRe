package defpackage;

import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h85 extends wx3 {
    @Override // defpackage.wx3
    public final void A(Object obj, float f) {
        ((MaterialButton) obj).setDisplayedWidthIncrease(f);
    }

    @Override // defpackage.wx3
    public final float m(Object obj) {
        return ((MaterialButton) obj).getDisplayedWidthIncrease();
    }
}
