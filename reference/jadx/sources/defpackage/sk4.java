package defpackage;

import java.io.Serializable;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sk4 implements Serializable {
    public static final sk4 b = new sk4(null);
    public final Set a;

    public sk4(Set set) {
        this.a = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == sk4.class) {
            if (Objects.equals(this.a, ((sk4) obj).a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Set set = this.a;
        if (set == null) {
            return 0;
        }
        return set.size();
    }

    public final String toString() {
        return String.format("JsonIncludeProperties.Value(included=%s)", this.a);
    }
}
