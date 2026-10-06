package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.listitem.ListItemLayout;
import java.util.List;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class op3 implements jk8 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object k;
    public final Object n;
    public final Object p;
    public final Object q;

    public op3(q63 q63Var, List list, iu iuVar, f27 f27Var, cy0 cy0Var, od2 od2Var, String str, iz6 iz6Var, bt3 bt3Var, h07 h07Var) {
        q63Var.getClass();
        f27Var.getClass();
        iz6Var.getClass();
        bt3Var.getClass();
        this.a = q63Var;
        this.b = list;
        this.c = iuVar;
        this.d = f27Var;
        this.e = cy0Var;
        this.f = od2Var;
        this.k = str;
        this.n = iz6Var;
        this.p = bt3Var;
        this.q = h07Var;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ListItemLayout) this.a;
    }

    public op3(ListItemLayout listItemLayout, MCheckBox mCheckBox, View view, SwiftListItemCardView swiftListItemCardView, ImageView imageView, View view2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.a = listItemLayout;
        this.b = mCheckBox;
        this.c = view;
        this.e = swiftListItemCardView;
        this.f = imageView;
        this.d = view2;
        this.k = textView;
        this.n = textView2;
        this.p = textView3;
        this.q = textView4;
    }

    public /* synthetic */ op3(q63 q63Var, List list, iu iuVar, f27 f27Var, cy0 cy0Var, od2 od2Var, String str, iz6 iz6Var, bt3 bt3Var, c07 c07Var, int i) {
        this(q63Var, list, iuVar, f27Var, cy0Var, od2Var, (i & 64) != 0 ? null : str, iz6Var, (i & 256) != 0 ? new b7(3) : bt3Var, (i & 512) != 0 ? null : c07Var);
    }
}
