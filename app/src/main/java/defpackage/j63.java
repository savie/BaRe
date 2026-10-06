package defpackage;

import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j63 {
    public final Class a;
    public final String b;

    public j63(Field field) {
        this.a = field.getDeclaringClass();
        this.b = field.getName();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j63)) {
            return false;
        }
        j63 j63Var = (j63) obj;
        if (j63Var.a != this.a) {
            return false;
        }
        return j63Var.b.equals(this.b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
