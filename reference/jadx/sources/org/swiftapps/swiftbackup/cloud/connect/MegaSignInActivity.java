package org.swiftapps.swiftbackup.cloud.connect;

import android.os.Bundle;
import android.text.Editable;
import com.google.android.material.textfield.TextInputEditText;
import defpackage.dd1;
import defpackage.gv7;
import defpackage.il0;
import defpackage.kn3;
import defpackage.l90;
import defpackage.mo3;
import defpackage.n55;
import defpackage.nq7;
import defpackage.o30;
import defpackage.p30;
import defpackage.ph6;
import defpackage.qb5;
import defpackage.rb5;
import defpackage.sz8;
import defpackage.tb5;
import defpackage.u14;
import defpackage.ub5;
import defpackage.xq4;
import defpackage.z20;
import defpackage.zn4;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MegaSignInActivity extends il0 {
    public static final /* synthetic */ int S = 0;
    public final l90 K;
    public final gv7 L = new gv7(new xq4(this, 2));
    public final dd1 M = dd1.MegaNz;
    public final gv7 N = new gv7(new qb5(this, 0));
    public final gv7 O = new gv7(new n55(this, 1));
    public final gv7 P = new gv7(new u14(this, 5));
    public final gv7 Q;
    public final gv7 R;

    public MegaSignInActivity() {
        int i = 10;
        int i2 = 7;
        this.K = new l90(ph6.a(tb5.class), new o30(this, i2), new z20(this, i), new p30(this, 4));
        this.Q = new gv7(new kn3(this, i));
        this.R = new gv7(new mo3(this, i2));
    }

    public final ub5 N() {
        return (ub5) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final tb5 V() {
        return (tb5) this.K.getValue();
    }

    public final MegaClient$Credentials P() {
        String string;
        String string2;
        Editable text = ((TextInputEditText) this.O.getValue()).getText();
        String string3 = null;
        String string4 = (text == null || (string2 = text.toString()) == null) ? null : nq7.H0(string2).toString();
        if (string4 == null) {
            string4 = "";
        }
        Editable text2 = ((TextInputEditText) this.Q.getValue()).getText();
        if (text2 != null && (string = text2.toString()) != null) {
            string3 = nq7.H0(string).toString();
        }
        return new MegaClient$Credentials(string4, string3 != null ? string3 : "");
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        if (bundle != null) {
            bundle.clear();
        }
        super.onCreate(bundle);
        setContentView(N().a);
        B();
        sz8.b(N().e, 7);
        zn4 zn4Var = zn4.a;
        zn4.b(null, new rb5(this, null, 0));
    }
}
