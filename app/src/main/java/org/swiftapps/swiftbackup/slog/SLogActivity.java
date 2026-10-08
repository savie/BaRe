package org.swiftapps.swiftbackup.slog;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.l4digital.fastscroll.FastScroller;
import defpackage.bs6;
import defpackage.cs6;
import defpackage.cv;
import defpackage.f20;
import defpackage.gv7;
import defpackage.hv1;
import defpackage.i51;
import defpackage.il0;
import defpackage.iq1;
import defpackage.jv1;
import defpackage.kn3;
import defpackage.l90;
import defpackage.ls;
import defpackage.mm;
import defpackage.mo3;
import defpackage.ms;
import defpackage.n55;
import defpackage.nc8;
import defpackage.no5;
import defpackage.ph6;
import defpackage.qb5;
import defpackage.ra;
import defpackage.s35;
import defpackage.sz8;
import defpackage.tf2;
import defpackage.th7;
import defpackage.u01;
import defpackage.u14;
import defpackage.zn4;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class SLogActivity extends il0 {
    public static final /* synthetic */ int R = 0;
    public final l90 K = new l90(ph6.a(cs6.class), new ls(this, 12), new f20(this, 10), new ms(this, 17));
    public final gv7 L = new gv7(new no5(this, 1));
    public final gv7 M = new gv7(new qb5(this, 6));
    public final gv7 N = new gv7(new n55(this, 4));
    public final gv7 O = new gv7(new u14(this, 7));
    public final gv7 P = new gv7(new kn3(this, 14));
    public final gv7 Q = new gv7(new mo3(this, 11));

    @Override // defpackage.il0
    public final boolean D() {
        return false;
    }

    public final RecyclerView N() {
        return (RecyclerView) this.M.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final cs6 V() {
        return (cs6) this.K.getValue();
    }

    public final void P(String str) {
        str.getClass();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{"support@swiftapps.org"});
        intent.putExtra("android.intent.extra.SUBJECT", "SwiftLogger Logs (text only)");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setType("text/plain");
        List<ResolveInfo> listQueryIntentActivities = getPackageManager().queryIntentActivities(intent, 65536);
        listQueryIntentActivities.getClass();
        if (!listQueryIntentActivities.isEmpty()) {
            startActivity(Intent.createChooser(intent, getString(R.string.share_logs)));
        } else {
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, this, "No app found to handle this action"));
        }
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.L;
        setContentView(((th7) gv7Var.getValue()).a);
        tf2 tf2Var = ((th7) gv7Var.getValue()).e;
        Toolbar toolbar = (Toolbar) tf2Var.c;
        setSupportActionBar(toolbar);
        nc8 supportActionBar = getSupportActionBar();
        final int i = 1;
        final int i2 = 0;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
        ((CheckedTextView) tf2Var.f).setText(R.string.swiftlogger);
        TextView textView = (TextView) tf2Var.e;
        textView.setText(R.string.swiftlogger_info);
        textView.setTextSize(0, textView.getResources().getDimension(R.dimen.subtitle_smaller));
        toolbar.setOnClickListener(new View.OnClickListener(this) { // from class: wr6
            public final /* synthetic */ SLogActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i2;
                SLogActivity sLogActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = SLogActivity.R;
                        sLogActivity.N().i0(0);
                        break;
                    default:
                        gv7 gv7Var2 = sLogActivity.Q;
                        int i5 = SLogActivity.R;
                        et7 et7Var = (mp6.d(mp6.a, false, true, 1) || mp6.f()) ? new et7(R.string.share_swiftlogger_archive_with_device_logcat, true) : new et7(R.string.swiftlogger, false);
                        ((uh7) ((u35) gv7Var2.getValue()).K).c.setText(et7Var.a);
                        ((uh7) ((u35) gv7Var2.getValue()).K).b.setOnClickListener(new er(4, sLogActivity, et7Var));
                        ((u35) gv7Var2.getValue()).show();
                        break;
                }
            }
        });
        sz8.b(N(), 7);
        N().setLayoutManager(new SpeedyLinearLayoutManager(this));
        N().setItemViewCacheSize(10);
        RecyclerView recyclerViewN = N();
        gv7 gv7Var2 = this.O;
        recyclerViewN.setAdapter((bs6) gv7Var2.getValue());
        FastScroller fastScroller = (FastScroller) this.N.getValue();
        fastScroller.setSectionIndexer((bs6) gv7Var2.getValue());
        fastScroller.setBubbleTextSize(32);
        fastScroller.d(N());
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.P.getValue();
        sz8.W(extendedFloatingActionButton);
        extendedFloatingActionButton.setOnClickListener(new View.OnClickListener(this) { // from class: wr6
            public final /* synthetic */ SLogActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i;
                SLogActivity sLogActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = SLogActivity.R;
                        sLogActivity.N().i0(0);
                        break;
                    default:
                        gv7 gv7Var3 = sLogActivity.Q;
                        int i5 = SLogActivity.R;
                        et7 et7Var = (mp6.d(mp6.a, false, true, 1) || mp6.f()) ? new et7(R.string.share_swiftlogger_archive_with_device_logcat, true) : new et7(R.string.swiftlogger, false);
                        ((uh7) ((u35) gv7Var3.getValue()).K).c.setText(et7Var.a);
                        ((uh7) ((u35) gv7Var3.getValue()).K).b.setOnClickListener(new er(4, sLogActivity, et7Var));
                        ((u35) gv7Var3.getValue()).show();
                        break;
                }
            }
        });
        a0().e.e(this, new i51(i, new mm(4, this, bundle)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_slog, menu);
        menu.findItem(R.id.action_show_unfiltered).setVisible(false);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        ((FastScroller) this.N.getValue()).e();
        super.onDestroy();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        jv1 jv1Var = null;
        if (itemId == R.id.action_clear_slog) {
            s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
            ((ra) s35Var.b).d = getString(R.string.clear_logs);
            s35Var.n(R.string.sure_to_proceed);
            s35Var.s(R.string.yes, new iq1(this, 5));
            s35Var.q(R.string.cancel, null);
            s35Var.m();
        } else if (itemId == R.id.action_show_unfiltered) {
            a0().f = !a0().f;
            menuItem.setChecked(a0().f);
            cs6 cs6VarA0 = a0();
            zn4 zn4Var = zn4.a;
            zn4.b(null, new u01(cs6VarA0, jv1Var, 3));
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.getClass();
        return super.onPrepareOptionsMenu(menu);
    }
}
