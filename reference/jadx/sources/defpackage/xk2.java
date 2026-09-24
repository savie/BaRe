package defpackage;

import android.util.Log;
import android.view.View;
import androidx.fragment.app.h;
import androidx.fragment.app.z;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xk2 implements es5 {
    public final /* synthetic */ h a;

    public xk2(h hVar) {
        this.a = hVar;
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        if (((fu4) obj) != null) {
            h hVar = this.a;
            if (hVar.n) {
                View viewRequireView = hVar.requireView();
                if (viewRequireView.getParent() != null) {
                    l0.e("DialogFragment can not be attached to a container view");
                    return;
                }
                if (hVar.t != null) {
                    if (z.K(3)) {
                        Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + hVar.t);
                    }
                    hVar.t.setContentView(viewRequireView);
                }
            }
        }
    }
}
