package defpackage;

import java.util.AbstractSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qw7 {
    public final String a;
    public final Map b;
    public final Set c;
    public final Set d;

    public qw7(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        abstractSet.getClass();
        this.a = str;
        this.b = map;
        this.c = abstractSet;
        this.d = abstractSet2;
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qw7)) {
            return false;
        }
        qw7 qw7Var = (qw7) obj;
        if (!this.a.equals(qw7Var.a) || !this.b.equals(qw7Var.b) || !pe4.d(this.c, qw7Var.c)) {
            return false;
        }
        Set set2 = this.d;
        if (set2 == null || (set = qw7Var.d) == null) {
            return true;
        }
        return set2.equals(set);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |TableInfo {\n            |    name = '");
        sb.append(this.a);
        sb.append("',\n            |    columns = {");
        sb.append(ji8.l(el1.n1(this.b.values(), new b01(3))));
        sb.append("\n            |    foreignKeys = {");
        sb.append(ji8.l(this.c));
        sb.append("\n            |    indices = {");
        Set set = this.d;
        sb.append(ji8.l(set != null ? el1.n1(set, new nx(8)) : ov2.a));
        sb.append("\n            |}\n        ");
        return oq7.M(sb.toString());
    }
}
