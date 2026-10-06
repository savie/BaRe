package defpackage;

import android.app.WallpaperManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.u;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.GlobalScheduleError;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;
import org.swiftapps.swiftbackup.views.SwiftSegmentConstraintLayout;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m37 extends rl0<n37> {
    public final l90 c;
    public final gv7 d;
    public final cr3 e;
    public final cr3 f;
    public boolean k;

    public m37() {
        super(0);
        os4 os4VarX = jd4.x(ys4.c, new u30(new l37(this, m37.class, "ctx", "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;", 0), 3));
        this.c = new l90(ph6.a(q47.class), new v30(os4VarX, 2), new x30(this, os4VarX, 1), new w30(os4VarX, 1));
        this.d = new gv7(new to5(this, 6));
        this.e = (cr3) registerForActivityResult(new mb(this), new t37());
        this.f = (cr3) registerForActivityResult(new nb(this, 3), new g37());
        this.k = true;
    }

    public final HomeActivity i() {
        u activity = getActivity();
        activity.getClass();
        return (HomeActivity) activity;
    }

    public final ey2 j() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((n37) jk8Var).d;
    }

    public final NestedScrollView k() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((n37) jk8Var).n;
    }

    public final SwiftBackupMaterialSwitch l() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return (SwiftBackupMaterialSwitch) ((n37) jk8Var).k.e;
    }

    public final ScheduleFabMenuView m() {
        return i().Z().e;
    }

    public final QuickRecyclerView n() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((n37) jk8Var).f;
    }

    public final j57 o() {
        return (j57) this.d.getValue();
    }

    @Override // androidx.fragment.app.o
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 2) {
            dz5 dz5Var = dz5.a;
            if (dz5.m()) {
                q47 q47VarP = p();
                zn4 zn4Var = zn4.a;
                zn4.c(new as4(q47VarP, 14));
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        dz5 dz5Var2 = dz5.a;
        if (dz5.g()) {
            q47 q47VarP2 = p();
            zn4 zn4Var2 = zn4.a;
            zn4.c(new xq4(q47VarP2, 13));
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x014c A[PHI: r11
      0x014c: PHI (r11v2 int) = (r11v1 int), (r11v3 int), (r11v4 int), (r11v5 int), (r11v6 int) binds: [B:19:0x007c, B:21:0x0087, B:23:0x0092, B:25:0x009d, B:27:0x00a6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.schedule_fragment, viewGroup, false);
        int i = R.id.btn_add_first_schedule;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_add_first_schedule);
        if (materialButton != null) {
            i = R.id.cv_no_schedule_added;
            MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewInflate, R.id.cv_no_schedule_added);
            if (materialCardView != null) {
                i = R.id.error_layout;
                View viewU = ms8.u(viewInflate, R.id.error_layout);
                if (viewU != null) {
                    ey2 ey2VarA = ey2.a(viewU);
                    i = R.id.progress_bar;
                    View viewU2 = ms8.u(viewInflate, R.id.progress_bar);
                    if (viewU2 != null) {
                        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) viewU2;
                        ix0 ix0Var = new ix0(6, circularProgressIndicator, circularProgressIndicator);
                        i = R.id.rv_schedules;
                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_schedules);
                        if (quickRecyclerView != null) {
                            i = R.id.schedule_fragment_card;
                            View viewU3 = ms8.u(viewInflate, R.id.schedule_fragment_card);
                            if (viewU3 != null) {
                                int i2 = R.id.btn_run_all;
                                MaterialButton materialButton2 = (MaterialButton) ms8.u(viewU3, R.id.btn_run_all);
                                if (materialButton2 != null) {
                                    i2 = R.id.charging_dropdown;
                                    View viewU4 = ms8.u(viewU3, R.id.charging_dropdown);
                                    if (viewU4 != null) {
                                        gm1 gm1VarA = gm1.a(viewU4);
                                        int i3 = R.id.schedule_header_click_target;
                                        View viewU5 = ms8.u(viewU3, R.id.schedule_header_click_target);
                                        if (viewU5 != null) {
                                            i3 = R.id.schedule_header_segment;
                                            if (((SwiftSegmentConstraintLayout) ms8.u(viewU3, R.id.schedule_header_segment)) != null) {
                                                i3 = R.id.schedule_requirements_segment;
                                                if (((LinearLayout) ms8.u(viewU3, R.id.schedule_requirements_segment)) != null) {
                                                    i3 = R.id.swch_schedule;
                                                    SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ms8.u(viewU3, R.id.swch_schedule);
                                                    if (swiftBackupMaterialSwitch != null) {
                                                        i3 = R.id.time_dropdown;
                                                        View viewU6 = ms8.u(viewU3, R.id.time_dropdown);
                                                        if (viewU6 != null) {
                                                            gm1 gm1VarA2 = gm1.a(viewU6);
                                                            int i4 = R.id.tv_header_subtitle;
                                                            if (((TextView) ms8.u(viewU3, R.id.tv_header_subtitle)) != null) {
                                                                i4 = R.id.tv_header_title;
                                                                if (((TextView) ms8.u(viewU3, R.id.tv_header_title)) != null) {
                                                                    i4 = R.id.tv_schedule_header_error;
                                                                    TextView textView = (TextView) ms8.u(viewU3, R.id.tv_schedule_header_error);
                                                                    if (textView != null) {
                                                                        i75 i75Var = new i75();
                                                                        i75Var.a = (SwiftSegmentedCardGroup) viewU3;
                                                                        i75Var.b = materialButton2;
                                                                        i75Var.c = gm1VarA;
                                                                        i75Var.d = viewU5;
                                                                        i75Var.e = swiftBackupMaterialSwitch;
                                                                        i75Var.f = gm1VarA2;
                                                                        i75Var.k = textView;
                                                                        i = R.id.schedule_fragment_scrollview;
                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.schedule_fragment_scrollview);
                                                                        if (nestedScrollView != null) {
                                                                            i = R.id.schedule_notice_view;
                                                                            View viewU7 = ms8.u(viewInflate, R.id.schedule_notice_view);
                                                                            if (viewU7 != null) {
                                                                                int i5 = R.id.iv_cancel;
                                                                                if (((ImageView) ms8.u(viewU7, R.id.iv_cancel)) != null) {
                                                                                    MaterialCardView materialCardView2 = (MaterialCardView) viewU7;
                                                                                    TextView textView2 = (TextView) ms8.u(viewU7, R.id.tv_title);
                                                                                    if (textView2 != null) {
                                                                                        w00 w00Var = new w00(9, materialCardView2, textView2);
                                                                                        i = R.id.tv_schedules_title;
                                                                                        TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_schedules_title);
                                                                                        if (textView3 != null) {
                                                                                            n37 n37Var = new n37((FrameLayout) viewInflate, materialButton, materialCardView, ey2VarA, ix0Var, quickRecyclerView, i75Var, nestedScrollView, w00Var, textView3);
                                                                                            this.b = n37Var;
                                                                                            View root = n37Var.getRoot();
                                                                                            root.getClass();
                                                                                            return root;
                                                                                        }
                                                                                    } else {
                                                                                        i5 = R.id.tv_title;
                                                                                    }
                                                                                }
                                                                                f6.n("Missing required view with ID: ".concat(viewU7.getResources().getResourceName(i5)));
                                                                                return null;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            i2 = i4;
                                                        } else {
                                                            i2 = i3;
                                                        }
                                                    } else {
                                                        i2 = i3;
                                                    }
                                                } else {
                                                    i2 = i3;
                                                }
                                            } else {
                                                i2 = i3;
                                            }
                                        } else {
                                            i2 = i3;
                                        }
                                    }
                                }
                                f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i2)));
                                return null;
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        c64.m.k(Boolean.FALSE);
        if (this.k) {
            q47 q47VarP = p();
            String string = null;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences.getString("app_locale", null);
                Locale localeA = (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a();
                if (!pe4.d(q47VarP.g, localeA)) {
                    Log.i(q47VarP.b, "Locale changed, refreshing views");
                    q47VarP.g = localeA;
                    zn4.c(new h47(p(), true));
                }
            } catch (ClassCastException unused) {
            }
        } else {
            zn4 zn4Var = zn4.a;
            zn4.f(500L, new u14(this, 9));
        }
        if (isAdded()) {
            ((AppBarLayout) i().Z().c.a).setLiftOnScrollTargetViewId(R.id.schedule_fragment_scrollview);
        }
        this.k = false;
    }

    @Override // androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        l().setOnClickListener(new h00(this, 12));
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        i75 i75Var = ((n37) jk8Var).k;
        ((SwiftSegmentedCardGroup) i75Var.a).b((View) i75Var.d, new gs(this, 9));
        jk8 jk8Var2 = this.b;
        jk8Var2.getClass();
        gm1 gm1Var = (gm1) ((n37) jk8Var2).k.f;
        ((ImageView) gm1Var.c).setImageResource(R.drawable.ic_alarm);
        ((TextView) gm1Var.e).setText(R.string.start_time);
        int i = 14;
        ((MaterialCardView) gm1Var.a).setOnClickListener(new g7(this, i));
        jk8 jk8Var3 = this.b;
        jk8Var3.getClass();
        gm1 gm1Var2 = (gm1) ((n37) jk8Var3).k.c;
        ((ImageView) gm1Var2.c).setImageResource(R.drawable.ic_battery_charging);
        ((TextView) gm1Var2.e).setText(R.string.charging_requirements);
        ((MaterialCardView) gm1Var2.a).setOnClickListener(new h7(this, i));
        jk8 jk8Var4 = this.b;
        jk8Var4.getClass();
        TextView textView = (TextView) ((n37) jk8Var4).k.k;
        GlobalScheduleError.Companion.getClass();
        gv7 gv7Var = w14.a;
        final int i2 = 0;
        GlobalScheduleError globalScheduleError = (GlobalScheduleError) io4.j("GsonHelper", "fromPrefs", false, new xy3(), 12);
        final int i3 = 1;
        sz8.d0(textView, globalScheduleError != null && globalScheduleError.isValid());
        if (textView.getVisibility() == 0) {
            textView.setText(globalScheduleError != null ? globalScheduleError.toDisplayString() : null);
        }
        QuickRecyclerView quickRecyclerViewN = n();
        int i4 = QuickRecyclerView.c1;
        quickRecyclerViewN.setLinearLayoutManager(1);
        quickRecyclerViewN.setItemViewCacheSize(10);
        cf2 cf2Var = (cf2) quickRecyclerViewN.getItemAnimator();
        if (cf2Var != null) {
            cf2Var.g = false;
        }
        j57 j57VarO = o();
        j57VarO.n = new cz(this, 16);
        int i5 = 18;
        j57VarO.o = new u10(this, i5);
        j57VarO.p = new v10(this, i5);
        j57VarO.q = new px(this, i);
        j57VarO.r = new zs(this, i);
        quickRecyclerViewN.setAdapter(j57VarO);
        ey2 ey2VarJ = j();
        ey2VarJ.d.setImageResource(R.drawable.ic_clock);
        ey2VarJ.f.setText(R.string.scheduled_backups);
        ey2VarJ.e.setText(R.string.schedule_backup_summary);
        MaterialButton materialButton = ey2VarJ.b;
        materialButton.setIconResource(R.drawable.ic_check);
        materialButton.setText(R.string.turn_on_schedule);
        materialButton.setOnClickListener(new View.OnClickListener(this) { // from class: i37
            public final /* synthetic */ m37 b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Boolean boolValueOf;
                int i6 = i2;
                m37 m37Var = this.b;
                switch (i6) {
                    case 0:
                        m37Var.l().callOnClick();
                        break;
                    default:
                        if (!c47.d()) {
                            u45 u45Var = new u45(m37Var.i(), view2, 12);
                            fc5 fc5Var = (fc5) u45Var.c;
                            u45Var.f(R.menu.menu_new_schedule);
                            if (((n47) m37Var.p().f.d()) instanceof m47) {
                                g00 g00Var = g00.a;
                                if (!g00.r().hasSystemFeature("android.hardware.telephony")) {
                                    MenuItem menuItemFindItem = fc5Var.findItem(R.id.action_messages);
                                    MenuItem menuItemFindItem2 = fc5Var.findItem(R.id.action_call_logs);
                                    menuItemFindItem.setVisible(false);
                                    menuItemFindItem2.setVisible(false);
                                }
                                try {
                                    SwiftApp.Companion companion = SwiftApp.d;
                                    WallpaperManager wallpaperManager = WallpaperManager.getInstance(SwiftApp.Companion.c());
                                    boolValueOf = Boolean.valueOf(wallpaperManager != null && wallpaperManager.isWallpaperSupported());
                                } catch (Exception unused) {
                                    boolValueOf = null;
                                }
                                if (!(boolValueOf != null ? boolValueOf.booleanValue() : false)) {
                                    fc5Var.findItem(R.id.action_walls).setVisible(false);
                                }
                                mp6 mp6Var = mp6.a;
                                if (!mp6.f()) {
                                    MenuItem menuItemFindItem3 = fc5Var.findItem(R.id.action_by_config);
                                    menuItemFindItem3.setEnabled(false);
                                    CharSequence title = menuItemFindItem3.getTitle();
                                    menuItemFindItem3.setTitle(((Object) title) + " (" + m37Var.getString(R.string.root_access_needed) + ")");
                                }
                            }
                            u45Var.e = new gb(m37Var, 8);
                            u45Var.j();
                        } else {
                            c47.f(m37Var.i());
                        }
                        break;
                }
            }
        });
        jk8 jk8Var5 = this.b;
        jk8Var5.getClass();
        ((MaterialButton) ((n37) jk8Var5).k.b).setOnClickListener(new i00(this, 13));
        m().setOnBeforeExpand(new xq4(this, 11));
        m().setOnActionClick(new k37(1, this, m37.class, "addNewScheduleFromFabMenu", "addNewScheduleFromFabMenu(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V", 0));
        jk8 jk8Var6 = this.b;
        jk8Var6.getClass();
        ((n37) jk8Var6).b.setOnClickListener(new View.OnClickListener(this) { // from class: i37
            public final /* synthetic */ m37 b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Boolean boolValueOf;
                int i6 = i3;
                m37 m37Var = this.b;
                switch (i6) {
                    case 0:
                        m37Var.l().callOnClick();
                        break;
                    default:
                        if (!c47.d()) {
                            u45 u45Var = new u45(m37Var.i(), view2, 12);
                            fc5 fc5Var = (fc5) u45Var.c;
                            u45Var.f(R.menu.menu_new_schedule);
                            if (((n47) m37Var.p().f.d()) instanceof m47) {
                                g00 g00Var = g00.a;
                                if (!g00.r().hasSystemFeature("android.hardware.telephony")) {
                                    MenuItem menuItemFindItem = fc5Var.findItem(R.id.action_messages);
                                    MenuItem menuItemFindItem2 = fc5Var.findItem(R.id.action_call_logs);
                                    menuItemFindItem.setVisible(false);
                                    menuItemFindItem2.setVisible(false);
                                }
                                try {
                                    SwiftApp.Companion companion = SwiftApp.d;
                                    WallpaperManager wallpaperManager = WallpaperManager.getInstance(SwiftApp.Companion.c());
                                    boolValueOf = Boolean.valueOf(wallpaperManager != null && wallpaperManager.isWallpaperSupported());
                                } catch (Exception unused) {
                                    boolValueOf = null;
                                }
                                if (!(boolValueOf != null ? boolValueOf.booleanValue() : false)) {
                                    fc5Var.findItem(R.id.action_walls).setVisible(false);
                                }
                                mp6 mp6Var = mp6.a;
                                if (!mp6.f()) {
                                    MenuItem menuItemFindItem3 = fc5Var.findItem(R.id.action_by_config);
                                    menuItemFindItem3.setEnabled(false);
                                    CharSequence title = menuItemFindItem3.getTitle();
                                    menuItemFindItem3.setTitle(((Object) title) + " (" + m37Var.getString(R.string.root_access_needed) + ")");
                                }
                            }
                            u45Var.e = new gb(m37Var, 8);
                            u45Var.j();
                        } else {
                            c47.f(m37Var.i());
                        }
                        break;
                }
            }
        });
        SwiftApp.Companion companion = SwiftApp.d;
        int i6 = 2;
        SwiftApp.Companion.a().a.e(getViewLifecycleOwner(), new ne5(i6, new k3(this, 20)));
        p().f.e(getViewLifecycleOwner(), new ne5(i6, new nh1(1, this, m37.class, "onStateUpdate", "onStateUpdate(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleVM$State;)V", 0, 1)));
    }

    public final q47 p() {
        return (q47) this.c.getValue();
    }

    public final void q() {
        boolean z = false;
        if (!V.INSTANCE.getA()) {
            int i = PremiumActivity.V;
            rs9.u(i());
        } else if (!b67.d() || o37.a()) {
            AlarmReceiver alarmReceiver = p().e;
            alarmReceiver.getClass();
            if (o37.b()) {
                alarmReceiver.a();
            } else {
                alarmReceiver.c();
            }
        } else {
            dz5 dz5Var = dz5.a;
            dz5.o(i(), sz8.Y("android.permission.SCHEDULE_EXACT_ALARM"), false);
        }
        zn4.c(new h47(p(), z));
    }
}
