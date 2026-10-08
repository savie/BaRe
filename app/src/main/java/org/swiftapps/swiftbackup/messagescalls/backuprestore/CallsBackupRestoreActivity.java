package org.swiftapps.swiftbackup.messagescalls.backuprestore;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
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
import defpackage.ah;
import defpackage.ak;
import defpackage.bk;
import defpackage.bt3;
import defpackage.c6;
import defpackage.dj;
import defpackage.ek;
import defpackage.ex6;
import defpackage.gj;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.h01;
import defpackage.hx0;
import defpackage.j01;
import defpackage.l90;
import defpackage.li7;
import defpackage.m01;
import defpackage.nc8;
import defpackage.ox;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.q63;
import defpackage.rb;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.uf;
import defpackage.vf;
import defpackage.w20;
import defpackage.xs1;
import defpackage.zn4;
import defpackage.zx2;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.b;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CallsBackupRestoreActivity extends sa1 {
    public static final /* synthetic */ int c0 = 0;
    public final l90 P;
    public m01 T;
    public final gv7 U;
    public MenuItem V;
    public final gv7 W;
    public final gv7 X;
    public final gv7 Y;
    public final gv7 Q = new gv7(new gj(this, 12));
    public final gv7 R = new gv7(new ak(this, 7));
    public final gv7 S = new gv7(new bk(this, 8));
    public final gv7 Z = new gv7(new ek(this, 11));
    public final gv7 a0 = new gv7(new ah(this, 11));
    public final rb b0 = new rb(this, 7);

    public CallsBackupRestoreActivity() {
        final int i = 1;
        this.P = new l90(ph6.a(b.class), new uf(this, 3), new gl0(this, 2), new vf(this, i));
        this.U = new gv7(new bt3(this) { // from class: e01
            public final /* synthetic */ CallsBackupRestoreActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                CallsBackupRestoreActivity callsBackupRestoreActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.W().e;
                    default:
                        int i4 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.Z().b;
                }
            }
        });
        this.W = new gv7(new bt3(this) { // from class: f01
            public final /* synthetic */ CallsBackupRestoreActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                CallsBackupRestoreActivity callsBackupRestoreActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.W().d;
                    default:
                        int i4 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.Z().c;
                }
            }
        });
        final int i2 = 0;
        this.X = new gv7(new bt3(this) { // from class: e01
            public final /* synthetic */ CallsBackupRestoreActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                CallsBackupRestoreActivity callsBackupRestoreActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.W().e;
                    default:
                        int i5 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.Z().b;
                }
            }
        });
        this.Y = new gv7(new bt3(this) { // from class: f01
            public final /* synthetic */ CallsBackupRestoreActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                CallsBackupRestoreActivity callsBackupRestoreActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.W().d;
                    default:
                        int i5 = CallsBackupRestoreActivity.c0;
                        return callsBackupRestoreActivity.Z().c;
                }
            }
        });
    }

    public final void U(final boolean z, View... viewArr) {
        int i = z ? 0 : 8;
        for (View view : viewArr) {
            if (view instanceof SwipeRefreshLayout) {
                synchronized (this) {
                    zn4 zn4Var = zn4.a;
                    zn4.f(z ? 0L : 1500L, new bt3() { // from class: g01
                        @Override // defpackage.bt3
                        public final Object invoke() {
                            int i2 = CallsBackupRestoreActivity.c0;
                            CallsBackupRestoreActivity callsBackupRestoreActivity = this.a;
                            if (!callsBackupRestoreActivity.isFinishing()) {
                                callsBackupRestoreActivity.X().setRefreshing(z);
                            }
                            return be8.a;
                        }
                    });
                }
            } else {
                view.setVisibility(i);
            }
        }
    }

    public final ExtendedFloatingActionButton V() {
        return (ExtendedFloatingActionButton) this.U.getValue();
    }

    public final zx2 W() {
        return (zx2) this.W.getValue();
    }

    public final SwipeRefreshLayout X() {
        return (SwipeRefreshLayout) this.R.getValue();
    }

    public final RecyclerView Y() {
        return (RecyclerView) this.S.getValue();
    }

    public final li7 Z() {
        return (li7) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final b V() {
        return (b) this.P.getValue();
    }

    public final void b0(boolean z) {
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

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(Z().a);
        sz8.f0(V(), Y(), true);
        b bVarV = V();
        String stringExtra = getIntent().getStringExtra("EXTRA_BACKUP_FILE_PATH");
        if (!bVarV.e) {
            bVarV.e = true;
            hx0.b.i(bVarV);
            bVarV.f = stringExtra;
            if (stringExtra != null && stringExtra.length() != 0) {
                String str = bVarV.f;
                if (str == null || str.length() == 0) {
                    c6.f(xs1.j("Invalid filePath = ", str));
                    return;
                } else if (new q63(str, 1).j()) {
                    bVarV.g = true;
                }
            }
            if (bVarV.g) {
                String str2 = bVarV.f;
                if (str2 == null) {
                    c6.f("Required value was null.");
                    return;
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new c(bVarV, str2, null));
                }
            } else {
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new d(bVarV, null));
            }
        }
        setSupportActionBar((Toolbar) Z().f.c);
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
        int i = 0;
        b0(false);
        final boolean z = V().g;
        ((CheckedTextView) Z().f.f).setText(z ? R.string.restore_call_logs : R.string.backup_call_logs);
        ((TextView) Z().f.e).setText(getString(R.string.loading));
        int i2 = 2;
        ((ConstraintLayout) Z().f.d).setOnClickListener(new dj(this, i2));
        V().setText(z ? R.string.restore : R.string.backup_options);
        V().setIconResource(z ? R.drawable.ic_restore : R.drawable.ic_edit_pencil);
        X().setEnabled(false);
        Const.H(X(), v());
        Y().setLayoutManager(new SpeedyLinearLayoutManager(this));
        sz8.b(Y(), 7);
        Y().setHasFixedSize(true);
        m01 m01Var = new m01((TextView) Z().f.e);
        m01Var.g = new h01(this, i);
        this.T = m01Var;
        RecyclerView recyclerViewY = Y();
        m01 m01Var2 = this.T;
        if (m01Var2 == null) {
            pe4.F("mAdapter");
            throw null;
        }
        recyclerViewY.setAdapter(m01Var2);
        V().setOnClickListener(new View.OnClickListener() { // from class: i01
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallsBackupRestoreActivity callsBackupRestoreActivity = this.a;
                m01 m01Var3 = callsBackupRestoreActivity.T;
                if (m01Var3 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (m01Var3.l().isEmpty()) {
                    Const.L();
                    return;
                }
                if (!z) {
                    ((aj0) callsBackupRestoreActivity.a0.getValue()).a(callsBackupRestoreActivity.b0);
                    return;
                }
                b bVarV = callsBackupRestoreActivity.V();
                m01 m01Var4 = callsBackupRestoreActivity.T;
                if (m01Var4 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                List listL = m01Var4.l();
                if (listL.isEmpty()) {
                    Const.L();
                } else {
                    bVarV.c(z11.class, new z11(listL, yy7.e));
                }
            }
        });
        V().h.e(this, new j01(i, new ox(this, 5)));
        V().i.e(this, new j01(i, new w20(this, i2)));
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == R.id.action_select_all) {
            m01 m01Var = this.T;
            if (m01Var == null) {
                pe4.F("mAdapter");
                throw null;
            }
            if (m01Var.e.a.isEmpty()) {
                Const.L();
            } else {
                menuItem.setChecked(!menuItem.isChecked());
                m01 m01Var2 = this.T;
                if (m01Var2 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                m01Var2.s(menuItem.isChecked());
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        if (this.T != null) {
            ex6 ex6Var = V().i;
            m01 m01Var = this.T;
            if (m01Var != null) {
                ex6Var.k(m01Var.e);
            } else {
                pe4.F("mAdapter");
                throw null;
            }
        }
    }
}
