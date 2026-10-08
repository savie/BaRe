package org.swiftapps.swiftbackup.appslist.ui.labels;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import defpackage.ak;
import defpackage.b05;
import defpackage.b56;
import defpackage.bk;
import defpackage.bt3;
import defpackage.ck;
import defpackage.d7;
import defpackage.d76;
import defpackage.e20;
import defpackage.e7;
import defpackage.es5;
import defpackage.f20;
import defpackage.g30;
import defpackage.g7;
import defpackage.gj;
import defpackage.gv7;
import defpackage.h00;
import defpackage.h7;
import defpackage.i00;
import defpackage.il0;
import defpackage.ix0;
import defpackage.j51;
import defpackage.j94;
import defpackage.ji;
import defpackage.kn3;
import defpackage.l90;
import defpackage.lf;
import defpackage.li;
import defpackage.lr4;
import defpackage.nc8;
import defpackage.of;
import defpackage.ph6;
import defpackage.pr4;
import defpackage.qr;
import defpackage.rr4;
import defpackage.sm;
import defpackage.sx3;
import defpackage.sz8;
import defpackage.tr;
import defpackage.u95;
import defpackage.ur4;
import defpackage.vo3;
import defpackage.vq4;
import defpackage.wf;
import defpackage.x13;
import defpackage.yr4;
import defpackage.yy4;
import defpackage.zn4;
import defpackage.zr4;
import defpackage.zs;
import defpackage.zw6;
import defpackage.zx2;
import defpackage.zy4;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LabelsActivity extends il0 {
    public static final /* synthetic */ int Z = 0;
    public final l90 K;
    public final gv7 L;
    public final gv7 M;
    public final gv7 N;
    public final gv7 O;
    public final gv7 P;
    public final gv7 Q;
    public final gv7 R;
    public final gv7 S;
    public final gv7 T;
    public final gv7 V;
    public final gv7 U = new gv7(new lf(this, 25));
    public final gv7 W = new gv7(new gj(this, 26));
    public final gv7 X = new gv7(new ak(this, 24));
    public final gv7 Y = new gv7(new bk(this, 28));

    public LabelsActivity() {
        int i = 7;
        this.K = new l90(ph6.a(zr4.class), new j51(this, 6), new wf(this, 9), new f20(this, i));
        final int i2 = 0;
        this.L = new gv7(new bt3(this) { // from class: nr4
            public final /* synthetic */ LabelsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                LabelsActivity labelsActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = LabelsActivity.Z;
                        View viewInflate = labelsActivity.getLayoutInflater().inflate(R.layout.labels_activity, (ViewGroup) null, false);
                        int i5 = R.id.appbar_layout;
                        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                        if (viewU != null) {
                            w00 w00VarB = w00.b(viewU);
                            i5 = R.id.btn_apply_labels;
                            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_apply_labels);
                            if (extendedFloatingActionButton != null) {
                                i5 = R.id.container_app_info;
                                MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewInflate, R.id.container_app_info);
                                if (materialCardView != null) {
                                    i5 = R.id.container_selected_labels;
                                    MaterialCardView materialCardView2 = (MaterialCardView) ms8.u(viewInflate, R.id.container_selected_labels);
                                    if (materialCardView2 != null) {
                                        i5 = R.id.error_layout;
                                        View viewU2 = ms8.u(viewInflate, R.id.error_layout);
                                        if (viewU2 != null) {
                                            zx2 zx2VarA = zx2.a(viewU2);
                                            i5 = R.id.image_icon;
                                            ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.image_icon);
                                            if (imageView != null) {
                                                i5 = R.id.iv_clear;
                                                ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_clear);
                                                if (imageView2 != null) {
                                                    i5 = R.id.iv_clear_app_labels;
                                                    ImageView imageView3 = (ImageView) ms8.u(viewInflate, R.id.iv_clear_app_labels);
                                                    if (imageView3 != null) {
                                                        i5 = R.id.main_view;
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.main_view);
                                                        if (constraintLayout != null) {
                                                            i5 = R.id.progress_bar;
                                                            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_bar);
                                                            if (circularProgressIndicator != null) {
                                                                i5 = R.id.rv_app_labels;
                                                                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_app_labels);
                                                                if (quickRecyclerView != null) {
                                                                    i5 = R.id.rv_labels;
                                                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels);
                                                                    if (recyclerView != null) {
                                                                        i5 = R.id.rv_selected_labels;
                                                                        RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate, R.id.rv_selected_labels);
                                                                        if (recyclerView2 != null) {
                                                                            i5 = R.id.tv_app_labels_counter;
                                                                            TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_app_labels_counter);
                                                                            if (textView != null) {
                                                                                i5 = R.id.tv_selected_labels_counter;
                                                                                TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_selected_labels_counter);
                                                                                if (textView2 != null) {
                                                                                    i5 = R.id.tv_subtitle1;
                                                                                    TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_subtitle1);
                                                                                    if (textView3 != null) {
                                                                                        i5 = R.id.tv_title;
                                                                                        TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                                                                        if (textView4 != null) {
                                                                                            return new rr4((CoordinatorLayout) viewInflate, w00VarB, extendedFloatingActionButton, materialCardView, materialCardView2, zx2VarA, imageView, imageView2, imageView3, constraintLayout, circularProgressIndicator, quickRecyclerView, recyclerView, recyclerView2, textView, textView2, textView3, textView4);
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
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
                        return null;
                    default:
                        int i6 = LabelsActivity.Z;
                        return labelsActivity.Q().r;
                }
            }
        });
        int i3 = 29;
        this.M = new gv7(new ck(this, i3));
        final int i4 = 1;
        this.N = new gv7(new bt3(this) { // from class: qr4
            public final /* synthetic */ LabelsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                LabelsActivity labelsActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = LabelsActivity.Z;
                        return labelsActivity.Q().x;
                    default:
                        int i7 = LabelsActivity.Z;
                        Intent intent = labelsActivity.getIntent();
                        return (ji) (intent != null ? intent.getParcelableExtra("labels_extra_app") : null);
                }
            }
        });
        this.O = new gv7(new kn3(this, i));
        this.P = new gv7(new bt3(this) { // from class: nr4
            public final /* synthetic */ LabelsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                LabelsActivity labelsActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = LabelsActivity.Z;
                        View viewInflate = labelsActivity.getLayoutInflater().inflate(R.layout.labels_activity, (ViewGroup) null, false);
                        int i7 = R.id.appbar_layout;
                        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                        if (viewU != null) {
                            w00 w00VarB = w00.b(viewU);
                            i7 = R.id.btn_apply_labels;
                            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_apply_labels);
                            if (extendedFloatingActionButton != null) {
                                i7 = R.id.container_app_info;
                                MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewInflate, R.id.container_app_info);
                                if (materialCardView != null) {
                                    i7 = R.id.container_selected_labels;
                                    MaterialCardView materialCardView2 = (MaterialCardView) ms8.u(viewInflate, R.id.container_selected_labels);
                                    if (materialCardView2 != null) {
                                        i7 = R.id.error_layout;
                                        View viewU2 = ms8.u(viewInflate, R.id.error_layout);
                                        if (viewU2 != null) {
                                            zx2 zx2VarA = zx2.a(viewU2);
                                            i7 = R.id.image_icon;
                                            ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.image_icon);
                                            if (imageView != null) {
                                                i7 = R.id.iv_clear;
                                                ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_clear);
                                                if (imageView2 != null) {
                                                    i7 = R.id.iv_clear_app_labels;
                                                    ImageView imageView3 = (ImageView) ms8.u(viewInflate, R.id.iv_clear_app_labels);
                                                    if (imageView3 != null) {
                                                        i7 = R.id.main_view;
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.main_view);
                                                        if (constraintLayout != null) {
                                                            i7 = R.id.progress_bar;
                                                            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_bar);
                                                            if (circularProgressIndicator != null) {
                                                                i7 = R.id.rv_app_labels;
                                                                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_app_labels);
                                                                if (quickRecyclerView != null) {
                                                                    i7 = R.id.rv_labels;
                                                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels);
                                                                    if (recyclerView != null) {
                                                                        i7 = R.id.rv_selected_labels;
                                                                        RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate, R.id.rv_selected_labels);
                                                                        if (recyclerView2 != null) {
                                                                            i7 = R.id.tv_app_labels_counter;
                                                                            TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_app_labels_counter);
                                                                            if (textView != null) {
                                                                                i7 = R.id.tv_selected_labels_counter;
                                                                                TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_selected_labels_counter);
                                                                                if (textView2 != null) {
                                                                                    i7 = R.id.tv_subtitle1;
                                                                                    TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_subtitle1);
                                                                                    if (textView3 != null) {
                                                                                        i7 = R.id.tv_title;
                                                                                        TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                                                                        if (textView4 != null) {
                                                                                            return new rr4((CoordinatorLayout) viewInflate, w00VarB, extendedFloatingActionButton, materialCardView, materialCardView2, zx2VarA, imageView, imageView2, imageView3, constraintLayout, circularProgressIndicator, quickRecyclerView, recyclerView, recyclerView2, textView, textView2, textView3, textView4);
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
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                        return null;
                    default:
                        int i8 = LabelsActivity.Z;
                        return labelsActivity.Q().r;
                }
            }
        });
        this.Q = new gv7(new bt3(this) { // from class: or4
            public final /* synthetic */ LabelsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                LabelsActivity labelsActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = LabelsActivity.Z;
                        return labelsActivity.Q().f;
                    default:
                        int i7 = LabelsActivity.Z;
                        return labelsActivity.Q().q;
                }
            }
        });
        this.R = new gv7(new bt3(this) { // from class: or4
            public final /* synthetic */ LabelsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                LabelsActivity labelsActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = LabelsActivity.Z;
                        return labelsActivity.Q().f;
                    default:
                        int i7 = LabelsActivity.Z;
                        return labelsActivity.Q().q;
                }
            }
        });
        this.S = new gv7(new d76(this, i3));
        this.T = new gv7(new pr4(this, i2));
        this.V = new gv7(new bt3(this) { // from class: qr4
            public final /* synthetic */ LabelsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                LabelsActivity labelsActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = LabelsActivity.Z;
                        return labelsActivity.Q().x;
                    default:
                        int i7 = LabelsActivity.Z;
                        Intent intent = labelsActivity.getIntent();
                        return (ji) (intent != null ? intent.getParcelableExtra("labels_extra_app") : null);
                }
            }
        });
    }

    public final ur4 N() {
        return (ur4) this.Y.getValue();
    }

    public final int O() {
        return ((Number) this.M.getValue()).intValue();
    }

    public final RecyclerView P() {
        return (RecyclerView) this.V.getValue();
    }

    public final rr4 Q() {
        return (rr4) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final zr4 V() {
        return (zr4) this.K.getValue();
    }

    public final void S(vq4 vq4Var) {
        if (V().j().size() < 5) {
            zr4 zr4VarV = V();
            String id = vq4Var.a.getId();
            if (id != null) {
                zr4VarV.h = sz8.S(zr4VarV.h, id);
            }
            zr4VarV.k(lr4.e);
            return;
        }
        lr4 lr4Var = lr4.a;
        b05.l(this, null, getString(R.string.maximum_num_labels_limit_message) + " (5/5)", 10);
    }

    public final void T() {
        Map<String, LabelParams> labelParamsMap;
        if (O() == 0) {
            LabelsData labelsData = lr4.e;
            int size = (labelsData == null || (labelParamsMap = labelsData.getLabelParamsMap()) == null) ? 0 : labelParamsMap.size();
            nc8 supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.d0(Const.p(this, size, 100, false));
            }
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        u95 u95Var = V().j;
        u95Var.getClass();
        zy4.a("removeObservers");
        Iterator it = u95Var.b.iterator();
        while (true) {
            zw6 zw6Var = (zw6) it;
            if (!zw6Var.hasNext()) {
                super.finish();
                return;
            } else {
                Map.Entry entry = (Map.Entry) zw6Var.next();
                if (((yy4) entry.getValue()).c(this)) {
                    u95Var.j((es5) entry.getKey());
                }
            }
        }
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 264 && i2 == -1) {
            V().g = intent != null ? intent.getStringExtra("extra_created_label_id") : null;
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        Object[] objArr = 0;
        if (!V.INSTANCE.getA()) {
            zn4 zn4Var = zn4.a;
            zn4.e(new b56(this, objArr == true ? 1 : 0));
            finish();
            return;
        }
        setContentView(Q().a);
        Toolbar toolbar = (Toolbar) ((ix0) Q().b.c).c;
        setSupportActionBar(toolbar);
        nc8 supportActionBar = getSupportActionBar();
        int i2 = 2;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            int iO = O();
            if (iO != 1) {
                i = iO != 2 ? R.string.manage_app_labels : R.string.select_labels;
            } else {
                i = R.string.set_app_labels;
            }
            supportActionBar.e0(i);
        }
        toolbar.setOnClickListener(new g7(this, 12));
        T();
        sz8.d0((MaterialCardView) this.S.getValue(), O() == 1);
        ji jiVar = (ji) this.N.getValue();
        int i3 = 11;
        if (jiVar != null) {
            ImageView imageView = Q().k;
            TextView textView = Q().I;
            TextView textView2 = Q().J;
            Set set = j94.a;
            j94.g(new sx3(jiVar.getPackageName(), jiVar.isInstalled()), imageView, !jiVar.isInstalled(), true);
            qr qrVar = tr.n0;
            qr.d(imageView, jiVar);
            qr.h(textView, jiVar, qr.c(this));
            qr.e(textView2, jiVar);
            Q().p.setOnClickListener(new h7(this, i3));
        }
        ((ExtendedFloatingActionButton) this.U.getValue()).setOnClickListener(new of(this, 7));
        gv7 gv7Var = this.R;
        ((zx2) gv7Var.getValue()).d.setImageResource(R.drawable.ic_label_outline);
        ((zx2) gv7Var.getValue()).e.setText(R.string.create_label_message);
        MaterialButton materialButton = ((zx2) gv7Var.getValue()).b;
        materialButton.setIconResource(R.drawable.ic_plus);
        materialButton.setText(R.string.create_new_label);
        materialButton.setOnClickListener(new h00(this, 6));
        gv7 gv7Var2 = this.T;
        sz8.d0((MaterialCardView) gv7Var2.getValue(), O() == 2);
        if (sz8.I((MaterialCardView) gv7Var2.getValue())) {
            ((ImageView) this.X.getValue()).setOnClickListener(new i00(this, i3));
        }
        RecyclerView recyclerViewP = P();
        sz8.b(recyclerViewP, 7);
        recyclerViewP.setLayoutManager(new FlexboxLayoutManager(this));
        recyclerViewP.setItemViewCacheSize(10);
        recyclerViewP.setItemAnimator(null);
        if (O() == 0) {
            ur4 ur4VarN = N();
            ur4VarN.i = new zs(this, 10);
            ur4VarN.j = new vo3(this, i2);
            recyclerViewP.setAdapter(ur4VarN);
        }
        if (O() == 1) {
            ur4 ur4VarN2 = N();
            ur4VarN2.j = new li(this, i2);
            recyclerViewP.setAdapter(ur4VarN2);
        }
        if (O() == 2) {
            ur4 ur4VarN3 = N();
            ur4VarN3.j = new g30(this, 1);
            recyclerViewP.setAdapter(ur4VarN3);
        }
        zr4 zr4VarV = V();
        int iO2 = O();
        Set set2 = (Set) this.O.getValue();
        if (!zr4VarV.e) {
            zr4VarV.e = true;
            zr4VarV.f = Integer.valueOf(iO2);
            zn4 zn4Var2 = zn4.a;
            zn4.b(null, new yr4(zr4VarV, set2, iO2, null));
        }
        V().i.e(this, new e20(i2, new d7(this, 16)));
        V().j.e(this, new e20(i2, new e7(this, 19)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_labels, menu);
        menu.findItem(R.id.action_create_label).setVisible(O() == 0 || O() == 1);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_delete_all);
        if (menuItemFindItem != null) {
            menuItemFindItem.setVisible(O() == 0);
            if (menuItemFindItem.isVisible()) {
                menuItemFindItem.setIconTintList(sz8.h0(sz8.r(this)));
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_create_label) {
            x13.R(this);
        } else if (itemId == R.id.action_delete_all) {
            lr4 lr4Var = lr4.a;
            if (!lr4.g()) {
                Const.L();
                return false;
            }
            Const.K(this, R.string.delete_all, new sm(11), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        V().j.k(N().e);
        super.onSaveInstanceState(bundle);
    }
}
