package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.settings.LicensesActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mt4 extends hg6 {
    public final z60 d;
    public final /* synthetic */ LicensesActivity e;

    public mt4(LicensesActivity licensesActivity) {
        this.e = licensesActivity;
        int i = LicensesActivity.L;
        jw4 jw4Var = new jw4(this);
        z28 z28Var = new z28(this, 2);
        synchronized (w13.a) {
            try {
                if (w13.b == null) {
                    w13.b = Executors.newFixedThreadPool(2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        z60 z60Var = new z60(z28Var, new km8((Executor) w13.b));
        this.d = z60Var;
        z60Var.d.add(jw4Var);
    }

    @Override // defpackage.hg6
    public final int b() {
        return this.d.f.size();
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        nt4 nt4Var = (nt4) this.d.f.get(i);
        gd gdVar = ((lt4) fh6Var).u;
        TextView textView = (TextView) gdVar.d;
        ConstraintLayout constraintLayout = (ConstraintLayout) gdVar.b;
        textView.setText(nt4Var.a);
        TextView textView2 = (TextView) gdVar.c;
        String str = nt4Var.b;
        int i2 = LicensesActivity.L;
        String string = nq7.H0(str).toString();
        int i3 = 1;
        if (!uq7.V(string, "http://", true) && !uq7.V(string, "https://", true)) {
            cv4 cv4Var = new cv4(string);
            string = (String) (!cv4Var.hasNext() ? null : cv4Var.next());
            if (string == null) {
                string = "";
            }
            if (string.length() > 160) {
                string = nq7.G0(160, string).concat("…");
            }
        }
        textView2.setText(string);
        String string2 = nq7.H0(str).toString();
        boolean zV = uq7.V(string2, "http://", true);
        LicensesActivity licensesActivity = this.e;
        if (zV || uq7.V(string2, "https://", true)) {
            constraintLayout.setOnClickListener(new rf4(i3, licensesActivity, nt4Var));
        } else {
            constraintLayout.setOnClickListener(new fj2(2, licensesActivity, nt4Var));
        }
    }

    @Override // defpackage.hg6
    public final fh6 j(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.license_item, viewGroup, false);
        int i2 = R.id.tv_license;
        TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_license);
        if (textView != null) {
            i2 = R.id.tv_name;
            TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_name);
            if (textView2 != null) {
                return new lt4(new gd(3, (ConstraintLayout) viewInflate, textView, textView2));
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return null;
    }
}
