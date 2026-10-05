package org.swiftapps.swiftbackup.messagescalls.backuprestore;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.provider.Telephony;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import defpackage.aj0;
import defpackage.as4;
import defpackage.b67;
import defpackage.be5;
import defpackage.bt3;
import defpackage.c6;
import defpackage.c7;
import defpackage.cz4;
import defpackage.d7;
import defpackage.ej;
import defpackage.ex6;
import defpackage.f11;
import defpackage.ff5;
import defpackage.gv7;
import defpackage.h00;
import defpackage.hv1;
import defpackage.hx0;
import defpackage.kn3;
import defpackage.l90;
import defpackage.lf;
import defpackage.li7;
import defpackage.lm;
import defpackage.mo3;
import defpackage.nc8;
import defpackage.nh;
import defpackage.ns;
import defpackage.o30;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.pr4;
import defpackage.q63;
import defpackage.ra;
import defpackage.rs;
import defpackage.s35;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.u14;
import defpackage.ud5;
import defpackage.uq1;
import defpackage.vr6;
import defpackage.w10;
import defpackage.w20;
import defpackage.wd5;
import defpackage.xq4;
import defpackage.xs1;
import defpackage.yy7;
import defpackage.z20;
import defpackage.zn4;
import defpackage.zx2;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MessagesBackupRestoreActivity extends sa1 {
    public static final /* synthetic */ int c0 = 0;
    public final l90 P;
    public final gv7 Q;
    public final gv7 S;
    public be5 T;
    public MenuItem V;
    public final gv7 W;
    public final gv7 Y;
    public final gv7 b0;
    public final gv7 R = new gv7(new u14(this, 6));
    public final gv7 U = new gv7(new mo3(this, 8));
    public final gv7 X = new gv7(new as4(this, 2));
    public final gv7 Z = new gv7(new lf(this, 28));
    public final gv7 a0 = new gv7(new ej(this, 29));

    public MessagesBackupRestoreActivity() {
        int i = 11;
        this.P = new l90(ph6.a(f.class), new z20(this, i), new ns(this, 14), new o30(this, 8));
        final int i2 = 1;
        this.Q = new gv7(new bt3(this) { // from class: xd5
            public final /* synthetic */ MessagesBackupRestoreActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = MessagesBackupRestoreActivity.c0;
                        return new aj0(messagesBackupRestoreActivity, 2);
                    default:
                        int i5 = MessagesBackupRestoreActivity.c0;
                        return li7.a(messagesBackupRestoreActivity.getLayoutInflater());
                }
            }
        });
        this.S = new gv7(new kn3(this, i));
        int i3 = 3;
        this.W = new gv7(new xq4(this, i3));
        this.Y = new gv7(new pr4(this, i3));
        final int i4 = 0;
        this.b0 = new gv7(new bt3(this) { // from class: xd5
            public final /* synthetic */ MessagesBackupRestoreActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = MessagesBackupRestoreActivity.c0;
                        return new aj0(messagesBackupRestoreActivity, 2);
                    default:
                        int i7 = MessagesBackupRestoreActivity.c0;
                        return li7.a(messagesBackupRestoreActivity.getLayoutInflater());
                }
            }
        });
    }

    public static void U(MessagesBackupRestoreActivity messagesBackupRestoreActivity, boolean z) {
        be5 be5Var = messagesBackupRestoreActivity.T;
        if (be5Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        if (be5Var.l().isEmpty()) {
            Const.L();
            return;
        }
        if (!z) {
            ((aj0) messagesBackupRestoreActivity.b0.getValue()).a(new nh(messagesBackupRestoreActivity, 9));
            return;
        }
        if (ud5.j()) {
            messagesBackupRestoreActivity.d0();
            return;
        }
        if (!b67.b()) {
            String packageName = messagesBackupRestoreActivity.getPackageName();
            packageName.getClass();
            messagesBackupRestoreActivity.e0(packageName, false);
        } else {
            if (!ud5.h().isRoleAvailable("android.app.role.SMS")) {
                vr6.e$default(vr6.INSTANCE, messagesBackupRestoreActivity.r(), "requestDefaultSmsAppQ: Role not available!", null, 4, null);
                return;
            }
            Intent intentCreateRequestRoleIntent = ud5.h().createRequestRoleIntent("android.app.role.SMS");
            intentCreateRequestRoleIntent.getClass();
            messagesBackupRestoreActivity.startActivityForResult(intentCreateRequestRoleIntent, 12458);
        }
    }

    public final void V(boolean z, View... viewArr) {
        int i = z ? 0 : 8;
        for (View view : viewArr) {
            if (view instanceof SwipeRefreshLayout) {
                synchronized (this) {
                    zn4 zn4Var = zn4.a;
                    zn4.f(z ? 0L : 1500L, new w10(this, z, 2));
                }
            } else {
                view.setVisibility(i);
            }
        }
    }

    public final ExtendedFloatingActionButton W() {
        return (ExtendedFloatingActionButton) this.U.getValue();
    }

    public final zx2 X() {
        return (zx2) this.W.getValue();
    }

    public final SwipeRefreshLayout Y() {
        return (SwipeRefreshLayout) this.R.getValue();
    }

    public final RecyclerView Z() {
        return (RecyclerView) this.S.getValue();
    }

    public final li7 a0() {
        return (li7) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final f V() {
        return (f) this.P.getValue();
    }

    public final void c0(boolean z) {
        MenuItem menuItem = this.V;
        if (menuItem == null) {
            pe4.F("checkboxSelectAll");
            throw null;
        }
        menuItem.setChecked(z);
        Drawable drawableW = Const.w(this, z ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline, sz8.z(this));
        MenuItem menuItem2 = this.V;
        if (menuItem2 != null) {
            menuItem2.setIcon(drawableW);
        } else {
            pe4.F("checkboxSelectAll");
            throw null;
        }
    }

    public final void d0() {
        if (this.T != null) {
            f fVarU = U();
            be5 be5Var = this.T;
            if (be5Var == null) {
                pe4.F("mAdapter");
                throw null;
            }
            List listL = be5Var.l();
            if (listL.isEmpty()) {
                Const.L();
            } else {
                fVarU.c(ff5.class, new ff5(listL, yy7.e));
            }
        }
    }

    public final void e0(String str, boolean z) {
        try {
            Intent intent = new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT");
            intent.putExtra("package", str);
            startActivityForResult(intent, z ? 54789 : 12458);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, r(), "requestDefaultSmsAppLegacy", e, null, 8, null);
        }
    }

    public final void f0() {
        String string = null;
        int i = 1;
        if (b67.b()) {
            s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
            s35Var.v(R.string.warning);
            s35Var.n(R.string.reset_sms_app_warning_q);
            ((ra) s35Var.b).m = false;
            s35Var.s(R.string.change_sms_app, new wd5(this, i));
            s35Var.m();
            return;
        }
        gv7 gv7Var = ud5.a;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("KEY_DEF_SMS_PACKAGE", null);
            if (string == null || string.length() == 0) {
                return;
            }
            try {
                getPackageManager().getPackageInfo(string, 0);
                e0(string, true);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (ClassCastException unused2) {
        }
    }

    @Override // defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        int i3 = 0;
        if (i == 12458) {
            if (ud5.j()) {
                d0();
            } else {
                s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.note);
                s35Var.n(R.string.default_sms_app_rationale);
                s35Var.s(R.string.got_it, null);
                if (b67.b()) {
                    s35Var.r(R.string.change_sms_app, new wd5(this, i3));
                }
                s35Var.m();
            }
        }
        if (i == 54789) {
            if (!ud5.j()) {
                finish();
            } else if (b67.b()) {
                f0();
            } else {
                s35 s35Var2 = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
                s35Var2.v(R.string.warning);
                s35Var2.n(R.string.reset_sms_app_warning);
                ((ra) s35Var2.b).m = false;
                s35Var2.s(R.string.change_sms_app, new uq1(this, 3));
                s35Var2.m();
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(a0().a);
        sz8.f0(W(), Z(), true);
        f fVarU = U();
        String stringExtra = getIntent().getStringExtra("EXTRA_BACKUP_FILE_PATH");
        if (!fVarU.e) {
            hx0.b.i(fVarU);
            fVarU.e = true;
            fVarU.f = stringExtra;
            if (stringExtra != null && stringExtra.length() != 0) {
                String str = fVarU.f;
                if (str == null || str.length() == 0) {
                    c6.f(xs1.j("Invalid filePath = ", str));
                    return;
                } else if (new q63(str, 1).j()) {
                    fVarU.g = true;
                }
            }
            if (fVarU.g) {
                String str2 = fVarU.f;
                if (str2 == null) {
                    c6.f("Required value was null.");
                    return;
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new g(fVarU, str2, null));
                }
            } else {
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new h(fVarU, null));
            }
        }
        gv7 gv7Var = ud5.a;
        SwiftApp.Companion companion = SwiftApp.d;
        String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(SwiftApp.Companion.c());
        if (defaultSmsPackage != null && defaultSmsPackage.length() != 0) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            if (!defaultSmsPackage.equals(SwiftApp.Companion.c().getPackageName())) {
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putString("KEY_DEF_SMS_PACKAGE", defaultSmsPackage).apply();
            }
        }
        setSupportActionBar((Toolbar) a0().f.c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_select_all, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_select_all);
        menuItemFindItem.getClass();
        this.V = menuItemFindItem;
        c0(false);
        final boolean z = U().g;
        ((CheckedTextView) a0().f.f).setText(z ? R.string.restore_messages : R.string.backup_messages);
        ((TextView) a0().f.e).setText(getString(R.string.loading));
        ((ConstraintLayout) a0().f.d).setOnClickListener(new h00(this, 7));
        W().setText(z ? R.string.restore : R.string.backup_options);
        W().setIconResource(z ? R.drawable.ic_restore : R.drawable.ic_edit_pencil);
        Y().setEnabled(false);
        Const.H(Y(), v());
        Z().setLayoutManager(new SpeedyLinearLayoutManager(this));
        sz8.b(Z(), 7);
        Z().setHasFixedSize(true);
        be5 be5Var = new be5((TextView) a0().f.e);
        be5Var.g = new rs(this, 6);
        this.T = be5Var;
        RecyclerView recyclerViewZ = Z();
        be5 be5Var2 = this.T;
        if (be5Var2 == null) {
            pe4.F("mAdapter");
            throw null;
        }
        recyclerViewZ.setAdapter(be5Var2);
        W().setOnClickListener(new View.OnClickListener() { // from class: yd5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessagesBackupRestoreActivity.U(this.a, z);
            }
        });
        int i = 2;
        U().i.e(this, new f11(i, new lm(this, 15)));
        U().j.e(this, new f11(i, new w20(this, 17)));
        U().k.e(this, new f11(i, new c7(this, 20)));
        U().l.e(this, new f11(i, new d7(this, 18)));
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == R.id.action_select_all) {
            be5 be5Var = this.T;
            if (be5Var == null) {
                pe4.F("mAdapter");
                throw null;
            }
            if (be5Var.e.a.isEmpty()) {
                Const.L();
            } else {
                menuItem.setChecked(!menuItem.isChecked());
                be5 be5Var2 = this.T;
                if (be5Var2 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                be5Var2.s(menuItem.isChecked());
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        if (this.T != null) {
            ex6 ex6Var = U().k;
            be5 be5Var = this.T;
            if (be5Var != null) {
                ex6Var.k(be5Var.e);
            } else {
                pe4.F("mAdapter");
                throw null;
            }
        }
    }
}
