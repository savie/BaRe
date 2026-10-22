package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.u;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.home.HomeActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o7 extends rl0<p7> {
    public final l90 c;
    public final gv7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o7() {
        super(0);
        int i = 0;
        os4 os4VarX = jd4.x(ys4.c, new j7(new n7(this, o7.class, "ctx", "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;", 0), i));
        this.c = new l90(ph6.a(r7.class), new k7(os4VarX, i), new m7(this, os4VarX), new l7(os4VarX, i));
        this.d = new gv7(new b7(i));
    }

    public final HomeActivity i() {
        u activity = getActivity();
        activity.getClass();
        return (HomeActivity) activity;
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.account_fragment, viewGroup, false);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate;
        int i = R.id.profile_card_user;
        View viewU = ms8.u(viewInflate, R.id.profile_card_user);
        if (viewU != null) {
            int i2 = R.id.account_details_segment;
            if (((ConstraintLayout) ms8.u(viewU, R.id.account_details_segment)) != null) {
                i2 = R.id.btn_sign_out;
                MaterialButton materialButton = (MaterialButton) ms8.u(viewU, R.id.btn_sign_out);
                if (materialButton != null) {
                    i2 = R.id.btn_upgrade;
                    MaterialButton materialButton2 = (MaterialButton) ms8.u(viewU, R.id.btn_upgrade);
                    if (materialButton2 != null) {
                        i2 = R.id.iv_user;
                        ImageView imageView = (ImageView) ms8.u(viewU, R.id.iv_user);
                        if (imageView != null) {
                            i2 = R.id.tv_device;
                            TextView textView = (TextView) ms8.u(viewU, R.id.tv_device);
                            if (textView != null) {
                                i2 = R.id.tv_device_title;
                                if (((TextView) ms8.u(viewU, R.id.tv_device_title)) != null) {
                                    i2 = R.id.tv_user_email;
                                    TextView textView2 = (TextView) ms8.u(viewU, R.id.tv_user_email);
                                    if (textView2 != null) {
                                        i2 = R.id.tv_user_name;
                                        TextView textView3 = (TextView) ms8.u(viewU, R.id.tv_user_name);
                                        if (textView3 != null) {
                                            j75 j75Var = new j75((MaterialCardView) viewU, materialButton, materialButton2, imageView, textView, textView2, textView3);
                                            i = R.id.rv_more_items;
                                            RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_more_items);
                                            if (recyclerView != null) {
                                                p7 p7Var = new p7(nestedScrollView, j75Var, recyclerView);
                                                this.b = p7Var;
                                                View root = p7Var.getRoot();
                                                root.getClass();
                                                return root;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i2)));
            return null;
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        if (isAdded()) {
            ((AppBarLayout) i().Z().c.a).setLiftOnScrollTargetViewId(R.id.more_fragment_scroll_view);
        }
    }

    @Override // androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        RecyclerView recyclerView = ((p7) jk8Var).c;
        int i = 0;
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(i()));
        a7 a7Var = (a7) this.d.getValue();
        a7Var.j = new f7(this, i);
        recyclerView.setAdapter(a7Var);
        jk8 jk8Var2 = this.b;
        jk8Var2.getClass();
        ((MaterialButton) ((p7) jk8Var2).b.b).setOnClickListener(new g7(this, i));
        SwiftApp.Companion companion = SwiftApp.d;
        SwiftApp.Companion.a().a.e(getViewLifecycleOwner(), new i7(i, new c7(this, i)));
        l90 l90Var = this.c;
        ((r7) l90Var.getValue()).c.e(getViewLifecycleOwner(), new i7(i, new d7(this, i)));
        ((r7) l90Var.getValue()).d.e(getViewLifecycleOwner(), new i7(i, new e7(this, i)));
    }
}
