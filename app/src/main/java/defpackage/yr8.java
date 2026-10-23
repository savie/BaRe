package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yr8 implements jk8 {
    public final MaterialCardView a;
    public final MaterialButton b;
    public final MaterialButton c;
    public final zx2 d;
    public final QuickRecyclerView e;
    public final ConstraintLayout f;
    public final TextView k;

    public yr8(MaterialCardView materialCardView, MaterialButton materialButton, MaterialButton materialButton2, zx2 zx2Var, QuickRecyclerView quickRecyclerView, ConstraintLayout constraintLayout, TextView textView) {
        this.a = materialCardView;
        this.b = materialButton;
        this.c = materialButton2;
        this.d = zx2Var;
        this.e = quickRecyclerView;
        this.f = constraintLayout;
        this.k = textView;
    }

    public static yr8 a(View view) {
        int i = R.id.btn_shortcut1;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_shortcut1);
        if (materialButton != null) {
            i = R.id.btn_shortcut2;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.btn_shortcut2);
            if (materialButton2 != null) {
                i = R.id.error_container_parent;
                View viewU = ms8.u(view, R.id.error_container_parent);
                if (viewU != null) {
                    zx2 zx2VarA = zx2.a(viewU);
                    i = R.id.main_view;
                    if (((ConstraintLayout) ms8.u(view, R.id.main_view)) != null) {
                        i = R.id.recycler_view;
                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.recycler_view);
                        if (quickRecyclerView != null) {
                            i = R.id.shortcuts_container;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.shortcuts_container);
                            if (constraintLayout != null) {
                                i = R.id.tv_card_title;
                                TextView textView = (TextView) ms8.u(view, R.id.tv_card_title);
                                if (textView != null) {
                                    return new yr8((MaterialCardView) view, materialButton, materialButton2, zx2VarA, quickRecyclerView, constraintLayout, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
