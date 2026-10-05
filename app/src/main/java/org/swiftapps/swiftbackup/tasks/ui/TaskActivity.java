package org.swiftapps.swiftbackup.tasks.ui;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import defpackage.as4;
import defpackage.ay7;
import defpackage.b40;
import defpackage.bs6;
import defpackage.bt3;
import defpackage.c35;
import defpackage.c40;
import defpackage.cr;
import defpackage.ex6;
import defpackage.gv7;
import defpackage.gz7;
import defpackage.hj;
import defpackage.hl1;
import defpackage.hs4;
import defpackage.hv1;
import defpackage.hy7;
import defpackage.il0;
import defpackage.io4;
import defpackage.iq1;
import defpackage.iz7;
import defpackage.kn3;
import defpackage.mo3;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.of;
import defpackage.pw6;
import defpackage.q63;
import defpackage.qo0;
import defpackage.qw6;
import defpackage.r35;
import defpackage.ra;
import defpackage.rw6;
import defpackage.s35;
import defpackage.sz8;
import defpackage.us5;
import defpackage.vf3;
import defpackage.vr6;
import defpackage.w14;
import defpackage.wa;
import defpackage.wx7;
import defpackage.xq4;
import defpackage.y20;
import defpackage.y35;
import defpackage.z63;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.NotificationHelper;
import org.swiftapps.swiftbackup.tasks.TaskManager$ErrorSummary;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class TaskActivity extends il0 {
    public static final /* synthetic */ int c0 = 0;
    public final gv7 K;
    public boolean L;
    public ArrayList M;
    public final gv7 Q;
    public final gv7 R;
    public final gv7 V;
    public wa X;
    public wa Y;
    public Long Z;
    public boolean a0;
    public MenuItem b0;
    public final gv7 N = new gv7(new mo3(this, 15));
    public final gv7 O = new gv7(new xq4(this, 15));
    public final gv7 P = new gv7(new as4(this, 17));
    public final gv7 S = new gv7(new wx7(this, 1));
    public final gv7 T = new gv7(new hs4(this, 14));
    public final gv7 U = new gv7(new us5(this, 8));
    public final gv7 W = new gv7(new kn3(this, 17));

    public TaskActivity() {
        final int i = 0;
        this.K = new gv7(new bt3(this) { // from class: ux7
            public final /* synthetic */ TaskActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                TaskActivity taskActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = TaskActivity.c0;
                        View viewInflate = taskActivity.getLayoutInflater().inflate(R.layout.task_activity, (ViewGroup) null, false);
                        int i4 = R.id.appbar_layout;
                        if (((AppBarLayout) ms8.u(viewInflate, R.id.appbar_layout)) != null) {
                            i4 = R.id.btn_action;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_action);
                            if (materialButton != null) {
                                i4 = R.id.rv_slog;
                                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_slog);
                                if (quickRecyclerView != null) {
                                    i4 = R.id.rv_tasks;
                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_tasks);
                                    if (recyclerView != null) {
                                        i4 = R.id.task_activity_top;
                                        View viewU = ms8.u(viewInflate, R.id.task_activity_top);
                                        if (viewU != null) {
                                            int i5 = R.id.done_view;
                                            LottieAnimationView lottieAnimationView = (LottieAnimationView) ms8.u(viewU, R.id.done_view);
                                            if (lottieAnimationView != null) {
                                                i5 = R.id.error_view;
                                                LottieAnimationView lottieAnimationView2 = (LottieAnimationView) ms8.u(viewU, R.id.error_view);
                                                if (lottieAnimationView2 != null) {
                                                    i5 = R.id.loading_view;
                                                    LottieAnimationView lottieAnimationView3 = (LottieAnimationView) ms8.u(viewU, R.id.loading_view);
                                                    if (lottieAnimationView3 != null) {
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) viewU;
                                                        int i6 = R.id.tv_task_chain_title;
                                                        TextView textView = (TextView) ms8.u(viewU, R.id.tv_task_chain_title);
                                                        if (textView != null) {
                                                            i6 = R.id.tv_user_email;
                                                            if (((TextView) ms8.u(viewU, R.id.tv_user_email)) != null) {
                                                                i6 = R.id.warning_view;
                                                                LottieAnimationView lottieAnimationView4 = (LottieAnimationView) ms8.u(viewU, R.id.warning_view);
                                                                if (lottieAnimationView4 != null) {
                                                                    fm1 fm1Var = new fm1();
                                                                    fm1Var.b = constraintLayout;
                                                                    fm1Var.c = lottieAnimationView;
                                                                    fm1Var.d = lottieAnimationView2;
                                                                    fm1Var.e = lottieAnimationView3;
                                                                    fm1Var.a = textView;
                                                                    fm1Var.f = lottieAnimationView4;
                                                                    i4 = R.id.toolbar;
                                                                    Toolbar toolbar = (Toolbar) ms8.u(viewInflate, R.id.toolbar);
                                                                    if (toolbar != null) {
                                                                        return new ay7((CoordinatorLayout) viewInflate, materialButton, quickRecyclerView, recyclerView, fm1Var, toolbar);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        i5 = i6;
                                                    }
                                                }
                                            }
                                            f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i5)));
                                            return null;
                                        }
                                    }
                                }
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                        return null;
                    default:
                        int i7 = TaskActivity.c0;
                        return (LottieAnimationView) taskActivity.N().e.d;
                }
            }
        });
        final int i2 = 1;
        this.Q = new gv7(new bt3(this) { // from class: ux7
            public final /* synthetic */ TaskActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                TaskActivity taskActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = TaskActivity.c0;
                        View viewInflate = taskActivity.getLayoutInflater().inflate(R.layout.task_activity, (ViewGroup) null, false);
                        int i5 = R.id.appbar_layout;
                        if (((AppBarLayout) ms8.u(viewInflate, R.id.appbar_layout)) != null) {
                            i5 = R.id.btn_action;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_action);
                            if (materialButton != null) {
                                i5 = R.id.rv_slog;
                                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_slog);
                                if (quickRecyclerView != null) {
                                    i5 = R.id.rv_tasks;
                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_tasks);
                                    if (recyclerView != null) {
                                        i5 = R.id.task_activity_top;
                                        View viewU = ms8.u(viewInflate, R.id.task_activity_top);
                                        if (viewU != null) {
                                            int i6 = R.id.done_view;
                                            LottieAnimationView lottieAnimationView = (LottieAnimationView) ms8.u(viewU, R.id.done_view);
                                            if (lottieAnimationView != null) {
                                                i6 = R.id.error_view;
                                                LottieAnimationView lottieAnimationView2 = (LottieAnimationView) ms8.u(viewU, R.id.error_view);
                                                if (lottieAnimationView2 != null) {
                                                    i6 = R.id.loading_view;
                                                    LottieAnimationView lottieAnimationView3 = (LottieAnimationView) ms8.u(viewU, R.id.loading_view);
                                                    if (lottieAnimationView3 != null) {
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) viewU;
                                                        int i7 = R.id.tv_task_chain_title;
                                                        TextView textView = (TextView) ms8.u(viewU, R.id.tv_task_chain_title);
                                                        if (textView != null) {
                                                            i7 = R.id.tv_user_email;
                                                            if (((TextView) ms8.u(viewU, R.id.tv_user_email)) != null) {
                                                                i7 = R.id.warning_view;
                                                                LottieAnimationView lottieAnimationView4 = (LottieAnimationView) ms8.u(viewU, R.id.warning_view);
                                                                if (lottieAnimationView4 != null) {
                                                                    fm1 fm1Var = new fm1();
                                                                    fm1Var.b = constraintLayout;
                                                                    fm1Var.c = lottieAnimationView;
                                                                    fm1Var.d = lottieAnimationView2;
                                                                    fm1Var.e = lottieAnimationView3;
                                                                    fm1Var.a = textView;
                                                                    fm1Var.f = lottieAnimationView4;
                                                                    i5 = R.id.toolbar;
                                                                    Toolbar toolbar = (Toolbar) ms8.u(viewInflate, R.id.toolbar);
                                                                    if (toolbar != null) {
                                                                        return new ay7((CoordinatorLayout) viewInflate, materialButton, quickRecyclerView, recyclerView, fm1Var, toolbar);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        i6 = i7;
                                                    }
                                                }
                                            }
                                            f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i6)));
                                            return null;
                                        }
                                    }
                                }
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
                        return null;
                    default:
                        int i8 = TaskActivity.c0;
                        return (LottieAnimationView) taskActivity.N().e.d;
                }
            }
        });
        final int i3 = 1;
        this.R = new gv7(new bt3(this) { // from class: vx7
            public final /* synthetic */ TaskActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                TaskActivity taskActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = TaskActivity.c0;
                        return new bs6(taskActivity, false);
                    default:
                        int i6 = TaskActivity.c0;
                        return (LottieAnimationView) taskActivity.N().e.f;
                }
            }
        });
        final int i4 = 0;
        this.V = new gv7(new bt3(this) { // from class: vx7
            public final /* synthetic */ TaskActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                TaskActivity taskActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = TaskActivity.c0;
                        return new bs6(taskActivity, false);
                    default:
                        int i7 = TaskActivity.c0;
                        return (LottieAnimationView) taskActivity.N().e.f;
                }
            }
        });
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 U() {
        return null;
    }

    public final ay7 N() {
        return (ay7) this.K.getValue();
    }

    public final void O(TaskManager$ErrorSummary taskManager$ErrorSummary) {
        LottieAnimationView lottieAnimationView;
        c40 c40Var;
        b40 b40Var;
        ArrayList arrayList;
        Log.d(r(), "onTaskCompleteUI called");
        A(false);
        sz8.m(this.X);
        sz8.m(this.Y);
        LottieAnimationView lottieAnimationView2 = (LottieAnimationView) this.O.getValue();
        lottieAnimationView2.y = false;
        lottieAnimationView2.x = false;
        lottieAnimationView2.t = false;
        c35 c35Var = lottieAnimationView2.n;
        c35Var.n.clear();
        c35Var.c.cancel();
        lottieAnimationView2.d();
        lottieAnimationView2.setVisibility(4);
        if (taskManager$ErrorSummary == null) {
            hy7 hy7Var = hy7.a;
            taskManager$ErrorSummary = hy7.c();
        }
        if (taskManager$ErrorSummary.hasErrors()) {
            s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), Float.valueOf(13.0f));
            ra raVar = (ra) s35Var.b;
            s35Var.v(taskManager$ErrorSummary.isOnlySafeErrors() ? R.string.note : R.string.error);
            raVar.m = false;
            raVar.f = nq7.H0(taskManager$ErrorSummary.getMsg()).toString();
            s35Var.s(R.string.ok, new iq1(this, 6));
            s35Var.m();
        }
        if (taskManager$ErrorSummary.hasErrors()) {
            lottieAnimationView = taskManager$ErrorSummary.isOnlySafeErrors() ? (LottieAnimationView) this.R.getValue() : (LottieAnimationView) this.Q.getValue();
        } else {
            lottieAnimationView = (LottieAnimationView) this.P.getValue();
        }
        sz8.c0(lottieAnimationView);
        lottieAnimationView.setRepeatCount(0);
        lottieAnimationView.f();
        CopyOnWriteArrayList copyOnWriteArrayList = hy7.c;
        if (copyOnWriteArrayList.size() == 1) {
            Iterator it = copyOnWriteArrayList.iterator();
            do {
                c40Var = null;
                if (!it.hasNext()) {
                    break;
                }
                qw6 qw6Var = ((rw6) it.next()).c;
                pw6 pw6Var = qw6Var != null ? qw6Var.a : null;
                if (pw6Var instanceof c40) {
                    c40Var = (c40) pw6Var;
                }
            } while (c40Var == null);
            if (c40Var == null || (arrayList = (b40Var = (b40) c40Var.b).c) == null || arrayList.isEmpty()) {
                return;
            }
            ArrayList arrayList2 = b40Var.c;
            this.M = arrayList2;
            if (arrayList2 != null) {
                ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(new q63((String) it2.next(), 2));
                }
                cr.e(this, arrayList3, true, true, null, null);
            }
        }
    }

    public final void P(boolean z) {
        this.a0 = z;
        if (z) {
            int color = getColor(R.color.ambrdark);
            MenuItem menuItem = this.b0;
            if (menuItem != null) {
                menuItem.setIcon(Const.w(this, R.drawable.ic_bug_selected, color));
            }
        } else {
            int iZ = sz8.z(this);
            MenuItem menuItem2 = this.b0;
            if (menuItem2 != null) {
                menuItem2.setIcon(Const.w(this, R.drawable.ic_bug, iZ));
            }
        }
        gv7 gv7Var = this.U;
        sz8.d0((QuickRecyclerView) gv7Var.getValue(), this.a0);
        ((QuickRecyclerView) gv7Var.getValue()).setAdapter((bs6) this.V.getValue());
        sz8.d0((ConstraintLayout) N().e.b, !this.a0);
    }

    public final void Q(boolean z, gz7 gz7Var) {
        if (this.L) {
            gz7Var = gz7.COMPLETE;
        }
        boolean zIsCancelled = gz7Var.isCancelled();
        boolean zIsRunning = gz7Var.isRunning();
        MaterialButton materialButton = (MaterialButton) this.W.getValue();
        materialButton.setEnabled(!zIsCancelled);
        if (zIsRunning || zIsCancelled) {
            materialButton.setBackgroundTintList(sz8.h0(getColor(sz8.y(this, R.attr.colorError2))));
            int color = materialButton.isEnabled() ? getColor(sz8.y(this, R.attr.colorOnError2)) : sz8.U(getColor(sz8.y(this, R.attr.colorOnError2)), 30);
            materialButton.setIconTint(sz8.h0(color));
            materialButton.setTextColor(color);
            materialButton.setRippleColorResource(sz8.y(this, R.attr.colorError2Ripple));
            if (zIsRunning) {
                materialButton.setText(R.string.cancel);
            }
            if (zIsCancelled) {
                materialButton.setText(R.string.cancelling_please_wait);
            }
        } else {
            materialButton.setBackgroundTintList(sz8.h0(getColor(sz8.y(this, R.attr.colorPrimary))));
            materialButton.setTextColor(getColor(sz8.y(this, R.attr.colorOnPrimary)));
            materialButton.setRippleColorResource(R.color.wht20);
            materialButton.setText(R.string.done);
        }
        if (!z || zIsCancelled) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        materialButton.startAnimation(alphaAnimation);
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        cr.b(this, i, i2, intent);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = hy7.h;
        setContentView(N().a);
        B();
        CopyOnWriteArrayList copyOnWriteArrayList = hy7.c;
        TaskManager$ErrorSummary taskManager$ErrorSummary = null;
        taskManager$ErrorSummary = null;
        int i = 0;
        if (copyOnWriteArrayList.isEmpty()) {
            try {
                SwiftApp.Companion companion = SwiftApp.d;
                q63 q63Var = new q63(SwiftApp.Companion.c().getCacheDir(), "TaskErrors.txt", 2);
                if (q63Var.j()) {
                    gv7 gv7Var = w14.a;
                    TaskManager$ErrorSummary taskManager$ErrorSummary2 = (TaskManager$ErrorSummary) w14.b(q63Var, TaskManager$ErrorSummary.class, false);
                    q63Var.f();
                    taskManager$ErrorSummary = taskManager$ErrorSummary2;
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "TaskManager", String.valueOf(e.getMessage()), null, 4, null);
            }
            if (taskManager$ErrorSummary == null || !taskManager$ErrorSummary.hasErrors()) {
                vr6.e$default(vr6.INSTANCE, r(), "onCreate: Task manager doesn't have any tasks! Finishing.", null, 4, null);
                Const.E(r().concat(": Task manager doesn't have any tasks! Finishing."));
                return;
            } else {
                vr6.i$default(vr6.INSTANCE, r(), "onCreate: Process death? Showing persisted task errors from file", null, 4, null);
                O(taskManager$ErrorSummary);
                return;
            }
        }
        boolean z = bundle2 != null && bundle2.getBoolean("force_complete", false);
        this.L = z;
        if (z) {
            Log.d(r(), "onCreate: Force complete status");
        }
        this.a0 = bundle2 != null && bundle2.getBoolean("show_slog_view", false);
        this.M = bundle2 != null ? bundle2.getStringArrayList("extra_apk_path") : null;
        L(true, new wx7(this, i));
        setSupportActionBar(N().f);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.b0(false);
        }
        ((TextView) this.N.getValue()).setText(hy7.b);
        RecyclerView recyclerView = (RecyclerView) this.S.getValue();
        int i2 = 7;
        sz8.b(recyclerView, 7);
        int size = copyOnWriteArrayList.size();
        if (size < 1) {
            size = 1;
        }
        recyclerView.setItemViewCacheSize(size);
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter((iz7) this.T.getValue());
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) this.U.getValue();
        sz8.b(quickRecyclerView, 7);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, 1, false);
        linearLayoutManager.q1(true);
        quickRecyclerView.setLayoutManager(linearLayoutManager);
        quickRecyclerView.setItemViewCacheSize(10);
        quickRecyclerView.setAdapter((bs6) this.V.getValue());
        MaterialButton materialButton = (MaterialButton) this.W.getValue();
        sz8.a(materialButton);
        materialButton.setOnClickListener(new of(this, 10));
        gz7 gz7Var = TaskService.b;
        Q(false, TaskService.b);
        ((ex6) TaskService.e.getValue()).e(this, new y20(i2, new z63(1, this, TaskActivity.class, "onStatusUpdateUI", "onStatusUpdateUI(Lorg/swiftapps/swiftbackup/tasks/TaskStatus;)V", 0, 2)));
        r35.m((iz7) this.T.getValue(), copyOnWriteArrayList);
        long jCurrentTimeMillis = System.currentTimeMillis() - 1000;
        if (bundle2 != null) {
            long j = bundle2.getLong("slog_start_time", jCurrentTimeMillis);
            Long lValueOf = j > 0 ? Long.valueOf(j) : null;
            if (lValueOf != null) {
                jCurrentTimeMillis = lValueOf.longValue();
            }
        }
        this.Z = Long.valueOf(jCurrentTimeMillis);
        y35.a().m().loadMessagesAfterTime(jCurrentTimeMillis).e(this, new y20(i2, new hj(this, 27)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_task_activity, menu);
        this.b0 = menu.findItem(R.id.action_swiftlogger);
        P(this.a0);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        hy7 hy7Var = hy7.a;
        gz7 gz7Var = TaskService.b;
        if (TaskService.b.isComplete()) {
            NotificationHelper.d().cancelAll();
        }
        super.onDestroy();
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        if (intent.hasExtra("android.content.pm.extra.STATUS")) {
            cr.c(this, this, intent);
        }
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_force_stop) {
            wa waVarC = this.Y;
            if (waVarC == null) {
                s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.force_stop);
                s35Var.n(R.string.sure_to_proceed);
                s35Var.s(R.string.yes, new vf3(this, 2));
                s35Var.q(R.string.no, null);
                waVarC = s35Var.c();
                this.Y = waVarC;
            }
            if (!waVarC.isShowing()) {
                waVarC.show();
            }
        } else if (itemId == R.id.action_swiftlogger) {
            P(!this.a0);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        Bundle bundle2 = new Bundle();
        hy7 hy7Var = hy7.a;
        gz7 gz7Var = TaskService.b;
        if (TaskService.b.isComplete()) {
            bundle2.putBoolean("force_complete", true);
        }
        bundle2.putBoolean("show_slog_view", this.a0);
        bundle2.putLong("slog_start_time", io4.h(this.Z));
        bundle2.putStringArrayList("extra_apk_path", this.M);
        hy7.h = bundle2;
    }
}
