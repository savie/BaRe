package org.swiftapps.swiftbackup.settings;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.gv7;
import defpackage.il0;
import defpackage.io4;
import defpackage.ix0;
import defpackage.kn3;
import defpackage.mt4;
import defpackage.nc8;
import defpackage.ot4;
import defpackage.ov2;
import defpackage.qo0;
import defpackage.sz8;
import defpackage.u14;
import defpackage.x60;
import defpackage.z28;
import defpackage.z60;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LicensesActivity extends il0 {
    public static final /* synthetic */ int L = 0;
    public final gv7 K = new gv7(new u14(this, 3));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return null;
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.K;
        setContentView(((ot4) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((ot4) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        List list = (List) io4.j(r(), null, true, new kn3(this, 8), 10);
        if (list == null) {
            list = ov2.a;
        }
        RecyclerView recyclerView = ((ot4) gv7Var.getValue()).c;
        sz8.b(recyclerView, 7);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        mt4 mt4Var = new mt4(this);
        z60 z60Var = mt4Var.d;
        z28 z28Var = z60Var.a;
        int i = z60Var.g + 1;
        z60Var.g = i;
        List list2 = z60Var.e;
        if (list != list2) {
            if (list2 == null) {
                z60Var.e = list;
                z60Var.f = Collections.unmodifiableList(list);
                z28Var.n(0, list.size());
                z60Var.a();
            } else {
                ((Executor) z60Var.b.a).execute(new x60(z60Var, list2, list, i));
            }
        }
        recyclerView.setAdapter(mt4Var);
    }
}
