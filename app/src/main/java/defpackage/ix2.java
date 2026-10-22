package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ix2 {
    public mt2 a;
    public au1 b;
    public Class c;
    public Class d;
    public String e;
    public String f;
    public String g;
    public boolean h;

    public final String a() {
        String str = this.e;
        if (str == null) {
            return str;
        }
        if (str.length() == 0) {
            this.e = "entry";
        }
        return this.e;
    }

    public final bw1 b(ai5 ai5Var) {
        if (this.d == null) {
            Class clsKeyType = this.a.keyType();
            this.d = clsKeyType;
            if (clsKeyType == Void.TYPE) {
                Class<Object>[] clsArrE = this.b.e();
                this.d = (clsArrE.length >= 0 && clsArrE.length != 0) ? clsArrE[0] : Object.class;
            }
        }
        Class cls = this.d;
        ln5 ln5Var = new ln5(cls, 4);
        ai5Var.getClass();
        return ((x44) ai5Var.d).e(cls) ? new p51(ai5Var, this, ln5Var) : new nz4(ai5Var, this, ln5Var);
    }

    public final String c() {
        String str = this.g;
        if (str == null) {
            return str;
        }
        if (str.length() == 0) {
            this.g = null;
        }
        return this.g;
    }

    public final bw1 d(ai5 ai5Var) {
        if (this.c == null) {
            Class clsValueType = this.a.valueType();
            this.c = clsValueType;
            if (clsValueType == Void.TYPE) {
                Class<Object>[] clsArrE = this.b.e();
                this.c = (clsArrE.length >= 1 && clsArrE.length != 0) ? clsArrE[1] : Object.class;
            }
        }
        Class cls = this.c;
        ln5 ln5Var = new ln5(cls, 4);
        ai5Var.getClass();
        return ((x44) ai5Var.d).e(cls) ? new b66(ai5Var, this, ln5Var) : new gp1(ai5Var, this, ln5Var);
    }

    public final String e() {
        String str = this.f;
        if (str == null) {
            return str;
        }
        if (str.length() == 0) {
            this.f = null;
        }
        return this.f;
    }

    public final String toString() {
        return String.format("%s on %s", this.a, this.b);
    }
}
