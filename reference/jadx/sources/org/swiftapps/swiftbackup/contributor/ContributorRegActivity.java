package org.swiftapps.swiftbackup.contributor;

import android.os.Bundle;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.textfield.TextInputEditText;
import defpackage.ah;
import defpackage.bh;
import defpackage.d76;
import defpackage.ej;
import defpackage.fj;
import defpackage.fl1;
import defpackage.g7;
import defpackage.gv7;
import defpackage.il0;
import defpackage.kf;
import defpackage.l90;
import defpackage.lf;
import defpackage.mv1;
import defpackage.ns;
import defpackage.nv1;
import defpackage.o30;
import defpackage.ov1;
import defpackage.ph6;
import defpackage.qo0;
import defpackage.sz8;
import defpackage.z20;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ContributorRegActivity extends il0 {
    public static final /* synthetic */ int S = 0;
    public final l90 K = new l90(ph6.a(a.class), new z20(this, 4), new ns(this, 9), new o30(this, 3));
    public final gv7 L = new gv7(new ah(this, 20));
    public final gv7 M = new gv7(new bh(this, 17));
    public final gv7 N = new gv7(new d76(this, 17));
    public final gv7 O = new gv7(new kf(this, 21));
    public final gv7 P = new gv7(new lf(this, 16));
    public final gv7 Q = new gv7(new ej(this, 13));
    public final gv7 R = new gv7(new fj(this, 19));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return (a) this.K.getValue();
    }

    public final ov1 N() {
        return (ov1) this.L.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        setContentView(N().a);
        synchronized (this) {
            try {
                sz8.b(N().f, 7);
                Iterator it = fl1.A0((TextInputEditText) this.O.getValue(), (TextInputEditText) this.P.getValue(), (TextInputEditText) this.Q.getValue()).iterator();
                while (true) {
                    i = 0;
                    if (it.hasNext()) {
                        ((TextInputEditText) it.next()).addTextChangedListener(new mv1(this, i));
                    } else {
                        ((ExtendedFloatingActionButton) this.R.getValue()).setOnClickListener(new g7(this, 9));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ((a) this.K.getValue()).f.e(this, new nv1(this, i));
    }
}
