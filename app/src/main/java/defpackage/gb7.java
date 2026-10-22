package defpackage;

import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gb7 {
    public final fb7 a;
    public final Object b;

    public gb7(fb7 fb7Var, final Object obj) {
        this.a = fb7Var;
        this.b = obj;
        if (obj == null || Stream.of((Object[]) ((j3) tk1.a.get(fb7Var)).a).anyMatch(new Predicate() { // from class: i3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj2) {
                return ((Class) obj2).isInstance(obj);
            }
        })) {
            return;
        }
        StringBuilder sb = new StringBuilder("The ");
        sb.append(fb7Var);
        d6.l(sb, " method doesn't support options of type ", obj.getClass());
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && gb7.class == obj.getClass()) {
            gb7 gb7Var = (gb7) obj;
            if (Objects.equals(this.a, gb7Var.a) && Objects.equals(this.b, gb7Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        fb7 fb7Var = this.a;
        if (fb7Var == null) {
            return 0;
        }
        return fb7Var.hashCode();
    }
}
