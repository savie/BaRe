package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gy1 {
    public final fy1 a;
    public final fy1 b;
    public final fy1 c;

    public gy1() {
        fy1 fy1Var = new fy1();
        fy1 fy1Var2 = new fy1();
        fy1 fy1Var3 = new fy1();
        this.a = fy1Var;
        this.b = fy1Var2;
        this.c = fy1Var3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gy1)) {
            return false;
        }
        gy1 gy1Var = (gy1) obj;
        return this.a.equals(gy1Var.a) && this.b.equals(gy1Var.b) && this.c.equals(gy1Var.c);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c);
    }

    public final String toString() {
        return String.format("%,d files, %,d directories, %,d bytes", Long.valueOf(this.c.a), Long.valueOf(this.b.a), Long.valueOf(this.a.a));
    }
}
