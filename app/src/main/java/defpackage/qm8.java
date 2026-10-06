package defpackage;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qm8 implements ViewTreeObserver.OnPreDrawListener {
    public final WeakReference a;

    public qm8(rm8 rm8Var) {
        this.a = new WeakReference(rm8Var);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        if (Log.isLoggable("ViewTarget", 2)) {
            Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
        }
        rm8 rm8Var = (rm8) this.a.get();
        if (rm8Var == null) {
            return true;
        }
        ArrayList arrayList = rm8Var.b;
        View view = rm8Var.a;
        if (arrayList.isEmpty()) {
            return true;
        }
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = rm8Var.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = rm8Var.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if (iA <= 0 && iA != Integer.MIN_VALUE) {
            return true;
        }
        if (iA2 <= 0 && iA2 != Integer.MIN_VALUE) {
            return true;
        }
        Iterator it = new ArrayList(arrayList).iterator();
        while (it.hasNext()) {
            ((fh7) it.next()).m(iA, iA2);
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(rm8Var.c);
        }
        rm8Var.c = null;
        arrayList.clear();
        return true;
    }
}
