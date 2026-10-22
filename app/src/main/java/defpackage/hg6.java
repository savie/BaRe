package defpackage;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class hg6 {
    public final ig6 a = new ig6();
    public boolean b = false;
    public final int c = 1;

    public abstract int b();

    public long c(int i) {
        return -1L;
    }

    public int d(int i) {
        return 0;
    }

    public final void e() {
        this.a.b();
    }

    public final void f(int i) {
        this.a.d(null, i, 1);
    }

    public abstract void h(fh6 fh6Var, int i);

    public void i(fh6 fh6Var, int i, List list) {
        h(fh6Var, i);
    }

    public abstract fh6 j(ViewGroup viewGroup, int i);

    public void g(RecyclerView recyclerView) {
    }
}
