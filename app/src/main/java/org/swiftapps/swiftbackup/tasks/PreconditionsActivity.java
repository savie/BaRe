package org.swiftapps.swiftbackup.tasks;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import defpackage.as4;
import defpackage.dz5;
import defpackage.fm1;
import defpackage.gm1;
import defpackage.gv7;
import defpackage.i00;
import defpackage.il0;
import defpackage.mf;
import defpackage.p36;
import defpackage.pr4;
import defpackage.qo0;
import defpackage.sz8;
import defpackage.xq4;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class PreconditionsActivity extends il0 {
    public static final /* synthetic */ int P = 0;
    public final gv7 K = new gv7(new xq4(this, 7));
    public final gv7 L = new gv7(new as4(this, 8));
    public final gv7 M = new gv7(new pr4(this, 8));
    public int N;
    public boolean O;

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 U() {
        return null;
    }

    public final boolean N() {
        ArrayList arrayList = new ArrayList();
        int i = this.N;
        if (i == 2 || i == 589) {
            dz5 dz5Var = dz5.a;
            arrayList.add(Boolean.valueOf(dz5.m()));
        }
        int i2 = this.N;
        if (i2 == 3 || i2 == 589) {
            dz5 dz5Var2 = dz5.a;
            arrayList.add(Boolean.valueOf(dz5.g()));
        }
        Iterator it = arrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            next.getClass();
            if (!((Boolean) next).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public final p36 O() {
        return (p36) this.K.getValue();
    }

    public final void P() {
        int i = this.N;
        if (i == 2 || i == 589) {
            O().k.setVisibility(0);
            gm1 gm1Var = O().n;
            dz5 dz5Var = dz5.a;
            boolean zM = dz5.m();
            String string = getString(R.string.sms_permissions);
            string.getClass();
            Q(gm1Var, zM, string, (Set) dz5.d.getValue());
        }
        int i2 = this.N;
        if (i2 == 3 || i2 == 589) {
            O().d.setVisibility(0);
            gm1 gm1Var2 = O().e;
            dz5 dz5Var2 = dz5.a;
            boolean zG = dz5.g();
            String string2 = getString(R.string.call_logs_permissions);
            string2.getClass();
            Q(gm1Var2, zG, string2, (Set) dz5.f.getValue());
        }
        ((ImageView) this.M.getValue()).setOnClickListener(new i00(this, 12));
        gv7 gv7Var = this.L;
        Object value = gv7Var.getValue();
        value.getClass();
        ((Button) value).setOnClickListener(new mf(this, 10));
        Object value2 = gv7Var.getValue();
        value2.getClass();
        ((Button) value2).setEnabled(N());
    }

    public final void Q(gm1 gm1Var, final boolean z, String str, final Set set) {
        fm1 fm1Var = new fm1(gm1Var);
        if (z) {
            fm1Var.b();
        } else {
            fm1Var.a();
        }
        ImageView imageView = (ImageView) gm1Var.c;
        TextView textView = (TextView) gm1Var.e;
        TextView textView2 = (TextView) gm1Var.f;
        textView.setText(str);
        imageView.setImageResource(z ? R.drawable.ic_check : R.drawable.ic_warn);
        textView2.setText(getString(z ? R.string.all_permissions_granted : R.string.permissions_needed));
        ((MaterialCardView) gm1Var.a).setOnClickListener(new View.OnClickListener() { // from class: o36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = PreconditionsActivity.P;
                boolean z2 = z;
                PreconditionsActivity preconditionsActivity = this;
                if (!z2) {
                    dz5 dz5Var = dz5.a;
                    Set set2 = set;
                    kb kbVar = new kb(preconditionsActivity, set2);
                    String[] strArr = (String[]) set2.toArray(new String[0]);
                    dz5.a(preconditionsActivity, kbVar, (String[]) Arrays.copyOf(strArr, strArr.length));
                    return;
                }
                String string = preconditionsActivity.getString(R.string.already_granted_permissions_message);
                string.getClass();
                String string2 = preconditionsActivity.getString(R.string.ok);
                s35 s35Var = new s35(preconditionsActivity, R.style.M3AlertDialogTheme, new hv1(preconditionsActivity, R.style.M3AlertDialogTheme), null);
                ((ra) s35Var.b).f = string;
                if (string2 == null || string2.length() == 0) {
                    string2 = preconditionsActivity.getString(R.string.ok);
                    string2.getClass();
                }
                s35Var.t(string2, null);
                s35Var.m();
            }
        });
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 9785) {
            P();
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(O().a);
        B();
        sz8.b(O().b, 7);
        this.N = getIntent().getIntExtra("request_code", 0);
        L(true, new yi5(this, 2));
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        if (this.O) {
            setResult(0);
        } else {
            setResult(N() ? -1 : 0);
        }
        super.onDestroy();
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        P();
    }
}
