package defpackage;

import android.view.View;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q85 extends w5 {
    public final /* synthetic */ MaterialButtonToggleGroup d;

    public q85(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.d = materialButtonToggleGroup;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        this.a.onInitializeAccessibilityNodeInfo(view, m6Var.a);
        int i = MaterialButtonToggleGroup.S;
        int i2 = -1;
        if (view instanceof MaterialButton) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                MaterialButtonToggleGroup materialButtonToggleGroup = this.d;
                if (i3 >= materialButtonToggleGroup.getChildCount()) {
                    break;
                }
                if (materialButtonToggleGroup.getChildAt(i3) == view) {
                    i2 = i4;
                    break;
                }
                if ((materialButtonToggleGroup.getChildAt(i3) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i3).getVisibility() != 8) {
                    i4++;
                }
                i3++;
            }
        }
        m6Var.j(om5.e(((MaterialButton) view).M, 0, 1, i2, 1));
    }
}
