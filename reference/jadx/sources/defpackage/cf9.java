package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cf9 implements Serializable, xe9 {
    public final Object a;

    public cf9(Object obj) {
        this.a = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof cf9)) {
            return false;
        }
        Object obj2 = ((cf9) obj).a;
        Object obj3 = this.a;
        return obj3 == obj2 || obj3.equals(obj2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    public final String toString() {
        return eq3.k("Suppliers.ofInstance(", this.a.toString(), ")");
    }

    @Override // defpackage.xe9
    public final Object zza() {
        return this.a;
    }
}
