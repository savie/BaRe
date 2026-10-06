package org.swiftapps.swiftbackup.settings;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.slider.Slider;
import defpackage.as4;
import defpackage.bj5;
import defpackage.ex6;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.ha7;
import defpackage.hl0;
import defpackage.il0;
import defpackage.ix0;
import defpackage.kn3;
import defpackage.l90;
import defpackage.mo3;
import defpackage.nc8;
import defpackage.nv1;
import defpackage.ph6;
import defpackage.pr4;
import defpackage.q30;
import defpackage.qb5;
import defpackage.sz8;
import defpackage.uf;
import defpackage.xq4;
import defpackage.yi5;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MultipleBackupsActivity extends il0 {
    public static final /* synthetic */ int T = 0;
    public final gv7 O;
    public final gv7 Q;
    public final l90 K = new l90(ph6.a(k.class), new gl0(this, 7), new q30(this, 6), new uf(this, 11));
    public final gv7 L = new gv7(new qb5(this, 2));
    public final gv7 M = new gv7(new kn3(this, 12));
    public final gv7 N = new gv7(new mo3(this, 9));
    public final gv7 P = new gv7(new as4(this, 5));
    public final LinkedHashMap R = new LinkedHashMap();
    public boolean S = true;

    public MultipleBackupsActivity() {
        int i = 6;
        this.O = new gv7(new xq4(this, i));
        this.Q = new gv7(new pr4(this, i));
    }

    public final MultipleBackupStrategy N() {
        i iVar = (i) a0().f.d();
        if (iVar != null) {
            return (MultipleBackupStrategy) iVar.e.getValue();
        }
        return null;
    }

    public final bj5 O() {
        return (bj5) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public final k a0() {
        return (k) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(O().a);
        setSupportActionBar((Toolbar) ((ix0) O().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        k kVarA0 = a0();
        MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) this.M.getValue();
        ex6 ex6Var = kVarA0.f;
        multipleBackupStrategy.getClass();
        if (!kVarA0.e) {
            kVarA0.e = true;
            if (ex6Var.d() == null) {
                MultipleBackupStrategy.Companion.getClass();
                ex6Var.k(new i((MultipleBackupStrategy) MultipleBackupStrategy.singleBackupStrategy$delegate.getValue(), f.b(multipleBackupStrategy) == MultipleBackupStrategy.Type.DatedBackups ? multipleBackupStrategy : (MultipleBackupStrategy) MultipleBackupStrategy.defaultDatedBackupsStrategy$delegate.getValue(), f.b(multipleBackupStrategy) == MultipleBackupStrategy.Type.ConditionalBackup ? multipleBackupStrategy : (MultipleBackupStrategy) MultipleBackupStrategy.defaultConditionalBackupsStrategy$delegate.getValue(), f.b(multipleBackupStrategy)));
            }
        }
        sz8.b(O().k, 7);
        a0().f.e(this, new nv1(new hl0(1, this, MultipleBackupsActivity.class, "updateState", "updateState(Lorg/swiftapps/swiftbackup/settings/MultipleBackupsVM$State;)V", 0, 4), 2));
        L(false, new yi5(this, 0));
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        Iterator it = this.R.values().iterator();
        while (it.hasNext()) {
            ((Slider) it.next()).x.clear();
        }
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(new Bundle());
    }

    @Override // defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStop() {
        super.onStop();
        ha7.a.c(AppSettings.Companion.withSavedSettings());
    }
}
