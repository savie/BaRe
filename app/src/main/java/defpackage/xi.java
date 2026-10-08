package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xi implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ rj b;

    public /* synthetic */ xi(rj rjVar, int i) {
        this.a = i;
        this.b = rjVar;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        rj rjVar = this.b;
        switch (i) {
            case 0:
                View viewInflate = rjVar.e.getLayoutInflater().inflate(R.layout.app_actions_dialog, (ViewGroup) null, false);
                int i2 = R.id.bottom_dialog_drag_indicator;
                View viewU = ms8.u(viewInflate, R.id.bottom_dialog_drag_indicator);
                if (viewU != null) {
                    ImageView imageView = (ImageView) viewU;
                    c00 c00Var = new c00(1, imageView, imageView);
                    i2 = R.id.container_app_detail;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.container_app_detail);
                    if (constraintLayout != null) {
                        i2 = R.id.divider;
                        if (ms8.u(viewInflate, R.id.divider) != null) {
                            i2 = R.id.iv_app_icon;
                            ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_app_icon);
                            if (imageView2 != null) {
                                i2 = R.id.iv_favorite;
                                ImageView imageView3 = (ImageView) ms8.u(viewInflate, R.id.iv_favorite);
                                if (imageView3 != null) {
                                    i2 = R.id.rv_app_options;
                                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_app_options);
                                    if (quickRecyclerView != null) {
                                        i2 = R.id.rv_normal_actions;
                                        QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_normal_actions);
                                        if (quickRecyclerView2 != null) {
                                            i2 = R.id.tv_subtitle;
                                            TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_subtitle);
                                            if (textView != null) {
                                                i2 = R.id.tv_title;
                                                TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                                if (textView2 != null) {
                                                    return new sj((NestedScrollView) viewInflate, c00Var, constraintLayout, imageView2, imageView3, quickRecyclerView, quickRecyclerView2, textView, textView2);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 1:
                return rjVar.H().c;
            default:
                rjVar.I();
                return be8.a;
        }
    }
}
