package org.swiftapps.swiftbackup.premium;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import defpackage.ai8;
import defpackage.as4;
import defpackage.b7;
import defpackage.bb4;
import defpackage.c56;
import defpackage.cz;
import defpackage.d45;
import defpackage.el1;
import defpackage.fl1;
import defpackage.fm7;
import defpackage.gv7;
import defpackage.h00;
import defpackage.hs4;
import defpackage.hv1;
import defpackage.il0;
import defpackage.io4;
import defpackage.j56;
import defpackage.l90;
import defpackage.ms;
import defpackage.n56;
import defpackage.nc8;
import defpackage.ns;
import defpackage.oh1;
import defpackage.p56;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.qb5;
import defpackage.qo0;
import defpackage.ra;
import defpackage.s35;
import defpackage.sz8;
import defpackage.tj3;
import defpackage.to5;
import defpackage.tq0;
import defpackage.vr6;
import defpackage.w20;
import defpackage.wa;
import defpackage.wq0;
import defpackage.xa4;
import defpackage.xq4;
import defpackage.y20;
import defpackage.yi5;
import defpackage.z20;
import defpackage.zd1;
import defpackage.zf1;
import defpackage.zn4;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class PremiumActivity extends il0 {
    public static final /* synthetic */ int V = 0;
    public final gv7 O;
    public final gv7 P;
    public wa S;
    public boolean T;
    public String U;
    public final l90 K = new l90(ph6.a(p56.class), new ns(this, 17), new ms(this, 16), new z20(this, 15));
    public final gv7 L = new gv7(new xq4(this, 8));
    public final gv7 M = new gv7(new as4(this, 9));
    public final gv7 N = new gv7(new b7(this, 25));
    public final gv7 Q = new gv7(new hs4(this, 7));
    public final gv7 R = new gv7(new qb5(this, 5));

    public PremiumActivity() {
        int i = 3;
        this.O = new gv7(new yi5(this, i));
        this.P = new gv7(new to5(this, i));
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 U() {
        return (p56) this.K.getValue();
    }

    public final MaterialButton N() {
        return (MaterialButton) this.Q.getValue();
    }

    public final ProgressBar O() {
        Object value = this.P.getValue();
        value.getClass();
        return (ProgressBar) value;
    }

    public final RecyclerView P() {
        return (RecyclerView) this.M.getValue();
    }

    public final bb4 Q() {
        return (bb4) this.N.getValue();
    }

    public final c56 R() {
        return (c56) this.L.getValue();
    }

    public final void S(String str) {
        if (isFinishing()) {
            return;
        }
        s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
        ra raVar = (ra) s35Var.b;
        raVar.m = false;
        raVar.f = str;
        s35Var.s(R.string.close, new DialogInterface.OnClickListener() { // from class: a56
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int i2 = PremiumActivity.V;
                this.a.finish();
            }
        });
        this.S = s35Var.m();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0063  */
    public final void T(boolean z) {
        boolean z2;
        Object next;
        int i;
        if (!z || this.T) {
            z2 = false;
        } else {
            Iterator it = Q().e.a.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((xa4) next).isPurchased());
            xa4 xa4Var = (xa4) next;
            if (xa4Var == null) {
                z2 = false;
            } else {
                R().t.setText(xa4Var.getDisplayTitle(this));
                TextView textView = R().r;
                if (xa4Var.isPending()) {
                    i = R.string.pending_payment;
                } else {
                    i = xa4Var.isLifetime() ? R.string.purchased : R.string.subscribed;
                }
                String string = getString(i);
                string.getClass();
                textView.setText(string);
                z2 = true;
            }
        }
        R().e.setVisibility(z2 ? 0 : 8);
        R().f.setVisibility(!z2 ? 0 : 8);
        P().setVisibility(z2 ? 8 : 0);
        if (z2) {
            N().setVisibility(8);
        } else {
            V(Q().y());
        }
    }

    public final void U(boolean z) {
        ((Toolbar) R().q.c).setTitleTextColor(z ? sz8.x(this) : sz8.z(this));
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.e0(z ? R.string.premium_user_msg : R.string.upgrade_to_premium);
        }
    }

    public final void V(xa4 xa4Var) {
        if (xa4Var == null) {
            N().setVisibility(8);
            return;
        }
        N().setVisibility(0);
        N().setText(xa4Var.getActionButtonText(this));
        N().setEnabled(xa4Var.isEnabled());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R().a);
        int i = 1;
        this.T = bundle != null && bundle.getBoolean("premium_plans_expanded", false);
        this.U = bundle != null ? bundle.getString("selected_plan_id") : null;
        if (!ai8.i(this)) {
            String string = getString(R.string.no_internet_connection_summary);
            string.getClass();
            S(string);
            return;
        }
        setSupportActionBar((Toolbar) R().q.c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(true);
        }
        B();
        U(V.INSTANCE.getA());
        sz8.b(R().d, 7);
        RecyclerView recyclerView = (RecyclerView) this.O.getValue();
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        n56 n56Var = new n56();
        String string2 = getString(R.string.cloud_backup_for_apps);
        string2.getClass();
        j56 j56Var = new j56(R.drawable.ic_cloud, string2, getString(R.string.premium_feature_cloud_backup_description), (String) null, new w20(this, 20), 24);
        String string3 = getString(R.string.scheduled_backups);
        string3.getClass();
        j56 j56Var2 = new j56(R.drawable.ic_clock, string3, getString(R.string.premium_feature_schedules_description), (String) null, (w20) null, 56);
        String string4 = getString(R.string.premium_feature_backup_history_title);
        string4.getClass();
        j56 j56Var3 = new j56(R.drawable.ic_multiple_backups, string4, getString(R.string.premium_feature_backup_history_description), (String) (0 == true ? 1 : 0), (w20) null, 56);
        String string5 = getString(R.string.app_labels);
        string5.getClass();
        j56 j56Var4 = new j56(R.drawable.ic_label_outline, string5, getString(R.string.premium_feature_app_labels_description), (String) (0 == true ? 1 : 0), (w20) null, 56);
        String string6 = getString(R.string.custom_configurations);
        string6.getClass();
        n56Var.w(new fm7(fl1.A0(j56Var, j56Var2, j56Var3, j56Var4, new j56(R.drawable.ic_configs, string6, getString(R.string.premium_feature_custom_configurations_description), getString(R.string.for_advanced_rooted_users), (w20) null, 32)), (Set) null, false, (String) null, 30), false);
        recyclerView.setAdapter(n56Var);
        RecyclerView recyclerViewP = P();
        recyclerViewP.setItemAnimator(null);
        recyclerViewP.setLayoutManager(new PreCachingLinearLayoutManager(this));
        bb4 bb4VarQ = Q();
        bb4VarQ.j = new tj3(this, i);
        recyclerViewP.setAdapter(bb4VarQ);
        N().setOnClickListener(new zf1(this, 6));
        R().e.setOnClickListener(new h00(this, 9));
        int i2 = 0;
        int i3 = 5;
        wq0.c.e(this, new y20(i3, new oh1(1, this, PremiumActivity.class, "onNewState", "onNewState(Lorg/swiftapps/swiftbackup/premium/BillingManager$ViewState;)V", i2, 7)));
        wq0.d.e(this, new y20(i3, new zd1(1, this, PremiumActivity.class, "startPurchaseFlow", "startPurchaseFlow(Lcom/android/billingclient/api/ProductDetails;)V", i2, 2)));
        wq0.e.e(this, new y20(i3, new cz(this, 13)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        Boolean boolValueOf = null;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
            }
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            return false;
        }
        if (!V.INSTANCE.getA()) {
            getMenuInflater().inflate(R.menu.menu_premium, menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_restore_purchases) {
            if (!Const.d(this)) {
                return false;
            }
            wq0 wq0Var = wq0.a;
            p56 p56Var = (p56) this.K.getValue();
            zn4 zn4Var = zn4.a;
            zn4.b(null, new tq0(p56Var, null));
        } else if (itemId == R.id.action_already_paid) {
            try {
                ai8.k(this, "https://swiftapps.org/issues#nopremium");
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, r(), "onOptionsItemSelected: ".concat(io4.b(e)), null, 4, null);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putBoolean("premium_plans_expanded", this.T);
        String str = (String) el1.T0(Q().e.b);
        if (str == null) {
            str = this.U;
        }
        bundle.putString("selected_plan_id", str);
        super.onSaveInstanceState(bundle);
    }
}
