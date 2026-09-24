package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sn extends jb9 {
    public final /* synthetic */ h80 M;

    public sn(h80 h80Var) {
        this.M = h80Var;
    }

    @Override // defpackage.om8
    public final void d() {
        fo foVar = (fo) this.M.c;
        foVar.M.setVisibility(8);
        PopupWindow popupWindow = foVar.N;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else if (foVar.M.getParent() instanceof View) {
            View view = (View) foVar.M.getParent();
            WeakHashMap weakHashMap = dl8.a;
            view.requestApplyInsets();
        }
        foVar.M.e();
        foVar.P.d(null);
        foVar.P = null;
        ViewGroup viewGroup = foVar.R;
        WeakHashMap weakHashMap2 = dl8.a;
        viewGroup.requestApplyInsets();
    }
}
