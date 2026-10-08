package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.MAppBarLayout;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x00 implements jk8, gd4 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public x00(ai5 ai5Var, wi8 wi8Var) {
        this.a = 4;
        this.d = wi8Var.getType();
        this.b = ai5Var;
        this.c = wi8Var;
    }

    public static x00 a(View view) {
        int i = R.id.rv_applied_filters;
        if (((QuickRecyclerView) ms8.u(view, R.id.rv_applied_filters)) != null) {
            i = R.id.search_view;
            SimpleSearchView simpleSearchView = (SimpleSearchView) ms8.u(view, R.id.search_view);
            if (simpleSearchView != null) {
                i = R.id.toolbar_mini;
                View viewU = ms8.u(view, R.id.toolbar_mini);
                if (viewU != null) {
                    return new x00((MAppBarLayout) view, simpleSearchView, tf2.a(viewU), 0);
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static void b(db8 db8Var, s03 s03Var) {
        String prefix = s03Var.getPrefix();
        String first = s03Var.getFirst();
        int index = s03Var.getIndex();
        if (s03Var.Y()) {
            b(db8Var.e(index, first, prefix), s03Var.mo74a());
            return;
        }
        String first2 = s03Var.getFirst();
        if (first2 != null) {
            db8Var.b.put(first2, null);
        }
    }

    @Override // defpackage.gd4
    public boolean c() {
        return ((wi8) this.c).c();
    }

    @Override // defpackage.gd4
    public Object d() {
        wi8 wi8Var = (wi8) this.c;
        if (wi8Var.c()) {
            return wi8Var.getValue();
        }
        Object objD = ((ai5) this.b).k((Class) this.d).d();
        wi8Var.setValue(objD);
        return objD;
    }

    @Override // defpackage.gd4
    public Object e(Object obj) {
        wi8 wi8Var = (wi8) this.c;
        if (wi8Var != null) {
            wi8Var.setValue(obj);
        }
        return obj;
    }

    public void f(db8 db8Var, s03 s03Var) throws sf5 {
        String prefix = s03Var.getPrefix();
        String first = s03Var.getFirst();
        int index = s03Var.getIndex();
        if (first != null) {
            db8 db8VarE = db8Var.e(index, first, prefix);
            s03 s03VarMo74a = s03Var.mo74a();
            if (s03Var.Y()) {
                f(db8VarE, s03VarMo74a);
            }
        }
        String prefix2 = s03Var.getPrefix();
        String first2 = s03Var.getFirst();
        int index2 = s03Var.getIndex();
        if (index2 > 1) {
            if (db8Var.d.d(index2 - 1, first2) == null) {
                throw new sf5("Ordered element '%s' in path '%s' is out of sequence for %s", first2, s03Var, (ri2) this.d);
            }
        }
        db8Var.e(index2, first2, prefix2);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 0:
                return (MAppBarLayout) this.b;
            default:
                return (TextInputLayout) this.b;
        }
    }

    @Override // defpackage.gd4
    public Class getType() {
        return (Class) this.d;
    }

    public /* synthetic */ x00(LinearLayout linearLayout, View view, Object obj, int i) {
        this.a = i;
        this.b = linearLayout;
        this.c = view;
        this.d = obj;
    }

    public /* synthetic */ x00() {
        this.a = 1;
    }

    public x00(dr drVar, ri2 ri2Var, x44 x44Var) {
        this.a = 3;
        this.c = (vq3) x44Var.n;
        this.b = drVar;
        this.d = ri2Var;
    }
}
