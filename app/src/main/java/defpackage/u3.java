package defpackage;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u3 {
    public final Object[] a;
    public final int b;

    public u3(Object... objArr) {
        this.a = objArr;
        this.b = Objects.hash(objArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && u3.class == obj.getClass()) {
            return Arrays.deepEquals(this.a, ((u3) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.b;
    }
}
