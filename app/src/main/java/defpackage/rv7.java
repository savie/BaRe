package defpackage;

import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rv7 {
    public final q63 a;
    public final String b = eq3.j(String.valueOf(System.currentTimeMillis() + ((long) (new Random().nextInt(100) + 1))), ".wal");

    public rv7(q63 q63Var) {
        this.a = q63Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rv7) && this.a.equals(((rv7) obj).a);
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return "SystemWall(srcFile=" + this.a + ")";
    }
}
