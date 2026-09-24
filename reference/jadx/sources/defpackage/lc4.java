package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lc4 implements mc4 {
    public final nc4 a;
    public final gd b;
    public final mc4 c;
    public final bz2 d;

    public lc4(mc4 mc4Var, gd gdVar, bz2 bz2Var) {
        this.a = new nc4(this, bz2Var);
        this.b = gdVar;
        this.c = mc4Var;
        this.d = bz2Var;
    }

    @Override // defpackage.mc4
    public final boolean b() {
        return true;
    }

    @Override // defpackage.mc4
    public final mc4 d() {
        return this.b.l(this);
    }

    @Override // defpackage.mc4
    public final mc4 f(String str) {
        gd gdVar = this.b;
        cz2 cz2Var = (cz2) gdVar.c;
        pc4 pc4Var = (pc4) gdVar.d;
        if (!pc4Var.contains(this) && !pc4Var.isEmpty()) {
            return null;
        }
        for (bz2 bz2VarPeek = cz2Var.peek(); bz2VarPeek != null; bz2VarPeek = cz2Var.peek()) {
            if (bz2VarPeek.j()) {
                bz2 bz2VarPeek2 = ((cz2) gdVar.c).peek();
                if (bz2VarPeek2.j()) {
                    ((StringBuilder) gdVar.b).append(bz2VarPeek2.getValue());
                }
            } else if (bz2VarPeek.m0()) {
                if (pc4Var.c() == this) {
                    break;
                }
                pc4Var.pop();
            } else if (bz2VarPeek.S()) {
                String name = bz2VarPeek.getName();
                if (!(name == null ? false : name.equals(str))) {
                    break;
                }
                return gdVar.l(this);
            }
            cz2Var.next();
        }
        return null;
    }

    @Override // defpackage.mc4
    public final mc4 getAttribute(String str) {
        return (mc4) this.a.get(str);
    }

    @Override // defpackage.mc4
    public final xn5 getAttributes() {
        return this.a;
    }

    @Override // defpackage.pn5
    public final String getName() {
        return this.d.getName();
    }

    @Override // defpackage.mc4
    public final mc4 getParent() {
        return this.c;
    }

    @Override // defpackage.mc4
    public final tr9 getPosition() {
        tr9 tr9Var = new tr9(9, false);
        tr9Var.b = this.d;
        return tr9Var;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0054  */
    /* JADX WARN: Code duplicated, block: B:27:0x006d  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f A[SYNTHETIC] */
    @Override // defpackage.pn5
    public final String getValue() {
        bz2 bz2VarPeek;
        bz2 bz2VarPeek2;
        gd gdVar = this.b;
        StringBuilder sb = (StringBuilder) gdVar.b;
        cz2 cz2Var = (cz2) gdVar.c;
        pc4 pc4Var = (pc4) gdVar.d;
        if (!pc4Var.contains(this) && !pc4Var.isEmpty()) {
            return null;
        }
        if (sb.length() > 0 || !cz2Var.peek().m0()) {
            for (bz2VarPeek = cz2Var.peek(); pc4Var.c() == this && bz2VarPeek.j(); bz2VarPeek = cz2Var.peek()) {
                bz2VarPeek2 = cz2Var.peek();
                if (bz2VarPeek2.j()) {
                    ((StringBuilder) gdVar.b).append(bz2VarPeek2.getValue());
                }
                cz2Var.next();
            }
            if (sb.length() > 0) {
                String string = sb.toString();
                sb.setLength(0);
                return string;
            }
        } else if (pc4Var.c() != this) {
            pc4Var.pop();
            cz2Var.next();
            while (pc4Var.c() == this) {
                bz2VarPeek2 = cz2Var.peek();
                if (bz2VarPeek2.j()) {
                    ((StringBuilder) gdVar.b).append(bz2VarPeek2.getValue());
                }
                cz2Var.next();
            }
            if (sb.length() > 0) {
                String string2 = sb.toString();
                sb.setLength(0);
                return string2;
            }
        }
        return null;
    }

    public final boolean k() {
        if (!this.a.isEmpty()) {
            return false;
        }
        gd gdVar = this.b;
        return ((pc4) gdVar.d).c() == this && ((cz2) gdVar.c).peek().m0();
    }

    public final void l() {
        while (this.b.l(this) != null) {
        }
    }

    public final String toString() {
        return xs1.j("element ", this.d.getName());
    }
}
