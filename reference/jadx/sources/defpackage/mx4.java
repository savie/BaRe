package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mx4 implements wc5, AdapterView.OnItemClickListener {
    public Context a;
    public LayoutInflater b;
    public fc5 c;
    public ExpandedMenuView d;
    public vc5 e;
    public lx4 f;

    public mx4(ContextWrapper contextWrapper) {
        this.a = contextWrapper;
        this.b = LayoutInflater.from(contextWrapper);
    }

    @Override // defpackage.wc5
    public final void c(boolean z) {
        lx4 lx4Var = this.f;
        if (lx4Var != null) {
            lx4Var.notifyDataSetChanged();
        }
    }

    @Override // defpackage.wc5
    public final void d(fc5 fc5Var, boolean z) {
        vc5 vc5Var = this.e;
        if (vc5Var != null) {
            vc5Var.d(fc5Var, z);
        }
    }

    @Override // defpackage.wc5
    public final boolean e(lr7 lr7Var) {
        boolean zHasVisibleItems = lr7Var.hasVisibleItems();
        Context context = lr7Var.a;
        if (!zHasVisibleItems) {
            return false;
        }
        gc5 gc5Var = new gc5();
        gc5Var.a = lr7Var;
        va vaVar = new va(context);
        ra raVar = (ra) vaVar.b;
        mx4 mx4Var = new mx4(raVar.a);
        gc5Var.c = mx4Var;
        mx4Var.e = gc5Var;
        lr7Var.b(mx4Var, context);
        mx4 mx4Var2 = gc5Var.c;
        if (mx4Var2.f == null) {
            mx4Var2.f = new lx4(mx4Var2);
        }
        raVar.q = mx4Var2.f;
        raVar.r = gc5Var;
        View view = lr7Var.G;
        if (view != null) {
            raVar.e = view;
        } else {
            raVar.c = lr7Var.y;
            raVar.d = lr7Var.x;
        }
        raVar.o = gc5Var;
        wa waVarC = vaVar.c();
        gc5Var.b = waVarC;
        waVarC.setOnDismissListener(gc5Var);
        WindowManager.LayoutParams attributes = gc5Var.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        gc5Var.b.show();
        vc5 vc5Var = this.e;
        if (vc5Var == null) {
            return true;
        }
        vc5Var.r(lr7Var);
        return true;
    }

    @Override // defpackage.wc5
    public final boolean f() {
        return false;
    }

    @Override // defpackage.wc5
    public final boolean g(ic5 ic5Var) {
        return false;
    }

    @Override // defpackage.wc5
    public final int getId() {
        return 0;
    }

    @Override // defpackage.wc5
    public final void h(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // defpackage.wc5
    public final void i(vc5 vc5Var) {
        throw null;
    }

    @Override // defpackage.wc5
    public final boolean j(ic5 ic5Var) {
        return false;
    }

    @Override // defpackage.wc5
    public final void l(Context context, fc5 fc5Var) {
        if (this.a != null) {
            this.a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.c = fc5Var;
        lx4 lx4Var = this.f;
        if (lx4Var != null) {
            lx4Var.notifyDataSetChanged();
        }
    }

    @Override // defpackage.wc5
    public final Parcelable m() {
        if (this.d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.c.q(this.f.getItem(i), this, 0);
    }
}
