package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.u;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftSegmentLinearLayout;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gg1 extends rl0<hg1> {
    public final l90 c;
    public wf1 d;
    public uj1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gg1() {
        super(0);
        int i = 0;
        os4 os4VarX = jd4.x(ys4.c, new l7(new fg1(this, gg1.class, "ctx", "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;", 0), 1));
        this.c = new l90(ph6.a(ng1.class), new bg1(os4VarX), new dg1(i, this, os4VarX), new cg1(os4VarX, i));
    }

    public final HomeActivity i() {
        u activity = getActivity();
        activity.getClass();
        return (HomeActivity) activity;
    }

    public final ey2 j() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((hg1) jk8Var).k;
    }

    public final CircularProgressIndicator k() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((hg1) jk8Var).b;
    }

    public final NestedScrollView l() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((hg1) jk8Var).c;
    }

    public final ng1 m() {
        return (ng1) this.c.getValue();
    }

    public final void n(rb1 rb1Var) {
        String string;
        String string2;
        boolean z;
        int i = ag1.a[rb1Var.ordinal()];
        int i2 = 0;
        int i3 = R.drawable.ic_cloud_off;
        int i4 = 3;
        if (i != 3) {
            z = true;
            if (i == 4) {
                string = getString(R.string.no_internet_connection);
                string.getClass();
                string2 = getString(R.string.no_internet_connection_summary);
                string2.getClass();
                i3 = R.drawable.ic_wifi_off;
            } else {
                if (i != 5) {
                    g84.i(rb1Var, "Unhandled setupErrorView: ");
                    return;
                }
                string = getString(R.string.cloud_connection_failed);
                string.getClass();
                string2 = getString(R.string.error_connecting_cloud_server);
                string2.getClass();
            }
        } else {
            string = getString(R.string.no_cloud_connected);
            string.getClass();
            string2 = getString(R.string.connect_cloud_subtitle);
            string2.getClass();
            z = false;
        }
        j().d.setImageResource(i3);
        j().f.setText(string);
        j().e.setText(string2);
        MaterialButton materialButton = j().b;
        materialButton.setVisibility(0);
        materialButton.setText(R.string.connect_cloud_account);
        materialButton.setIconResource(R.drawable.ic_cloud);
        materialButton.setOnClickListener(new of(this, i4));
        MaterialButton materialButton2 = j().c;
        sz8.d0(materialButton2, z);
        if (isVisible()) {
            materialButton2.setText(R.string.retry);
            materialButton2.setIconResource(R.drawable.ic_refresh);
            materialButton2.setOnClickListener(new zf1(this, i2));
        }
    }

    public final void o() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        MaterialCardView materialCardView = (MaterialCardView) ((hg1) jk8Var).f.b;
        tb1 tb1Var = tb1.a;
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("cloud_manual_delete_warning_shown", false);
            sz8.d0(materialCardView, !z);
        } catch (ClassCastException unused) {
        }
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i = 0;
        View viewInflate = layoutInflater.inflate(R.layout.cloud_info_fragment, viewGroup, false);
        int i2 = R.id.cloud_fragment_progress_bar;
        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.cloud_fragment_progress_bar);
        if (circularProgressIndicator != null) {
            i2 = R.id.cloud_fragment_scroll_view;
            NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.cloud_fragment_scroll_view);
            if (nestedScrollView != null) {
                i2 = R.id.cloud_info_card_active_folder;
                View viewU = ms8.u(viewInflate, R.id.cloud_info_card_active_folder);
                if (viewU != null) {
                    int i3 = R.id.backup_info_container;
                    LinearLayout linearLayout = (LinearLayout) ms8.u(viewU, R.id.backup_info_container);
                    if (linearLayout != null) {
                        i3 = R.id.backup_info_divider;
                        View viewU2 = ms8.u(viewU, R.id.backup_info_divider);
                        if (viewU2 != null) {
                            i3 = R.id.backup_info_empty_state;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewU, R.id.backup_info_empty_state);
                            if (constraintLayout != null) {
                                i3 = R.id.backup_info_icons_compact_ui;
                                RecyclerView recyclerView = (RecyclerView) ms8.u(viewU, R.id.backup_info_icons_compact_ui);
                                if (recyclerView != null) {
                                    i3 = R.id.backup_info_icons_normal_ui;
                                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewU, R.id.backup_info_icons_normal_ui);
                                    if (quickRecyclerView != null) {
                                        i3 = R.id.btn_delete_active_tag;
                                        MaterialButton materialButton = (MaterialButton) ms8.u(viewU, R.id.btn_delete_active_tag);
                                        if (materialButton != null) {
                                            SwiftSegmentedCardGroup swiftSegmentedCardGroup = (SwiftSegmentedCardGroup) viewU;
                                            i3 = R.id.cloud_tag_selector_segment;
                                            if (((SwiftSegmentLinearLayout) ms8.u(viewU, R.id.cloud_tag_selector_segment)) != null) {
                                                i3 = R.id.dropdown_active_tag;
                                                View viewU3 = ms8.u(viewU, R.id.dropdown_active_tag);
                                                if (viewU3 != null) {
                                                    gm1 gm1VarA = gm1.a(viewU3);
                                                    i3 = R.id.iv_cloud_upload;
                                                    if (((ImageView) ms8.u(viewU, R.id.iv_cloud_upload)) != null) {
                                                        i3 = R.id.text_title;
                                                        if (((TextView) ms8.u(viewU, R.id.text_title)) != null) {
                                                            i3 = R.id.tv_backups_tagged_with;
                                                            TextView textView = (TextView) ms8.u(viewU, R.id.tv_backups_tagged_with);
                                                            if (textView != null) {
                                                                i3 = R.id.tv_empty_backup_info_subtitle;
                                                                if (((TextView) ms8.u(viewU, R.id.tv_empty_backup_info_subtitle)) != null) {
                                                                    i3 = R.id.tv_empty_backup_info_title;
                                                                    if (((TextView) ms8.u(viewU, R.id.tv_empty_backup_info_title)) != null) {
                                                                        i3 = R.id.tv_info;
                                                                        if (((TextView) ms8.u(viewU, R.id.tv_info)) != null) {
                                                                            tf1 tf1Var = new tf1(swiftSegmentedCardGroup, linearLayout, viewU2, constraintLayout, recyclerView, quickRecyclerView, materialButton, gm1VarA, textView);
                                                                            i2 = R.id.cloud_info_card_storage;
                                                                            View viewU4 = ms8.u(viewInflate, R.id.cloud_info_card_storage);
                                                                            if (viewU4 != null) {
                                                                                int i4 = R.id.btn_disconnect;
                                                                                MaterialButton materialButton2 = (MaterialButton) ms8.u(viewU4, R.id.btn_disconnect);
                                                                                if (materialButton2 != null) {
                                                                                    i4 = R.id.cloud_actions_segment;
                                                                                    if (((ConstraintLayout) ms8.u(viewU4, R.id.cloud_actions_segment)) != null) {
                                                                                        i4 = R.id.cloud_storage_segment;
                                                                                        if (((SwiftSegmentLinearLayout) ms8.u(viewU4, R.id.cloud_storage_segment)) != null) {
                                                                                            i4 = R.id.iv_save_settings;
                                                                                            ImageView imageView = (ImageView) ms8.u(viewU4, R.id.iv_save_settings);
                                                                                            if (imageView != null) {
                                                                                                i4 = R.id.storage_view;
                                                                                                View viewU5 = ms8.u(viewU4, R.id.storage_view);
                                                                                                if (viewU5 != null) {
                                                                                                    ca2 ca2VarA = ca2.a(viewU5);
                                                                                                    i4 = R.id.tv_account_id;
                                                                                                    TextView textView2 = (TextView) ms8.u(viewU4, R.id.tv_account_id);
                                                                                                    if (textView2 != null) {
                                                                                                        i4 = R.id.tv_account_id_label;
                                                                                                        if (((TextView) ms8.u(viewU4, R.id.tv_account_id_label)) != null) {
                                                                                                            i4 = R.id.tv_cloud_folder_label;
                                                                                                            if (((TextView) ms8.u(viewU4, R.id.tv_cloud_folder_label)) != null) {
                                                                                                                i4 = R.id.tv_cloud_folder_name;
                                                                                                                TextView textView3 = (TextView) ms8.u(viewU4, R.id.tv_cloud_folder_name);
                                                                                                                if (textView3 != null) {
                                                                                                                    xf1 xf1Var = new xf1((SwiftSegmentedCardGroup) viewU4, materialButton2, imageView, ca2VarA, textView2, textView3);
                                                                                                                    i2 = R.id.cloud_info_card_warning;
                                                                                                                    View viewU6 = ms8.u(viewInflate, R.id.cloud_info_card_warning);
                                                                                                                    if (viewU6 != null) {
                                                                                                                        int i5 = R.id.btn_i_understand;
                                                                                                                        MaterialButton materialButton3 = (MaterialButton) ms8.u(viewU6, R.id.btn_i_understand);
                                                                                                                        if (materialButton3 != null) {
                                                                                                                            MaterialCardView materialCardView = (MaterialCardView) viewU6;
                                                                                                                            int i6 = R.id.storage_container;
                                                                                                                            if (((LinearLayout) ms8.u(viewU6, R.id.storage_container)) != null) {
                                                                                                                                i6 = R.id.tv_message;
                                                                                                                                if (((TextView) ms8.u(viewU6, R.id.tv_message)) != null) {
                                                                                                                                    i6 = R.id.tv_title;
                                                                                                                                    if (((TextView) ms8.u(viewU6, R.id.tv_title)) != null) {
                                                                                                                                        yf1 yf1Var = new yf1(i, materialCardView, materialButton3);
                                                                                                                                        i2 = R.id.error_layout;
                                                                                                                                        View viewU7 = ms8.u(viewInflate, R.id.error_layout);
                                                                                                                                        if (viewU7 != null) {
                                                                                                                                            hg1 hg1Var = new hg1((FrameLayout) viewInflate, circularProgressIndicator, nestedScrollView, tf1Var, xf1Var, yf1Var, ey2.a(viewU7));
                                                                                                                                            this.b = hg1Var;
                                                                                                                                            View root = hg1Var.getRoot();
                                                                                                                                            root.getClass();
                                                                                                                                            return root;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                            i5 = i6;
                                                                                                                        }
                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU6.getResources().getResourceName(i5)));
                                                                                                                        return null;
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(i4)));
                                                                                return null;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i3)));
                    return null;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        if (isAdded()) {
            HomeActivity homeActivityI = i();
            jk8 jk8Var = this.b;
            jk8Var.getClass();
            ((AppBarLayout) homeActivityI.Z().c.a).setLiftOnScrollTargetViewId(((hg1) jk8Var).c.getId());
            if (m().c) {
                ng1 ng1VarM = m();
                if (tb1.f) {
                    return;
                }
                ng1VarM.e = false;
                tb1 tb1VarC = qb1.c();
                boolean z = ng1VarM.e;
                tb1VarC.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new sb1(tb1VarC, z, null));
            }
        }
    }

    @Override // androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        if (!m().c) {
            ng1 ng1VarM = m();
            qo0 qo0VarG = i().G();
            ng1VarM.c = true;
            ng1VarM.d = qo0VarG;
            ng1VarM.c();
            hx0.b.i(ng1VarM);
        }
        HomeActivity homeActivityI = i();
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        this.d = new wf1(homeActivityI, ((hg1) jk8Var).e);
        HomeActivity homeActivityI2 = i();
        jk8 jk8Var2 = this.b;
        jk8Var2.getClass();
        this.e = new uj1(homeActivityI2, ((hg1) jk8Var2).d, m());
        o();
        jk8 jk8Var3 = this.b;
        jk8Var3.getClass();
        MaterialButton materialButton = (MaterialButton) ((hg1) jk8Var3).e.d;
        materialButton.setOnClickListener(new fr(3, this, materialButton));
        jk8 jk8Var4 = this.b;
        jk8Var4.getClass();
        ((MaterialButton) ((hg1) jk8Var4).f.c).setOnClickListener(new g7(this, 6));
        tb1.c.e(getViewLifecycleOwner(), new eg1(this, 0));
        int i = 2;
        tb1.e.e(getViewLifecycleOwner(), new ez(i, new w20(this, 5)));
        ((ex6) i().F().j.getValue()).e(getViewLifecycleOwner(), new ez(i, new c7(this, 9)));
        int i2 = 7;
        tb1.d.e(getViewLifecycleOwner(), new ez(i, new d7(this, i2)));
        m().f.e(getViewLifecycleOwner(), new ez(i, new e7(this, i2)));
    }
}
