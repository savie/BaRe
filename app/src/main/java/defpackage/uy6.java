package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uy6 extends zv1 {
    public final char[] m;

    public uy6(char[] cArr) {
        cArr.getClass();
        this.m = cArr;
        if (cArr.length == 0) {
            c6.f("SBA archive password must not be empty");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uy6)) {
            return false;
        }
        return Arrays.equals(this.m, ((uy6) obj).m);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.m);
    }

    public final String toString() {
        return "Aegis256(password=<redacted>)";
    }
}
