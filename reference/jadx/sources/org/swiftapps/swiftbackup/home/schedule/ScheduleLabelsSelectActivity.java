package org.swiftapps.swiftbackup.home.schedule;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.button.MaterialButton;
import defpackage.as4;
import defpackage.b56;
import defpackage.br1;
import defpackage.bt3;
import defpackage.eq3;
import defpackage.ex6;
import defpackage.gv7;
import defpackage.ij;
import defpackage.il0;
import defpackage.ix0;
import defpackage.l90;
import defpackage.mo3;
import defpackage.nc8;
import defpackage.no5;
import defpackage.ns;
import defpackage.o30;
import defpackage.of;
import defpackage.ov2;
import defpackage.ph6;
import defpackage.pr4;
import defpackage.qe3;
import defpackage.qr7;
import defpackage.re3;
import defpackage.s37;
import defpackage.sz8;
import defpackage.tj3;
import defpackage.ur4;
import defpackage.us5;
import defpackage.v37;
import defpackage.vr4;
import defpackage.wr4;
import defpackage.xq4;
import defpackage.z20;
import defpackage.zc2;
import defpackage.zd1;
import defpackage.zf1;
import defpackage.zn4;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ScheduleLabelsSelectActivity extends il0 {
    public static final /* synthetic */ int X = 0;
    public final gv7 L;
    public final gv7 M;
    public final gv7 O;
    public final gv7 P;
    public final gv7 Q;
    public final gv7 T;
    public final gv7 U;
    public final gv7 W;
    public final l90 K = new l90(ph6.a(v37.class), new z20(this, 16), new ns(this, 18), new o30(this, 11));
    public final gv7 N = new gv7(new pr4(this, 9));
    public final gv7 R = new gv7(new us5(this, 4));
    public final gv7 S = new gv7(new no5(this, 3));
    public final gv7 V = new gv7(new mo3(this, 13));

    public ScheduleLabelsSelectActivity() {
        final int i = 0;
        this.L = new gv7(new bt3(this) { // from class: p37
            public final /* synthetic */ ScheduleLabelsSelectActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                ScheduleLabelsSelectActivity scheduleLabelsSelectActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = ScheduleLabelsSelectActivity.X;
                        View viewInflate = scheduleLabelsSelectActivity.getLayoutInflater().inflate(R.layout.schedule_labels_select_activity, (ViewGroup) null, false);
                        int i4 = R.id.appbar_layout;
                        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                        if (viewU != null) {
                            w00 w00VarB = w00.b(viewU);
                            i4 = R.id.btn_create_label;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_create_label);
                            if (materialButton != null) {
                                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                i4 = R.id.container_already_used_labels;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.container_already_used_labels);
                                if (constraintLayout != null) {
                                    i4 = R.id.container_built_in_labels;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ms8.u(viewInflate, R.id.container_built_in_labels);
                                    if (constraintLayout2 != null) {
                                        i4 = R.id.container_selected_labels;
                                        if (((ConstraintLayout) ms8.u(viewInflate, R.id.container_selected_labels)) != null) {
                                            i4 = R.id.container_user_labels;
                                            if (((ConstraintLayout) ms8.u(viewInflate, R.id.container_user_labels)) != null) {
                                                i4 = R.id.iv_clear;
                                                ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_clear);
                                                if (imageView != null) {
                                                    i4 = R.id.rv_labels;
                                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels);
                                                    if (recyclerView != null) {
                                                        i4 = R.id.rv_labels_already_used;
                                                        RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels_already_used);
                                                        if (recyclerView2 != null) {
                                                            i4 = R.id.rv_labels_built_in;
                                                            RecyclerView recyclerView3 = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels_built_in);
                                                            if (recyclerView3 != null) {
                                                                i4 = R.id.rv_selected_labels;
                                                                RecyclerView recyclerView4 = (RecyclerView) ms8.u(viewInflate, R.id.rv_selected_labels);
                                                                if (recyclerView4 != null) {
                                                                    i4 = R.id.scroll_view;
                                                                    NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                    if (nestedScrollView != null) {
                                                                        i4 = R.id.tv_already_used;
                                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_already_used)) != null) {
                                                                            i4 = R.id.tv_built_in;
                                                                            if (((TextView) ms8.u(viewInflate, R.id.tv_built_in)) != null) {
                                                                                i4 = R.id.tv_no_labels_selected;
                                                                                TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_no_labels_selected);
                                                                                if (textView != null) {
                                                                                    i4 = R.id.tv_user_created_labels;
                                                                                    if (((TextView) ms8.u(viewInflate, R.id.tv_user_created_labels)) != null) {
                                                                                        return new s37(coordinatorLayout, w00VarB, materialButton, constraintLayout, constraintLayout2, imageView, recyclerView, recyclerView2, recyclerView3, recyclerView4, nestedScrollView, textView);
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
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                        return null;
                    default:
                        int i5 = ScheduleLabelsSelectActivity.X;
                        return scheduleLabelsSelectActivity.N().f;
                }
            }
        });
        int i2 = 12;
        this.M = new gv7(new as4(this, i2));
        final int i3 = 1;
        this.O = new gv7(new bt3(this) { // from class: p37
            public final /* synthetic */ ScheduleLabelsSelectActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                ScheduleLabelsSelectActivity scheduleLabelsSelectActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = ScheduleLabelsSelectActivity.X;
                        View viewInflate = scheduleLabelsSelectActivity.getLayoutInflater().inflate(R.layout.schedule_labels_select_activity, (ViewGroup) null, false);
                        int i6 = R.id.appbar_layout;
                        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                        if (viewU != null) {
                            w00 w00VarB = w00.b(viewU);
                            i6 = R.id.btn_create_label;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_create_label);
                            if (materialButton != null) {
                                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                i6 = R.id.container_already_used_labels;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.container_already_used_labels);
                                if (constraintLayout != null) {
                                    i6 = R.id.container_built_in_labels;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ms8.u(viewInflate, R.id.container_built_in_labels);
                                    if (constraintLayout2 != null) {
                                        i6 = R.id.container_selected_labels;
                                        if (((ConstraintLayout) ms8.u(viewInflate, R.id.container_selected_labels)) != null) {
                                            i6 = R.id.container_user_labels;
                                            if (((ConstraintLayout) ms8.u(viewInflate, R.id.container_user_labels)) != null) {
                                                i6 = R.id.iv_clear;
                                                ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_clear);
                                                if (imageView != null) {
                                                    i6 = R.id.rv_labels;
                                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels);
                                                    if (recyclerView != null) {
                                                        i6 = R.id.rv_labels_already_used;
                                                        RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels_already_used);
                                                        if (recyclerView2 != null) {
                                                            i6 = R.id.rv_labels_built_in;
                                                            RecyclerView recyclerView3 = (RecyclerView) ms8.u(viewInflate, R.id.rv_labels_built_in);
                                                            if (recyclerView3 != null) {
                                                                i6 = R.id.rv_selected_labels;
                                                                RecyclerView recyclerView4 = (RecyclerView) ms8.u(viewInflate, R.id.rv_selected_labels);
                                                                if (recyclerView4 != null) {
                                                                    i6 = R.id.scroll_view;
                                                                    NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                    if (nestedScrollView != null) {
                                                                        i6 = R.id.tv_already_used;
                                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_already_used)) != null) {
                                                                            i6 = R.id.tv_built_in;
                                                                            if (((TextView) ms8.u(viewInflate, R.id.tv_built_in)) != null) {
                                                                                i6 = R.id.tv_no_labels_selected;
                                                                                TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_no_labels_selected);
                                                                                if (textView != null) {
                                                                                    i6 = R.id.tv_user_created_labels;
                                                                                    if (((TextView) ms8.u(viewInflate, R.id.tv_user_created_labels)) != null) {
                                                                                        return new s37(coordinatorLayout, w00VarB, materialButton, constraintLayout, constraintLayout2, imageView, recyclerView, recyclerView2, recyclerView3, recyclerView4, nestedScrollView, textView);
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
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                        return null;
                    default:
                        int i7 = ScheduleLabelsSelectActivity.X;
                        return scheduleLabelsSelectActivity.N().f;
                }
            }
        });
        this.P = new gv7(new bt3(this) { // from class: q37
            public final /* synthetic */ ScheduleLabelsSelectActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                ScheduleLabelsSelectActivity scheduleLabelsSelectActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = ScheduleLabelsSelectActivity.X;
                        return scheduleLabelsSelectActivity.N().p;
                    default:
                        int i6 = ScheduleLabelsSelectActivity.X;
                        return scheduleLabelsSelectActivity.N().k;
                }
            }
        });
        this.Q = new gv7(new bt3(this) { // from class: r37
            public final /* synthetic */ ScheduleLabelsSelectActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                ScheduleLabelsSelectActivity scheduleLabelsSelectActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = ScheduleLabelsSelectActivity.X;
                        break;
                    default:
                        int i6 = ScheduleLabelsSelectActivity.X;
                        break;
                }
                return new ur4(2, scheduleLabelsSelectActivity.v());
            }
        });
        this.T = new gv7(new bt3(this) { // from class: q37
            public final /* synthetic */ ScheduleLabelsSelectActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i;
                ScheduleLabelsSelectActivity scheduleLabelsSelectActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = ScheduleLabelsSelectActivity.X;
                        return scheduleLabelsSelectActivity.N().p;
                    default:
                        int i6 = ScheduleLabelsSelectActivity.X;
                        return scheduleLabelsSelectActivity.N().k;
                }
            }
        });
        this.U = new gv7(new bt3(this) { // from class: r37
            public final /* synthetic */ ScheduleLabelsSelectActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i;
                ScheduleLabelsSelectActivity scheduleLabelsSelectActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = ScheduleLabelsSelectActivity.X;
                        break;
                    default:
                        int i6 = ScheduleLabelsSelectActivity.X;
                        break;
                }
                return new ur4(2, scheduleLabelsSelectActivity.v());
            }
        });
        this.W = new gv7(new xq4(this, i2));
    }

    public final s37 N() {
        return (s37) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final v37 V() {
        return (v37) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(N().a);
        V v = V.INSTANCE;
        if (!v.getA()) {
            zn4 zn4Var = zn4.a;
            zn4.e(new b56(this, 0));
            finish();
            return;
        }
        ArrayList<String> stringArrayListExtra = getIntent().getStringArrayListExtra("extra_selected_labels");
        ArrayList<String> stringArrayListExtra2 = getIntent().getStringArrayListExtra("extra_already_used_labels");
        v37 v37VarV = V();
        int i = 1;
        if (!v37VarV.e) {
            v37VarV.e = true;
            List listP = stringArrayListExtra != null ? eq3.p(stringArrayListExtra) : null;
            List list = ov2.a;
            if (listP == null) {
                listP = list;
            }
            v37VarV.g = listP;
            List listP2 = stringArrayListExtra2 != null ? eq3.p(stringArrayListExtra2) : null;
            if (listP2 != null) {
                list = listP2;
            }
            v37VarV.f = list;
            zn4.c(new as4(v37VarV, 13));
            if (!v.getVp()) {
                zc2 zc2Var = re3.a;
                String str = v37VarV.b;
                ConfigsData configsData = br1.e;
                try {
                    new qe3(str, "configs=" + (configsData != null ? configsData.getSize() : null)).invoke();
                } catch (Exception unused) {
                }
            }
        }
        setSupportActionBar((Toolbar) ((ix0) N().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(N().r, 7);
        RecyclerView recyclerView = (RecyclerView) this.P.getValue();
        recyclerView.setLayoutManager(new FlexboxLayoutManager(this));
        recyclerView.setItemViewCacheSize(10);
        recyclerView.setItemAnimator(null);
        ur4 ur4Var = (ur4) this.Q.getValue();
        ur4Var.j = new tj3(this, 3);
        recyclerView.setAdapter(ur4Var);
        RecyclerView recyclerView2 = (RecyclerView) this.T.getValue();
        recyclerView2.setLayoutManager(new FlexboxLayoutManager(this));
        recyclerView2.setItemViewCacheSize(10);
        recyclerView2.setItemAnimator(null);
        ur4 ur4Var2 = (ur4) this.U.getValue();
        ur4Var2.j = new ij(this, i);
        recyclerView2.setAdapter(ur4Var2);
        ((ImageView) this.O.getValue()).setOnClickListener(new of(this, 9));
        ((MaterialButton) this.R.getValue()).setOnClickListener(new zf1(this, 8));
        V().h.e(this, new wr4(i, new zd1(1, this, ScheduleLabelsSelectActivity.class, "onState", "onState(Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectVM$State;)V", 0, 4)));
    }

    @qr7
    public final void onLabelsUpdateEvent(vr4 vr4Var) {
        vr4Var.getClass();
        Log.d(r(), "Labels update event received: " + vr4Var);
        ex6 ex6Var = V().h;
        ex6Var.l(ex6Var.d());
    }
}
