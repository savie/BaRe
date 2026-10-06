package org.swiftapps.swiftbackup.cloud.connect;

import android.os.Bundle;
import defpackage.c7;
import defpackage.d7;
import defpackage.e7;
import defpackage.il0;
import defpackage.l90;
import defpackage.ms;
import defpackage.ns;
import defpackage.ph6;
import defpackage.vt5;
import defpackage.y20;
import defpackage.z20;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class OneDriveSignInActivity extends il0 {
    public static final /* synthetic */ int L = 0;
    public final l90 K = new l90(ph6.a(vt5.class), new ns(this, 16), new ms(this, 15), new z20(this, 14));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final vt5 U() {
        return (vt5) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 4;
        V().f.e(this, new y20(i, new c7(this, 24)));
        V().g.e(this, new y20(i, new d7(this, 20)));
        V().h.e(this, new y20(i, new e7(this, 21)));
    }
}
