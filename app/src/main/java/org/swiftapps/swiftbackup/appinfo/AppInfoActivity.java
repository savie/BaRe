package org.swiftapps.swiftbackup.appinfo;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.ScrollView;
import defpackage.dk;
import defpackage.gv7;
import defpackage.il0;
import defpackage.ji;
import defpackage.pe4;
import defpackage.qo0;
import defpackage.sq;
import defpackage.sz8;
import defpackage.tq;
import defpackage.vr6;
import defpackage.zn4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppInfoActivity extends il0 {
    public static final /* synthetic */ int M = 0;
    public final gv7 K = new gv7(new dk(this, 5));
    public ji L;

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return null;
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ji jiVar;
        super.onCreate(bundle);
        gv7 gv7Var = this.K;
        setContentView(((tq) gv7Var.getValue()).a);
        B();
        ScrollView scrollView = ((tq) gv7Var.getValue()).b;
        scrollView.getClass();
        sz8.b(scrollView, 7);
        if (bundle != null) {
            jiVar = (ji) bundle.getParcelable(ji.PARCEL_KEY);
        } else {
            Intent intent = getIntent();
            jiVar = (ji) (intent != null ? intent.getParcelableExtra(ji.PARCEL_KEY) : null);
        }
        if (jiVar == null) {
            vr6.e$default(vr6.INSTANCE, r(), "Couldn't get parcelable extra for App", null, 4, null);
            finish();
            return;
        }
        this.L = jiVar;
        Log.i(r(), "onCreate: called with app " + jiVar.asString());
        int iZ = sz8.z(this);
        zn4 zn4Var = zn4.a;
        zn4.b(null, new sq(jiVar, this, iZ, null));
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        ji jiVar = this.L;
        if (jiVar == null) {
            pe4.F("app");
            throw null;
        }
        bundle.putParcelable(ji.PARCEL_KEY, jiVar);
        super.onSaveInstanceState(bundle);
    }
}
