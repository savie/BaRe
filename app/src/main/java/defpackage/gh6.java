package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gh6 extends w5 {
    public final hh6 d;
    public final WeakHashMap e = new WeakHashMap();

    public gh6(hh6 hh6Var) {
        this.d = hh6Var;
    }

    @Override // defpackage.w5
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        w5 w5Var = (w5) this.e.get(view);
        return w5Var != null ? w5Var.a(view, accessibilityEvent) : this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // defpackage.w5
    public final zq8 b(View view) {
        w5 w5Var = (w5) this.e.get(view);
        return w5Var != null ? w5Var.b(view) : super.b(view);
    }

    @Override // defpackage.w5
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        w5 w5Var = (w5) this.e.get(view);
        if (w5Var != null) {
            w5Var.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        hh6 hh6Var = this.d;
        RecyclerView recyclerView = hh6Var.d;
        RecyclerView recyclerView2 = hh6Var.d;
        boolean zN = recyclerView.N();
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        if (zN || recyclerView2.getLayoutManager() == null) {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            return;
        }
        recyclerView2.getLayoutManager().i0(view, m6Var);
        w5 w5Var = (w5) this.e.get(view);
        if (w5Var != null) {
            w5Var.d(view, m6Var);
        } else {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        }
    }

    @Override // defpackage.w5
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        w5 w5Var = (w5) this.e.get(view);
        if (w5Var != null) {
            w5Var.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // defpackage.w5
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        w5 w5Var = (w5) this.e.get(viewGroup);
        return w5Var != null ? w5Var.f(viewGroup, view, accessibilityEvent) : this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // defpackage.w5
    public final boolean g(View view, int i, Bundle bundle) {
        hh6 hh6Var = this.d;
        RecyclerView recyclerView = hh6Var.d;
        RecyclerView recyclerView2 = hh6Var.d;
        if (recyclerView.N() || recyclerView2.getLayoutManager() == null) {
            return super.g(view, i, bundle);
        }
        w5 w5Var = (w5) this.e.get(view);
        if (w5Var != null) {
            if (w5Var.g(view, i, bundle)) {
                return true;
            }
        } else if (super.g(view, i, bundle)) {
            return true;
        }
        vg6 vg6Var = recyclerView2.getLayoutManager().b.c;
        return false;
    }

    @Override // defpackage.w5
    public final void h(View view, int i) {
        w5 w5Var = (w5) this.e.get(view);
        if (w5Var != null) {
            w5Var.h(view, i);
        } else {
            super.h(view, i);
        }
    }

    @Override // defpackage.w5
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        w5 w5Var = (w5) this.e.get(view);
        if (w5Var != null) {
            w5Var.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
