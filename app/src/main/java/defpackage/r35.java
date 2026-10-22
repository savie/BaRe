package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class r35 extends hg6 {
    public List d;
    public qt3 e;

    public r35(List list) {
        list.getClass();
        this.d = list;
        if (list.isEmpty()) {
            return;
        }
        m(this, this.d);
    }

    public static void m(r35 r35Var, List list) {
        r35Var.getClass();
        list.getClass();
        r35Var.d = list;
        r35Var.e();
    }

    @Override // defpackage.hg6
    public final int b() {
        return this.d.size();
    }

    @Override // defpackage.hg6
    public final fh6 j(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(k(i), viewGroup, false);
        viewInflate.getClass();
        return l(viewInflate, i);
    }

    public abstract int k(int i);

    public abstract fh6 l(View view, int i);

    public /* synthetic */ r35() {
        this(ov2.a);
    }
}
