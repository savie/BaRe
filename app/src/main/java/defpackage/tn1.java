package defpackage;

import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tn1 {
    public String a = null;
    public final HashSet b;
    public final HashSet c;
    public int d;
    public int e;
    public mo1 f;
    public final HashSet g;

    public tn1(Class cls, Class[] clsArr) {
        HashSet hashSet = new HashSet();
        this.b = hashSet;
        this.c = new HashSet();
        this.d = 0;
        this.e = 0;
        this.g = new HashSet();
        hashSet.add(nc6.a(cls));
        for (Class cls2 : clsArr) {
            bb9.m(cls2, "Null interface");
            this.b.add(nc6.a(cls2));
        }
    }

    public final void a(ji2 ji2Var) {
        if (this.b.contains(ji2Var.a)) {
            c6.f("Components are not allowed to depend on interfaces they themselves provide.");
        } else {
            this.c.add(ji2Var);
        }
    }

    public final un1 b() {
        if (this.f != null) {
            return new un1(this.a, new HashSet(this.b), new HashSet(this.c), this.d, this.e, this.f, this.g);
        }
        l0.e("Missing required property: factory.");
        return null;
    }

    public final void c() {
        if (this.d == 0) {
            this.d = 2;
        } else {
            l0.e("Instantiation type has already been set.");
        }
    }

    public tn1(nc6 nc6Var, nc6[] nc6VarArr) {
        HashSet hashSet = new HashSet();
        this.b = hashSet;
        this.c = new HashSet();
        this.d = 0;
        this.e = 0;
        this.g = new HashSet();
        hashSet.add(nc6Var);
        for (nc6 nc6Var2 : nc6VarArr) {
            bb9.m(nc6Var2, "Null interface");
        }
        Collections.addAll(this.b, nc6VarArr);
    }
}
