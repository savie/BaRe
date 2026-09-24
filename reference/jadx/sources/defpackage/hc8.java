package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hc8 {
    public final Class a;
    public final gc8[] b;
    public final int c;

    public hc8(Class cls, gc8[] gc8VarArr, int i) {
        this.a = cls;
        this.b = gc8VarArr;
        this.c = (cls.hashCode() * 31) + i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != hc8.class) {
            return false;
        }
        hc8 hc8Var = (hc8) obj;
        if (this.c == hc8Var.c && this.a == hc8Var.a) {
            gc8[] gc8VarArr = hc8Var.b;
            gc8[] gc8VarArr2 = this.b;
            int length = gc8VarArr2.length;
            if (length == gc8VarArr.length) {
                for (int i = 0; i < length; i++) {
                    if (!Objects.equals(gc8VarArr2[i], gc8VarArr[i])) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return this.a.getName().concat("<>");
    }
}
