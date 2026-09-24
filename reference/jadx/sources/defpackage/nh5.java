package defpackage;

import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nh5 {
    public static final ArrayList d;
    public final List a;
    public final ThreadLocal b = new ThreadLocal();
    public final LinkedHashMap c = new LinkedHashMap();

    static {
        ArrayList arrayList = new ArrayList(5);
        d = arrayList;
        arrayList.add(l73.c);
        arrayList.add(bl1.b);
        arrayList.add(o65.c);
        arrayList.add(c50.c);
        arrayList.add(yf6.a);
        arrayList.add(k81.d);
    }

    public nh5(kh5 kh5Var) {
        ArrayList arrayList = (ArrayList) kh5Var.b;
        int size = arrayList.size();
        ArrayList arrayList2 = d;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size);
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        this.a = Collections.unmodifiableList(arrayList3);
    }

    public final qi4 a(Class cls) {
        return b(cls, yh8.a, null);
    }

    public final qi4 b(Type type, Set set, String str) {
        qi4 qi4Var = null;
        if (type == null) {
            f6.n("type == null");
            return null;
        }
        if (set == null) {
            f6.n("annotations == null");
            return null;
        }
        Type typeF = yh8.f(yh8.a(type));
        Object objAsList = set.isEmpty() ? typeF : Arrays.asList(typeF, set);
        synchronized (this.c) {
            try {
                qi4 qi4Var2 = (qi4) this.c.get(objAsList);
                if (qi4Var2 != null) {
                    return qi4Var2;
                }
                mh5 mh5Var = (mh5) this.b.get();
                if (mh5Var == null) {
                    mh5Var = new mh5(this);
                    this.b.set(mh5Var);
                }
                ArrayDeque arrayDeque = mh5Var.b;
                ArrayList arrayList = mh5Var.a;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        lh5 lh5Var = new lh5(typeF, str, objAsList);
                        arrayList.add(lh5Var);
                        arrayDeque.add(lh5Var);
                        break;
                    }
                    lh5 lh5Var2 = (lh5) arrayList.get(i);
                    if (lh5Var2.c.equals(objAsList)) {
                        arrayDeque.add(lh5Var2);
                        qi4Var = lh5Var2.d;
                        if (qi4Var != null) {
                            break;
                        }
                        qi4Var = lh5Var2;
                        break;
                    }
                    i++;
                }
                try {
                    if (qi4Var != null) {
                        mh5Var.b(false);
                        return qi4Var;
                    }
                    try {
                        int size2 = this.a.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            qi4 qi4VarA = ((pi4) this.a.get(i2)).a(typeF, set, this);
                            if (qi4VarA != null) {
                                ((lh5) mh5Var.b.getLast()).d = qi4VarA;
                                mh5Var.b(true);
                                return qi4VarA;
                            }
                        }
                        throw new IllegalArgumentException("No JsonAdapter for " + yh8.i(typeF, set));
                    } catch (IllegalArgumentException e) {
                        throw mh5Var.a(e);
                    }
                } catch (Throwable th) {
                    mh5Var.b(false);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final qi4 c(ea eaVar, Type type, Set set) {
        if (set == null) {
            f6.n("annotations == null");
            return null;
        }
        Type typeF = yh8.f(yh8.a(type));
        List list = this.a;
        int iIndexOf = list.indexOf(eaVar);
        if (iIndexOf == -1) {
            g84.k(eaVar, "Unable to skip past unknown factory ");
            return null;
        }
        int size = list.size();
        for (int i = iIndexOf + 1; i < size; i++) {
            qi4 qi4VarA = ((pi4) list.get(i)).a(typeF, set, this);
            if (qi4VarA != null) {
                return qi4VarA;
            }
        }
        c6.f("No next JsonAdapter for ".concat(yh8.i(typeF, set)));
        return null;
    }
}
