package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p98 implements Iterator, bo4 {
    public final /* synthetic */ int a;
    public Iterator b;
    public final Object c;

    public p98(q98 q98Var) {
        this.a = 0;
        this.c = q98Var;
        this.b = q98Var.a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.a) {
            case 0:
                break;
        }
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ((q98) obj).b.invoke(this.b.next());
            default:
                Object next = this.b.next();
                ArrayList arrayList = (ArrayList) obj;
                View view = (View) next;
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                ol8 ol8Var = viewGroup != null ? new ol8(viewGroup) : null;
                if (ol8Var == null || !ol8Var.hasNext()) {
                    while (!this.b.hasNext() && !arrayList.isEmpty()) {
                        this.b = (Iterator) el1.a1(arrayList);
                        el1.i1(arrayList);
                    }
                } else {
                    arrayList.add(this.b);
                    this.b = ol8Var;
                }
                return next;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public p98(ol8 ol8Var) {
        this.a = 1;
        this.c = new ArrayList();
        this.b = ol8Var;
    }
}
