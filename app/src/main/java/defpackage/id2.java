package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class id2 extends gm7 {
    public final /* synthetic */ int l = 0;
    public final il0 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public id2(il0 il0Var) {
        super(null);
        il0Var.getClass();
        this.m = il0Var;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        float f = 1.0f;
        int i2 = 1;
        switch (this.l) {
            case 0:
                hd2 hd2Var = (hd2) fh6Var;
                jd2 jd2Var = (jd2) m(i);
                jd2Var.getClass();
                TextView textView = hd2Var.u;
                id2 id2Var = hd2Var.v;
                boolean zQ = id2Var.q(jd2Var);
                il0 il0Var = id2Var.m;
                if (zQ) {
                    int iX = sz8.x(il0Var);
                    int color = il0Var.getColor(sz8.y(il0Var, R.attr.colorOnPrimary));
                    textView.setBackgroundTintList(sz8.h0(iX));
                    textView.setTextColor(color);
                    textView.setAlpha(1.0f);
                } else {
                    textView.setBackgroundTintList(sz8.h0(sz8.q(il0Var, R.attr.colorSurface)));
                    textView.setTextColor(il0Var.getColor(sz8.y(il0Var, R.attr.colorOnSurface)));
                    textView.setAlpha(0.6f);
                }
                textView.setText(jd2Var.b);
                textView.setOnClickListener(new uf1(i2, id2Var, jd2Var));
                break;
            default:
                ip2 ip2Var = (ip2) fh6Var;
                jp2 jp2Var = (jp2) m(i);
                ca3 ca3Var = ip2Var.u;
                jp2Var.getClass();
                String str = jp2Var.c;
                String str2 = jp2Var.b;
                View view = ip2Var.a;
                if (jp2Var.e) {
                    mp6 mp6Var = mp6.a;
                    if (!mp6.f()) {
                        f = 0.5f;
                    }
                }
                view.setAlpha(f);
                ((ImageView) ca3Var.d).setImageResource(jp2Var.d);
                ((TextView) ca3Var.k).setText(jp2Var.a);
                TextView textView2 = (TextView) ca3Var.e;
                int i3 = 0;
                sz8.d0(textView2, !(str2 == null || str2.length() == 0));
                if (sz8.I(textView2)) {
                    textView2.setText(str2);
                }
                TextView textView3 = (TextView) ca3Var.f;
                sz8.d0(textView3, true ^ (str == null || str.length() == 0));
                if (sz8.I(textView3)) {
                    textView3.setText(str);
                }
                ((ConstraintLayout) ca3Var.b).setOnClickListener(new hp2(jp2Var, ip2Var, ip2Var.v, i3));
                sz8.d0((View) ca3Var.c, jp2Var.f);
                break;
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        switch (this.l) {
            case 0:
                return R.layout.day_item;
            default:
                return R.layout.drawer_item;
        }
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        switch (this.l) {
            case 0:
                TextView textView = (TextView) view;
                return new hd2(this, new wc9(3, textView, textView));
            default:
                return new ip2(this, view);
        }
    }

    public id2(AppListActivity appListActivity, fm7 fm7Var) {
        super(fm7Var);
        this.m = appListActivity;
    }
}
