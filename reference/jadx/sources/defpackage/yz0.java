package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.listitem.ListItemLayout;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yz0 implements jk8 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object k;
    public Object n;

    public yz0(q27 q27Var, ai5 ai5Var) {
        this.a = 0;
        this.c = q27Var.i();
        this.e = q27Var.k();
        this.f = q27Var.f();
        this.k = q27Var.c();
        this.d = q27Var.h();
        this.b = q27Var.l();
        this.n = ai5Var;
    }

    public static yz0 a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = R.id.image_icon;
        ImageView imageView = (ImageView) ms8.u(view, R.id.image_icon);
        if (imageView != null) {
            i = R.id.iv_menu;
            ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_menu);
            if (imageView2 != null) {
                i = R.id.tv_subtitle1;
                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                if (textView != null) {
                    i = R.id.tv_subtitle2;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle2);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new yz0(constraintLayout, constraintLayout, imageView, imageView2, textView, textView2, textView3, 3);
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static void b(uq4 uq4Var, er4 er4Var) {
        String name = uq4Var.getName();
        String strA = uq4Var.a();
        if (!er4Var.containsKey(name)) {
            er4Var.put(name, uq4Var);
        } else if (!((uq4) er4Var.get(name)).a().equals(name)) {
            er4Var.remove(name);
        }
        er4Var.put(strA, uq4Var);
    }

    public uq4 c(tw5 tw5Var) {
        ((hz0) tw5Var).getClass();
        er4 er4Var = (er4) this.e;
        ((hz0) tw5Var).getClass();
        uq4 uq4Var = (uq4) er4Var.get(null);
        return uq4Var == null ? (uq4) er4Var.get(null) : uq4Var;
    }

    public void d(er4 er4Var) throws wt1 {
        Iterator it = er4Var.iterator();
        while (it.hasNext()) {
            uq4 uq4Var = (uq4) it.next();
            if (uq4Var != null && uq4Var.k().g()) {
                throw new wt1("Default constructor can not accept read only %s in %s", uq4Var, (ri2) this.n);
            }
        }
    }

    public void e(er4 er4Var, ArrayList arrayList) throws wt1 {
        Iterator it = er4Var.iterator();
        while (it.hasNext()) {
            uq4 uq4Var = (uq4) it.next();
            if (uq4Var != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    uf7 uf7Var = ((wf7) it2.next()).b;
                    au1 au1VarK = uq4Var.k();
                    Object key = uq4Var.getKey();
                    if (au1VarK.g() && ((tw5) uf7Var.a.get(key)) == null) {
                        it2.remove();
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            throw new wt1("No constructor accepts all read only values in %s", (ri2) this.n);
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 1:
                return (ListItemLayout) this.b;
            default:
                return (ConstraintLayout) this.b;
        }
    }

    public /* synthetic */ yz0(ViewGroup viewGroup, View view, View view2, ImageView imageView, TextView textView, TextView textView2, TextView textView3, int i) {
        this.a = i;
        this.b = viewGroup;
        this.c = view;
        this.d = view2;
        this.e = imageView;
        this.f = textView;
        this.k = textView2;
        this.n = textView3;
    }

    public /* synthetic */ yz0() {
        this.a = 2;
    }
}
