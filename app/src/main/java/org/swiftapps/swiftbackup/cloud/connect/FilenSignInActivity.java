package org.swiftapps.swiftbackup.cloud.connect;

import android.os.Bundle;
import android.text.Editable;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.ac3;
import defpackage.d7;
import defpackage.dd1;
import defpackage.ec3;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.il0;
import defpackage.k52;
import defpackage.l90;
import defpackage.lf;
import defpackage.mf;
import defpackage.nq7;
import defpackage.nv1;
import defpackage.oh1;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.sz8;
import defpackage.ub5;
import defpackage.uf;
import defpackage.vb3;
import defpackage.vf;
import defpackage.wa;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FilenSignInActivity extends il0 {
    public static final /* synthetic */ int N = 0;
    public final l90 K = new l90(ph6.a(ec3.class), new uf(this, 7), new gl0(this, 3), new vf(this, 5));
    public final gv7 L = new gv7(new lf(this, 19));
    public wa M;

    public final ub5 N() {
        return (ub5) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final ec3 a0() {
        return (ec3) this.K.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0045  */
    public final void P() {
        boolean z;
        Editable text;
        Editable text2;
        MaterialButton materialButton = N().b;
        if (pe4.d(V().e.d(), ac3.a) && (text = N().f.c.getText()) != null) {
            z = (nq7.j0(text) ^ true) && (text2 = ((TextInputEditText) N().k.c).getText()) != null && text2.length() > 0;
        }
        materialButton.setEnabled(z);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        N().f.c.setId(R.id.et_filen_email);
        ((TextInputEditText) N().k.c).setId(R.id.et_filen_password);
        setContentView(N().a);
        B();
        sz8.b(N().e, 7);
        N().c.setImageResource(dd1.Filen.getBrandingIconRes());
        N().n.setText(R.string.filen);
        N().d.setVisibility(8);
        N().f.d.setHint(getString(R.string.email));
        TextInputLayout textInputLayout = (TextInputLayout) N().k.d;
        textInputLayout.setHint(getString(R.string.password));
        int i = 1;
        textInputLayout.setEndIconMode(1);
        N().f.c.setInputType(33);
        ((TextInputEditText) N().k.c).setInputType(129);
        d7 d7Var = new d7(this, 10);
        N().f.c.addTextChangedListener(new vb3(d7Var, 0));
        ((TextInputEditText) N().k.c).addTextChangedListener(new k52(d7Var, i));
        N().b.setOnClickListener(new mf(this, 6));
        V().e.e(this, new nv1(new oh1(1, this, FilenSignInActivity.class, "onSignInStateChanged", "onSignInStateChanged(Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInVM$State;)V", 0, 1), i));
        P();
    }
}
