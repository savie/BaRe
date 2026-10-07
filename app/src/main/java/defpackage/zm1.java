package defpackage;

import java.util.Comparator;

public final class zm1 implements Comparator<Object> {
    public final mt3[] a;

    public zm1(mt3[] mt3VarArr) {
        this.a = mt3VarArr;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        for (mt3 mt3Var : this.a) {
            Comparable comparable = (Comparable) mt3Var.invoke(obj);
            Comparable comparable2 = (Comparable) mt3Var.invoke(obj2);
            int i = ms8.n(comparable, comparable2);
            if (i != 0) {
                return i;
            }
        }
        return 0;
    }
}
