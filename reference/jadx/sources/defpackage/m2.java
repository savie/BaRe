package defpackage;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m2 {
    public static final HashMap e;
    public static final d2 f;
    public static final e2 g;
    public static final g2 h;
    public static final h2 i;
    public static final i2 j;
    public static final j2 k;
    public static final k2 l;
    public static final l2 m;
    public final n2 a;
    public final int b;
    public final Set c;
    public final d0 d;

    static {
        HashMap map = new HashMap();
        e = map;
        d0 d0Var = d0.PRIMITIVE;
        d2 d2Var = new d2(1, d0Var);
        f = d2Var;
        e2 e2Var = new e2(2, d0Var);
        g = e2Var;
        d0 d0Var2 = d0.CONSTRUCTED;
        EnumSet enumSetOf = EnumSet.of(d0Var, d0Var2);
        n2 n2Var = n2.UNIVERSAL;
        f2 f2Var = new f2(n2Var, 3, d0Var, enumSetOf);
        g2 g2Var = new g2(n2Var, 4, EnumSet.of(d0Var, d0Var2));
        h = g2Var;
        h2 h2Var = new h2(5, d0Var);
        i = h2Var;
        i2 i2Var = new i2(6, d0Var);
        j = i2Var;
        j2 j2Var = new j2(10, d0Var);
        k = j2Var;
        k2 k2Var = new k2(17, d0Var2);
        l = k2Var;
        l2 l2Var = new l2(16, d0Var2);
        m = l2Var;
        map.put(1, d2Var);
        map.put(2, e2Var);
        map.put(3, f2Var);
        map.put(4, g2Var);
        map.put(5, h2Var);
        map.put(6, i2Var);
        map.put(10, j2Var);
        map.put(17, k2Var);
        map.put(16, l2Var);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public m2(n2 n2Var, int i2, EnumSet enumSet) {
        d0 d0Var = d0.PRIMITIVE;
        this(n2Var, i2, enumSet.contains(d0Var) ? d0Var : d0.CONSTRUCTED, enumSet);
    }

    public static m2 b(n2 n2Var, int i2) {
        int iOrdinal = n2Var.ordinal();
        HashMap map = e;
        if (iOrdinal == 0) {
            for (m2 m2Var : map.values()) {
                if (m2Var.b == i2 && n2Var == m2Var.a) {
                    return m2Var;
                }
            }
        } else if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
            return new c2(n2Var, i2, EnumSet.of(d0.PRIMITIVE, d0.CONSTRUCTED));
        }
        throw new o1(String.format("Unknown ASN.1 tag '%s:%s' found (%s)", n2Var, Integer.valueOf(i2), map));
    }

    public final m2 a(d0 d0Var) {
        if (this.d == d0Var) {
            return this;
        }
        if (!this.c.contains(d0Var)) {
            l0.i("The ASN.1 tag %s does not support encoding as %s", new Object[]{this, d0Var});
            return null;
        }
        return new b2(this, this.a, this.b, d0Var, this.c);
    }

    public abstract ol1 c(nh4 nh4Var);

    public abstract ol1 d(nh4 nh4Var);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            m2 m2Var = (m2) obj;
            if (this.b == m2Var.b && this.a == m2Var.a && this.d == m2Var.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, Integer.valueOf(this.b), this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ASN1Tag[");
        sb.append(this.a);
        sb.append(",");
        sb.append(this.d);
        sb.append(",");
        return eq3.m(sb, this.b, ']');
    }

    public m2(int i2, d0 d0Var) {
        this(n2.UNIVERSAL, i2, d0Var, EnumSet.of(d0Var));
    }

    public m2(n2 n2Var, int i2, d0 d0Var, Set set) {
        this.a = n2Var;
        this.b = i2;
        this.c = set;
        this.d = d0Var;
    }
}
