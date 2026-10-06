package org.swiftapps.swiftbackup.password;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import defpackage.es;
import defpackage.gh8;
import defpackage.gv7;
import defpackage.h00;
import defpackage.hs4;
import defpackage.i00;
import defpackage.il0;
import defpackage.ix0;
import defpackage.n55;
import defpackage.nc8;
import defpackage.no5;
import defpackage.qb5;
import defpackage.qo0;
import defpackage.sz8;
import defpackage.xd1;
import defpackage.yx5;
import defpackage.zf1;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class UserPasswordActivity extends il0 {
    public static final /* synthetic */ int O = 0;
    public final gv7 K = new gv7(new hs4(this, 16));
    public final gv7 L = new gv7(new no5(this, 9));
    public final gv7 M = new gv7(new qb5(this, 11));
    public final gv7 N = new gv7(new n55(this, 12));

    @Override // defpackage.il0
    public final boolean D() {
        return false;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return null;
    }

    public final gh8 N() {
        return (gh8) this.K.getValue();
    }

    public final void O() {
        String strK = yx5.k();
        gv7 gv7Var = this.M;
        if (strK == null || strK.length() == 0) {
            TextView textView = N().p;
            textView.setText(getString(R.string.no_active_password));
            textView.setTextColor(getColor(R.color.ambrdark));
            ImageView imageView = N().f;
            imageView.setImageResource(R.drawable.ic_error);
            imageView.setImageTintList(sz8.h0(getColor(R.color.ambrdark)));
            N().k.setVisibility(8);
            ((MaterialButton) gv7Var.getValue()).setText(R.string.new_password);
        } else {
            TextView textView2 = N().p;
            textView2.setText(getString(R.string.password_saved));
            textView2.setTextColor(sz8.w(this));
            ImageView imageView2 = N().f;
            imageView2.setImageResource(R.drawable.ic_check_circle_outline);
            imageView2.setImageTintList(sz8.h0(sz8.w(this)));
            N().k.setVisibility(0);
            ((MaterialButton) gv7Var.getValue()).setText(R.string.change_password);
        }
        List listI = yx5.i();
        TextView textView3 = N().q;
        if (listI.isEmpty()) {
            N().n.setVisibility(8);
            textView3.setVisibility(8);
        } else {
            textView3.setVisibility(0);
            N().n.setVisibility(0);
            textView3.setText(getString(R.string.x_passwords_saved, String.valueOf(listI.size())));
            textView3.setTextColor(sz8.x(this));
        }
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(N().a);
        setSupportActionBar((Toolbar) ((ix0) N().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        TextView textView = N().r;
        gv7 gv7Var = this.L;
        sz8.d0(textView, ((Boolean) gv7Var.getValue()).booleanValue());
        ExtendedFloatingActionButton extendedFloatingActionButton = N().d;
        sz8.d0(extendedFloatingActionButton, ((Boolean) gv7Var.getValue()).booleanValue());
        extendedFloatingActionButton.setOnClickListener(new zf1(this, 10));
        ((MaterialButton) this.M.getValue()).setOnClickListener(new h00(this, 13));
        int i = 15;
        N().k.setOnClickListener(new i00(this, i));
        ((MaterialButton) this.N.getValue()).setOnClickListener(new es(this, i));
        N().n.setOnClickListener(new xd1(this, 12));
        O();
    }

    @Override // defpackage.k28
    public final boolean q() {
        return false;
    }
}
