package defpackage;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mu8 extends jb9 {
    public final /* synthetic */ ou8 M;

    public mu8(ou8 ou8Var) {
        this.M = ou8Var;
    }

    @Override // defpackage.om8
    public final void d() {
        View view;
        ou8 ou8Var = this.M;
        if (ou8Var.s && (view = ou8Var.k) != null) {
            view.setTranslationY(0.0f);
            ou8Var.h.setTranslationY(0.0f);
        }
        ou8Var.h.setVisibility(8);
        ou8Var.h.setTransitioning(false);
        ou8Var.w = null;
        h80 h80Var = ou8Var.o;
        if (h80Var != null) {
            h80Var.g(ou8Var.n);
            ou8Var.n = null;
            ou8Var.o = null;
        }
        ActionBarOverlayLayout actionBarOverlayLayout = ou8Var.g;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = dl8.a;
            actionBarOverlayLayout.requestApplyInsets();
        }
    }
}
