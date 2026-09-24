package defpackage;

import android.content.Context;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k88 implements wc5 {
    public fc5 a;
    public ic5 b;
    public final /* synthetic */ Toolbar c;

    public k88(Toolbar toolbar) {
        this.c = toolbar;
    }

    @Override // defpackage.wc5
    public final void c(boolean z) {
        if (this.b != null) {
            fc5 fc5Var = this.a;
            if (fc5Var != null) {
                int size = fc5Var.f.size();
                for (int i = 0; i < size; i++) {
                    if (this.a.getItem(i) == this.b) {
                        return;
                    }
                }
            }
            g(this.b);
        }
    }

    @Override // defpackage.wc5
    public final boolean e(lr7 lr7Var) {
        return false;
    }

    @Override // defpackage.wc5
    public final boolean f() {
        return false;
    }

    @Override // defpackage.wc5
    public final boolean g(ic5 ic5Var) {
        Toolbar toolbar = this.c;
        KeyEvent.Callback callback = toolbar.p;
        if (callback instanceof vk1) {
            ((kc5) ((vk1) callback)).a.onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.p);
        toolbar.removeView(toolbar.n);
        toolbar.p = null;
        ArrayList arrayList = toolbar.W;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.b = null;
        toolbar.requestLayout();
        ic5Var.U = false;
        ic5Var.y.p(false);
        toolbar.v();
        return true;
    }

    @Override // defpackage.wc5
    public final int getId() {
        return 0;
    }

    @Override // defpackage.wc5
    public final boolean j(ic5 ic5Var) {
        Toolbar toolbar = this.c;
        toolbar.c();
        ViewParent parent = toolbar.n.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.n);
            }
            toolbar.addView(toolbar.n);
        }
        View actionView = ic5Var.getActionView();
        toolbar.p = actionView;
        this.b = ic5Var;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.p);
            }
            l88 l88VarH = Toolbar.h();
            l88VarH.a = (toolbar.y & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) | 8388611;
            l88VarH.b = 2;
            toolbar.p.setLayoutParams(l88VarH);
            toolbar.addView(toolbar.p);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((l88) childAt.getLayoutParams()).b != 2 && childAt != toolbar.a) {
                toolbar.removeViewAt(childCount);
                toolbar.W.add(childAt);
            }
        }
        toolbar.requestLayout();
        ic5Var.U = true;
        ic5Var.y.p(false);
        KeyEvent.Callback callback = toolbar.p;
        if (callback instanceof vk1) {
            ((kc5) ((vk1) callback)).a.onActionViewExpanded();
        }
        toolbar.v();
        return true;
    }

    @Override // defpackage.wc5
    public final void l(Context context, fc5 fc5Var) {
        ic5 ic5Var;
        fc5 fc5Var2 = this.a;
        if (fc5Var2 != null && (ic5Var = this.b) != null) {
            fc5Var2.d(ic5Var);
        }
        this.a = fc5Var;
    }

    @Override // defpackage.wc5
    public final Parcelable m() {
        return null;
    }

    @Override // defpackage.wc5
    public final void h(Parcelable parcelable) {
    }

    @Override // defpackage.wc5
    public final void d(fc5 fc5Var, boolean z) {
    }
}
