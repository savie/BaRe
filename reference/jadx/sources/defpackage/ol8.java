package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ol8 implements Iterator, bo4 {
    public int a;
    public final /* synthetic */ ViewGroup b;

    public ol8(ViewGroup viewGroup) {
        this.b = viewGroup;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a < this.b.getChildCount();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        this.a = i + 1;
        View childAt = this.b.getChildAt(i);
        if (childAt != null) {
            return childAt;
        }
        l0.a();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.a - 1;
        this.a = i;
        this.b.removeViewAt(i);
    }
}
