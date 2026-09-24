package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.animation.PathInterpolator;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o52 implements TextWatcher {
    public final /* synthetic */ int a;
    public final /* synthetic */ sa1 b;

    public /* synthetic */ o52(sa1 sa1Var, int i) {
        this.a = i;
        this.b = sa1Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int i = this.a;
        sa1 sa1Var = this.b;
        switch (i) {
            case 0:
                CsActivity csActivity = (CsActivity) sa1Var;
                csActivity.a0().l(csActivity.m0());
                break;
            default:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) sa1Var;
                String string = editable != null ? editable.toString() : null;
                if (string == null) {
                    string = "";
                }
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                sz8.d0(homeSearchActivity.X().c, !nq7.j0(string));
                ((x54) homeSearchActivity.P.getValue()).l(string);
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.a;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.a;
    }

    private final void a(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void b(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void c(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void d(int i, int i2, int i3, CharSequence charSequence) {
    }
}
