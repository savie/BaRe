package defpackage;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r23 extends sg6 {
    public final ExtendedFloatingActionButton a;
    public final boolean b;

    public r23(ExtendedFloatingActionButton extendedFloatingActionButton, boolean z) {
        extendedFloatingActionButton.getClass();
        this.a = extendedFloatingActionButton;
        this.b = z;
    }

    @Override // defpackage.sg6
    public final void a(RecyclerView recyclerView, int i) {
        if (i == 0) {
            ExtendedFloatingActionButton extendedFloatingActionButton = this.a;
            if (extendedFloatingActionButton.v0 || recyclerView.computeVerticalScrollOffset() != 0) {
                return;
            }
            if (this.b) {
                extendedFloatingActionButton.y(3);
            } else {
                extendedFloatingActionButton.setExtended(true);
            }
        }
    }

    @Override // defpackage.sg6
    public final void b(RecyclerView recyclerView, int i) {
        int iAbs = Math.abs(i);
        Context context = recyclerView.getContext();
        context.getClass();
        if (iAbs / (context.getResources().getDisplayMetrics().densityDpi / 160.0f) > 4.0f) {
            boolean z = this.b;
            ExtendedFloatingActionButton extendedFloatingActionButton = this.a;
            if (i > 0 && extendedFloatingActionButton.v0) {
                if (z) {
                    extendedFloatingActionButton.y(2);
                    return;
                } else {
                    extendedFloatingActionButton.setExtended(false);
                    return;
                }
            }
            if (i >= 0 || extendedFloatingActionButton.v0) {
                return;
            }
            if (z) {
                extendedFloatingActionButton.y(3);
            } else {
                extendedFloatingActionButton.setExtended(true);
            }
        }
    }
}
