package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x21 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ b31 a;

    public x21(b31 b31Var) {
        this.a = b31Var;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        b31 b31Var = this.a;
        ArrayList arrayList = b31Var.p;
        if (!b31Var.a() || arrayList.size() <= 0 || ((a31) arrayList.get(0)).a.Q) {
            return;
        }
        View view = b31Var.H;
        if (view == null || !view.isShown()) {
            b31Var.dismiss();
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a31) it.next()).a.b();
        }
    }
}
