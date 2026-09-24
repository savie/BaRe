package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ga7 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;

    public ga7(CoordinatorLayout coordinatorLayout, w00 w00Var) {
        this.a = coordinatorLayout;
        this.b = w00Var;
    }

    public static ga7 a(LayoutInflater layoutInflater) {
        View viewInflate = layoutInflater.inflate(R.layout.settings_activity, (ViewGroup) null, false);
        int i = R.id.appbar_layout;
        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
        if (viewU != null) {
            w00 w00VarB = w00.b(viewU);
            if (((FrameLayout) ms8.u(viewInflate, R.id.container)) != null) {
                return new ga7((CoordinatorLayout) viewInflate, w00VarB);
            }
            i = R.id.container;
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
