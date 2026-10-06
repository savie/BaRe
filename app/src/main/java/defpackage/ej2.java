package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.tabs.TabLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ej2 implements jk8 {
    public final MaterialCardView a;
    public final MaterialButton b;
    public final zx2 c;
    public final ImageView d;
    public final ConstraintLayout e;
    public final oe f;
    public final CircularProgressIndicator k;
    public final QuickRecyclerView n;
    public final TabLayout p;
    public final TextView q;
    public final TextView r;

    public ej2(MaterialCardView materialCardView, MaterialButton materialButton, zx2 zx2Var, ImageView imageView, ConstraintLayout constraintLayout, oe oeVar, CircularProgressIndicator circularProgressIndicator, QuickRecyclerView quickRecyclerView, TabLayout tabLayout, TextView textView, TextView textView2) {
        this.a = materialCardView;
        this.b = materialButton;
        this.c = zx2Var;
        this.d = imageView;
        this.e = constraintLayout;
        this.f = oeVar;
        this.k = circularProgressIndicator;
        this.n = quickRecyclerView;
        this.p = tabLayout;
        this.q = textView;
        this.r = textView2;
    }

    public static ej2 a(View view) {
        int i = R.id.btn_restore;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_restore);
        if (materialButton != null) {
            i = R.id.error_layout;
            View viewU = ms8.u(view, R.id.error_layout);
            if (viewU != null) {
                zx2 zx2VarA = zx2.a(viewU);
                i = R.id.iv_menu;
                ImageView imageView = (ImageView) ms8.u(view, R.id.iv_menu);
                if (imageView != null) {
                    i = R.id.main_view;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.main_view);
                    if (constraintLayout != null) {
                        i = R.id.note_view;
                        View viewU2 = ms8.u(view, R.id.note_view);
                        if (viewU2 != null) {
                            MaterialCardView materialCardView = (MaterialCardView) viewU2;
                            int i2 = R.id.iv_edit;
                            if (((ImageView) ms8.u(viewU2, R.id.iv_edit)) != null) {
                                i2 = R.id.iv_icon;
                                if (((ImageView) ms8.u(viewU2, R.id.iv_icon)) != null) {
                                    i2 = R.id.tv_note;
                                    TextView textView = (TextView) ms8.u(viewU2, R.id.tv_note);
                                    if (textView != null) {
                                        oe oeVar = new oe(9, materialCardView, textView);
                                        i = R.id.progress_bar;
                                        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(view, R.id.progress_bar);
                                        if (circularProgressIndicator != null) {
                                            i = R.id.rv_chips;
                                            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_chips);
                                            if (quickRecyclerView != null) {
                                                i = R.id.tab_layout;
                                                TabLayout tabLayout = (TabLayout) ms8.u(view, R.id.tab_layout);
                                                if (tabLayout != null) {
                                                    i = R.id.tv_info1;
                                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_info1);
                                                    if (textView2 != null) {
                                                        i = R.id.tv_title;
                                                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                                                        if (textView3 != null) {
                                                            return new ej2((MaterialCardView) view, materialButton, zx2VarA, imageView, constraintLayout, oeVar, circularProgressIndicator, quickRecyclerView, tabLayout, textView2, textView3);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            f6.n("Missing required view with ID: ".concat(viewU2.getResources().getResourceName(i2)));
                            return null;
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
