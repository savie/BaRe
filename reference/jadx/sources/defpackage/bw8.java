package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bw8 {
    public zv8 a;
    public aw8 b;
    public int c;
    public yv8 d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && bw8.class == obj.getClass()) {
            bw8 bw8Var = (bw8) obj;
            if (this.c == bw8Var.c && this.a == bw8Var.a && this.b == bw8Var.b && this.d == bw8Var.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, Integer.valueOf(this.c), this.d);
    }

    public final String toString() {
        return String.format("WindowsVersion[%s, %s, %d, %s]", this.a, this.b, Integer.valueOf(this.c), this.d);
    }
}
