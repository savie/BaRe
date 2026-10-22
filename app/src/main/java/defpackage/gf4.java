package defpackage;

import android.view.View;
import com.google.android.material.snackbar.SnackbarContentLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gf4 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ gf4(IntroActivity introActivity, int i) {
        this.a = i;
        this.b = introActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        IntroActivity introActivity = this.b;
        switch (i) {
            case 0:
                int i2 = IntroActivity.V;
                introActivity.P().a(3);
                break;
            default:
                int i3 = IntroActivity.V;
                dz5 dz5Var = dz5.a;
                int i4 = 0;
                if (!dz5.l(dz5.j())) {
                    introActivity.N();
                    if (!introActivity.isFinishing()) {
                        qi7 qi7VarP = introActivity.P();
                        ((SnackbarContentLayout) qi7VarP.i.getChildAt(0)).getMessageView().setText(qi7VarP.h.getText(R.string.xiaomi_installed_apps_permission_not_supported));
                        qi7VarP.h(new gf4(introActivity, i4));
                        qi7VarP.i();
                    }
                } else if (dz5.h("com.android.permission.GET_INSTALLED_APPS") && !dz5.k()) {
                    dz5.o(introActivity, sz8.Y("com.android.permission.GET_INSTALLED_APPS"), false);
                } else {
                    dz5.a(introActivity, new rn1(introActivity, 4), "com.android.permission.GET_INSTALLED_APPS");
                }
                break;
        }
    }
}
