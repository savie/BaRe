package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class db8 implements Iterable {
    public s03 a;
    public final er4 b;
    public final er4 c;
    public final fh5 d;
    public final nv7 e = new nv7();
    public final q27 f;
    public final ri2 k;
    public final String n;
    public final String p;
    public uq4 q;
    public uq4 r;
    public final int t;

    public db8(q27 q27Var, ri2 ri2Var, String str, String str2, int i) {
        this.b = new er4(q27Var);
        this.c = new er4(q27Var);
        this.d = new fh5(ri2Var);
        this.k = ri2Var;
        this.f = q27Var;
        this.p = str2;
        this.t = i;
        this.n = str;
    }

    public final boolean c() {
        fh5 fh5Var = this.d;
        Iterator it = fh5Var.iterator();
        while (it.hasNext()) {
            for (db8 db8Var : (ah5) it.next()) {
                if (db8Var != null && !db8Var.isEmpty()) {
                    return true;
                }
            }
        }
        return !fh5Var.isEmpty();
    }

    public final db8 d(s03 s03Var) {
        db8 db8VarD = this.d.d(s03Var.getIndex(), s03Var.getFirst());
        if (s03Var.Y()) {
            return db8VarD != null ? db8VarD.d(s03Var.l0(1, 0)) : db8VarD;
        }
        return db8VarD;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final db8 e(int i, String str, String str2) {
        fh5 fh5Var = this.d;
        db8 db8VarD = fh5Var.d(i, str);
        if (db8VarD != null) {
            return db8VarD;
        }
        db8 db8Var = new db8(this.f, this.k, str, str2, i);
        if (str != null) {
            ah5 ah5Var = (ah5) fh5Var.get(str);
            if (ah5Var == null) {
                ah5Var = new ah5();
                fh5Var.put(str, ah5Var);
            }
            ah5Var.c(db8Var);
            this.e.add(str);
        }
        return db8Var;
    }

    public final void f(uq4 uq4Var) throws w70, sf5, wt1 {
        if (uq4Var.h()) {
            String name = uq4Var.getName();
            er4 er4Var = this.b;
            if (er4Var.get(name) != 0) {
                throw new w70("Duplicate annotation of name '%s' on %s", name, uq4Var);
            }
            er4Var.put(name, uq4Var);
            return;
        }
        if (uq4Var.j()) {
            if (this.q != null) {
                throw new sf5("Duplicate text annotation on %s", uq4Var);
            }
            this.q = uq4Var;
            return;
        }
        String name2 = uq4Var.getName();
        er4 er4Var2 = this.c;
        if (er4Var2.get(name2) != 0) {
            throw new wt1("Duplicate annotation of name '%s' on %s", name2, uq4Var);
        }
        nv7 nv7Var = this.e;
        if (!nv7Var.contains(name2)) {
            nv7Var.add(name2);
        }
        if (uq4Var.p()) {
            this.r = uq4Var;
        }
        er4Var2.put(name2, uq4Var);
    }

    public final void g(Class cls) throws w70, sf5, wt1 {
        er4<uq4> er4Var = this.c;
        for (uq4 uq4Var : er4Var) {
            if (uq4Var != null) {
                i(uq4Var);
            }
        }
        er4<uq4> er4Var2 = this.b;
        for (uq4 uq4Var2 : er4Var2) {
            if (uq4Var2 != null) {
                i(uq4Var2);
            }
        }
        uq4 uq4Var3 = this.q;
        if (uq4Var3 != null) {
            i(uq4Var3);
        }
        for (String str : er4Var2.keySet()) {
            if (((uq4) er4Var2.get(str)) == null) {
                throw new w70("Ordered attribute '%s' does not exist in %s", str, cls);
            }
            s03 s03Var = this.a;
            if (s03Var != null) {
                s03Var.getAttribute(str);
            }
        }
        Iterator it = er4Var.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            fh5 fh5Var = this.d;
            if (!zHasNext) {
                Iterator it2 = fh5Var.iterator();
                while (it2.hasNext()) {
                    int i = 1;
                    for (db8 db8Var : (ah5) it2.next()) {
                        if (db8Var != null) {
                            String str2 = db8Var.n;
                            int i2 = db8Var.t;
                            int i3 = i + 1;
                            if (i2 != i) {
                                throw new wt1("Path section '%s[%s]' is out of sequence in %s", str2, Integer.valueOf(i2), cls);
                            }
                            db8Var.g(cls);
                            i = i3;
                        }
                    }
                }
                if (this.q != null) {
                    if (!er4Var.isEmpty()) {
                        throw new sf5("Text annotation %s used with elements in %s", this.q, cls);
                    }
                    if (c()) {
                        throw new sf5("Text annotation %s can not be used with paths in %s", this.q, cls);
                    }
                    return;
                }
                return;
            }
            String str3 = (String) it.next();
            ah5 ah5Var = (ah5) fh5Var.get(str3);
            uq4 uq4Var4 = (uq4) er4Var.get(str3);
            if (ah5Var == null && uq4Var4 == null) {
                throw new wt1("Ordered element '%s' does not exist in %s", str3, cls);
            }
            if (ah5Var != null && uq4Var4 != null && !ah5Var.isEmpty()) {
                throw new wt1("Element '%s' is also a path name in %s", str3, cls);
            }
            s03 s03Var2 = this.a;
            if (s03Var2 != null) {
                s03Var2.b(str3);
            }
        }
    }

    public final void i(uq4 uq4Var) throws sf5 {
        s03 s03VarF = uq4Var.f();
        s03 s03Var = this.a;
        if (s03Var == null) {
            this.a = s03VarF;
            return;
        }
        String strA = s03Var.a();
        String strA2 = s03VarF.a();
        if (!strA.equals(strA2)) {
            throw new sf5("Path '%s' does not match '%s' in %s", strA, strA2, this.k);
        }
    }

    public final boolean isEmpty() {
        if (this.q == null && this.c.isEmpty() && this.b.isEmpty()) {
            return !c();
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = this.e.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return arrayList.iterator();
    }

    public final String toString() {
        return u48.m("model '", this.n, "[", this.t, "]'");
    }
}
