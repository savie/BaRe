package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class en6 implements Serializable {
    public final Object a;

    public static final Throwable a(Object obj) {
        if (obj instanceof bn6) {
            return ((bn6) obj).a;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof en6) {
            return pe4.d(this.a, ((en6) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.a;
        if (obj instanceof bn6) {
            return ((bn6) obj).toString();
        }
        return "Success(" + obj + ')';
    }
}
