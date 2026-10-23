package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.card.MaterialCardView;
import java.util.LinkedHashSet;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cx4 extends MaterialCardView {
    public static final int[] K = {R.attr.state_swiped};
    public boolean G;
    public final int H;
    public boolean I;
    public final LinkedHashSet J;

    public cx4(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_Material3_ListItemCardView), attributeSet, i);
        this.G = false;
        this.J = new LinkedHashSet();
        Context context2 = getContext();
        this.H = getResources().getDimensionPixelSize(R.dimen.m3_list_max_swipe_overshoot);
        u94 u94VarC = jd4.C(context2, attributeSet, td6.r, i, R.style.Widget_Material3_ListItemCardView, new int[0]);
        this.I = ((TypedArray) u94VarC.b).getBoolean(0, true);
        u94VarC.f();
    }

    public int getSwipeMaxOvershoot() {
        return this.H;
    }

    @Override // com.google.android.material.card.MaterialCardView, android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.G) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, K);
        }
        return iArrOnCreateDrawableState;
    }

    public void setSwipeEnabled(boolean z) {
        this.I = z;
    }
}
