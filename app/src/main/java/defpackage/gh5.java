package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gh5 implements d67 {
    public er4 a;
    public er4 b;
    public fh5 c;
    public final db8 d;

    public gh5(db8 db8Var) {
        this.d = db8Var;
    }

    @Override // defpackage.d67
    public final String J(String str) {
        s03 s03Var = this.d.a;
        return s03Var == null ? str : s03Var.b(str);
    }

    @Override // defpackage.d67
    public final uq4 b(String str) {
        return (uq4) b0().remove(str);
    }

    @Override // defpackage.d67
    public final er4 b0() {
        if (this.b == null) {
            this.b = this.d.c.d();
        }
        return this.b;
    }

    @Override // defpackage.d67
    public final String getAttribute(String str) {
        s03 s03Var = this.d.a;
        return s03Var == null ? str : s03Var.getAttribute(str);
    }

    @Override // defpackage.d67
    public final er4 getAttributes() {
        if (this.a == null) {
            this.a = this.d.b.d();
        }
        return this.a;
    }

    @Override // defpackage.d67
    public final String getPrefix() {
        return this.d.p;
    }

    @Override // defpackage.d67
    public final uq4 getText() {
        db8 db8Var = this.d;
        uq4 uq4Var = db8Var.r;
        return uq4Var != null ? uq4Var : db8Var.q;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return arrayList.iterator();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007f  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.d67
    public final d67 r(String str) throws sf5 {
        db8 db8Var;
        if (this.c == null) {
            fh5 fh5Var = this.d.d;
            ri2 ri2Var = fh5Var.a;
            fh5 fh5Var2 = new fh5(ri2Var);
            for (K k : fh5Var.keySet()) {
                ah5 ah5Var = (ah5) fh5Var.get(k);
                if (ah5Var != null) {
                    ah5 ah5Var2 = new ah5();
                    Iterator<E> it = ah5Var.iterator();
                    while (it.hasNext()) {
                        ah5Var2.c((db8) it.next());
                    }
                    ah5Var = ah5Var2;
                }
                if (fh5Var2.containsKey(k)) {
                    throw new sf5("Path with name '%s' is a duplicate in %s ", k, ri2Var);
                }
                fh5Var2.put(k, ah5Var);
            }
            this.c = fh5Var2;
        }
        ah5 ah5Var3 = (ah5) this.c.get(str);
        if (ah5Var3 != null) {
            while (!ah5Var3.isEmpty()) {
                db8Var = (db8) ah5Var3.remove(0);
                if (!db8Var.isEmpty()) {
                    if (db8Var != null) {
                        return new gh5(db8Var);
                    }
                }
            }
            db8Var = null;
            if (db8Var != null) {
                return new gh5(db8Var);
            }
        }
        return null;
    }
}
