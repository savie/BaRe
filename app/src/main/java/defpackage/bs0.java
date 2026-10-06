package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bs0 extends gm7 {
    public final BlacklistActivity l;

    public bs0(BlacklistActivity blacklistActivity) {
        super(null);
        this.l = blacklistActivity;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        final zr0 zr0Var = (zr0) fh6Var;
        final BlacklistApp blacklistApp = (BlacklistApp) m(i);
        blacklistApp.getClass();
        final bs0 bs0Var = zr0Var.w;
        final BlacklistActivity blacklistActivity = bs0Var.l;
        xd0 xd0Var = zr0Var.v;
        TextView textView = (TextView) xd0Var.p;
        TextView textView2 = (TextView) xd0Var.n;
        textView.setText(blacklistApp.getName());
        TextView textView3 = (TextView) xd0Var.k;
        textView3.setText(blacklistApp.getBlackListTypeDisplayString());
        Set set = j94.a;
        sx3 sx3Var = new sx3(blacklistApp.getPackageName(), blacklistApp.isInstalled());
        ImageView imageView = (ImageView) xd0Var.f;
        j94.g(sx3Var, imageView, !blacklistApp.isInstalled(), true);
        j94.h(imageView, !blacklistApp.isInstalled());
        ((LinearLayout) xd0Var.c).setAlpha(blacklistApp.isInstalled() ? 1.0f : 0.5f);
        imageView.setAlpha(blacklistApp.isInstalled() ? 1.0f : 0.5f);
        textView2.setText(blacklistActivity.getString(R.string.not_installed));
        int i2 = 0;
        textView2.setVisibility(blacklistApp.isInstalled() ? 8 : 0);
        boolean z = blacklistApp.getBlackListType() == is0.Hide.ordinal();
        ((View) xd0Var.d).setVisibility(8);
        textView3.setTextColor(z ? sz8.r(blacklistActivity) : sz8.A(blacklistActivity));
        ((SwiftListItemCardView) xd0Var.e).setOnClickListener(new xr0(i2, blacklistActivity, blacklistApp, bs0Var));
        ((ImageView) xd0Var.b).setOnClickListener(new View.OnClickListener() { // from class: yr0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageView imageView2 = (ImageView) zr0Var.v.b;
                BlacklistActivity blacklistActivity2 = blacklistActivity;
                u45 u45Var = new u45(blacklistActivity2, imageView2, 12);
                u45Var.f(R.menu.menu_popup_blacklisted_app);
                u45Var.e = new wr0(blacklistActivity2, blacklistApp, this.a, imageView2);
                u45Var.j();
            }
        });
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.blacklist_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new zr0(this, view);
    }
}
