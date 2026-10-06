package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hh6 extends w5 {
    public final RecyclerView d;
    public final gh6 e;

    public hh6(RecyclerView recyclerView) {
        this.d = recyclerView;
        w5 w5VarJ = j();
        if (w5VarJ == null || !(w5VarJ instanceof gh6)) {
            this.e = new gh6(this);
        } else {
            this.e = (gh6) w5VarJ;
        }
    }

    @Override // defpackage.w5
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.d.N()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().f0(accessibilityEvent);
        }
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        this.a.onInitializeAccessibilityNodeInfo(view, m6Var.a);
        RecyclerView recyclerView = this.d;
        if (recyclerView.N() || recyclerView.getLayoutManager() == null) {
            return;
        }
        a layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        layoutManager.g0(recyclerView2.c, recyclerView2.x0, m6Var);
    }

    @Override // defpackage.w5
    public final boolean g(View view, int i, Bundle bundle) {
        if (super.g(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.d;
        if (recyclerView.N() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().u0(i, bundle);
    }

    public w5 j() {
        return this.e;
    }
}
