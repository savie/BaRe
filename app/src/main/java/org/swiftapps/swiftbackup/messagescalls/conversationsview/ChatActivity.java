package org.swiftapps.swiftbackup.messagescalls.conversationsview;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.d76;
import defpackage.ex6;
import defpackage.f20;
import defpackage.gv7;
import defpackage.i51;
import defpackage.il0;
import defpackage.ix0;
import defpackage.j51;
import defpackage.jv1;
import defpackage.k51;
import defpackage.kf;
import defpackage.l90;
import defpackage.lf;
import defpackage.ls;
import defpackage.nc8;
import defpackage.o51;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.q51;
import defpackage.qv1;
import defpackage.r51;
import defpackage.sz8;
import defpackage.zn4;
import defpackage.zs;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatActivity extends il0 {
    public static final /* synthetic */ int O = 0;
    public final l90 K = new l90(ph6.a(r51.class), new f20(this, 1), new j51(this, 0), new ls(this, 3));
    public final gv7 L = new gv7(new d76(this, 10));
    public final gv7 M = new gv7(new kf(this, 13));
    public final gv7 N = new gv7(new lf(this, 11));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final r51 V() {
        return (r51) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        finish();
        gv7 gv7Var = this.L;
        setContentView(((k51) gv7Var.getValue()).a);
        Intent intent = getIntent();
        jv1 jv1Var = null;
        qv1 qv1Var = (qv1) (intent != null ? intent.getParcelableExtra("extra_conversation") : null);
        if (qv1Var == null) {
            finish();
            return;
        }
        r51 r51VarU = U();
        r51VarU.e = qv1Var;
        zn4 zn4Var = zn4.a;
        zn4.b(null, new q51(qv1Var, r51VarU, jv1Var, 0));
        setSupportActionBar((Toolbar) ((ix0) ((k51) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            qv1 qv1Var2 = U().e;
            if (qv1Var2 == null) {
                pe4.F("conversationItem");
                throw null;
            }
            supportActionBar.f0(qv1Var2.getDisplayName());
        }
        RecyclerView recyclerView = (RecyclerView) this.M.getValue();
        sz8.b(recyclerView, 7);
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        recyclerView.setAdapter((o51) this.N.getValue());
        U().f.e(this, new i51(0, new zs(this, 3)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_chat, menu);
        menu.findItem(R.id.action_debug_view).setVisible(false);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == R.id.action_debug_view) {
            ex6 ex6Var = U().f;
            ex6Var.l(ex6Var.d());
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
