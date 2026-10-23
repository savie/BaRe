package defpackage;

import android.view.View;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rn extends jb9 {
    public final /* synthetic */ fo M;

    public rn(fo foVar) {
        this.M = foVar;
    }

    @Override // defpackage.jb9, defpackage.om8
    public final void b() {
        fo foVar = this.M;
        foVar.M.setVisibility(0);
        if (foVar.M.getParent() instanceof View) {
            View view = (View) foVar.M.getParent();
            WeakHashMap weakHashMap = dl8.a;
            view.requestApplyInsets();
        }
    }

    @Override // defpackage.om8
    public final void d() {
        fo foVar = this.M;
        foVar.M.setAlpha(1.0f);
        foVar.P.d(null);
        foVar.P = null;
    }
}
