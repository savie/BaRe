package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pq1 extends gm7 {
    public final boolean l;
    public e7 m;
    public zs n;

    public pq1(boolean z) {
        super(null);
        this.l = z;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        oq1 oq1Var = (oq1) fh6Var;
        final ConfigSettings configSettings = (ConfigSettings) m(i);
        configSettings.getClass();
        Context context = oq1Var.a.getContext();
        oq1Var.v.setText(String.valueOf(oq1Var.b() + 1));
        ImageView imageView = oq1Var.w;
        final pq1 pq1Var = oq1Var.A;
        int i2 = 0;
        final boolean z = oq1Var.b() > 0;
        imageView.setEnabled(z);
        imageView.setAlpha(!imageView.isEnabled() ? 0.6f : 1.0f);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: lq1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e7 e7Var;
                if (!z || (e7Var = pq1Var.m) == null) {
                    return;
                }
                e7Var.invoke(configSettings);
            }
        });
        ImageView imageView2 = oq1Var.x;
        final boolean z2 = oq1Var.b() != pq1Var.b() - 1;
        imageView2.setEnabled(z2);
        imageView2.setAlpha(imageView2.isEnabled() ? 1.0f : 0.6f);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: mq1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                zs zsVar;
                if (!z2 || (zsVar = pq1Var.n) == null) {
                    return;
                }
                zsVar.invoke(configSettings);
            }
        });
        new tq1((ny1) oq1Var.u.c, pq1Var.l).a(configSettings.getApplyData());
        TextView textView = oq1Var.y;
        context.getClass();
        textView.setText(configSettings.toDisplayString(context));
        oq1Var.z.setOnClickListener(new nq1(i2, pq1Var, configSettings, oq1Var));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.config_edit_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new oq1(this, view);
    }
}
