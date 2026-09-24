package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dt extends er6 {
    public bt X;
    public boolean Y;
    public sc3 Z;
    public final gv7 a0 = new gv7(new ak(this, 3));
    public final gv7 b0 = new gv7(new bk(this, 3));
    public final gv7 c0 = new gv7(new ck(this, 3));

    public final bt Y() {
        bt btVar = this.X;
        if (btVar != null) {
            return btVar;
        }
        pe4.F("mCurrentSection");
        throw null;
    }

    public final w45 Z() {
        return (w45) this.c0.getValue();
    }

    public abstract et a0();

    public final boolean b0() {
        return Y().isCloudSection();
    }

    public abstract void c0();

    public final void d0(ViewGroup viewGroup) {
        viewGroup.getClass();
        gv7 gv7Var = this.a0;
        Object value = gv7Var.getValue();
        value.getClass();
        ((QuickRecyclerView) value).setLinearLayoutManager(0);
        Object value2 = gv7Var.getValue();
        value2.getClass();
        ((QuickRecyclerView) value2).setAdapter((k10) this.b0.getValue());
        a0().f.e(this, new js(1, new xs(0, this, viewGroup)));
    }

    public final void f0(q05 q05Var) {
        q05Var.getClass();
        int i = ct.a[q05Var.ordinal()];
        bt btVar = null;
        if (i != 1) {
            if (i == 2) {
                sa1.R(this, null, new ah(this, 5), 1);
                return;
            } else {
                q.j();
                return;
            }
        }
        if (this instanceof AppListActivity) {
            if (((AppListActivity) this).Y().isLocalSection()) {
                return;
            } else {
                finish();
            }
        }
        bt btVar2 = bt.LOCAL;
        btVar2.getClass();
        bt btVar3 = bt.CLOUD;
        if (btVar2 == btVar3) {
            tb1 tb1Var = tb1.a;
            if (qb1.m()) {
                btVar = btVar3;
            }
        } else {
            btVar = btVar2;
        }
        Intent intent = new Intent(this, (Class<?>) AppListActivity.class);
        intent.putExtra("KEY_SECTION", btVar);
        startActivity(intent);
    }

    @Override // defpackage.er6, defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!fl1.A0(102, 101).contains(Integer.valueOf(i)) || i2 != -1 || intent == null) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("labels_extra_filtered_ids");
        if (stringArrayExtra == null) {
            stringArrayExtra = new String[0];
        }
        Set setA0 = x50.A0(stringArrayExtra);
        if (i == 101) {
            ud3.a.h(setA0);
            c0();
            return;
        }
        if (i != 102) {
            throw new io5(xs1.h(i, "onLabelsSelected: Request code '", "' not implemented"));
        }
        sc3 sc3Var = this.Z;
        if (sc3Var == null) {
            l0.e("_filterBottomDialog not initialized");
            return;
        }
        boolean zIsEmpty = setA0.isEmpty();
        xd3 xd3Var = xd3.a;
        if (zIsEmpty) {
            xd3Var.reset();
        } else {
            xd3Var.g(setA0);
        }
        sc3Var.n(false);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        iy.b.e(this, new js(1, new k3(this, 2)));
    }

    @Override // defpackage.k28
    public final boolean s() {
        return false;
    }

    public void e0() {
    }
}
