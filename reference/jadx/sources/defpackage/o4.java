package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class o4 extends m4 implements List {
    public final /* synthetic */ q4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o4(q4 q4Var, Object obj, List list, m4 m4Var) {
        super(q4Var, obj, list, m4Var);
        this.f = q4Var;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        d();
        boolean zIsEmpty = this.b.isEmpty();
        ((List) this.b).add(i, obj);
        this.f.e++;
        if (zIsEmpty) {
            c();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.b).addAll(i, collection);
        if (zAddAll) {
            this.f.e += this.b.size() - size;
            if (size == 0) {
                c();
            }
        }
        return zAddAll;
    }

    @Override // java.util.List
    public final Object get(int i) {
        d();
        return ((List) this.b).get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        d();
        return ((List) this.b).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        d();
        return ((List) this.b).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        d();
        return new n4(this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        d();
        Object objRemove = ((List) this.b).remove(i);
        this.f.e--;
        e();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        d();
        return ((List) this.b).set(i, obj);
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        d();
        List listSubList = ((List) this.b).subList(i, i2);
        m4 m4Var = this.c;
        if (m4Var == null) {
            m4Var = this;
        }
        boolean z = listSubList instanceof RandomAccess;
        q4 q4Var = this.f;
        Object obj = this.a;
        return z ? new i4(q4Var, obj, listSubList, m4Var) : new o4(q4Var, obj, listSubList, m4Var);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        d();
        return new n4(this, i);
    }
}
