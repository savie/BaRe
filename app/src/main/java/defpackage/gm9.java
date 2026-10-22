package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gm9 extends rm9 {
    public final long a;

    public gm9(long j) {
        this.a = j;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        rm9 rm9Var = (rm9) obj;
        if (zza() != rm9Var.zza()) {
            return zza() - rm9Var.zza();
        }
        long jAbs = Math.abs(this.a);
        long jAbs2 = Math.abs(((gm9) rm9Var).a);
        if (jAbs < jAbs2) {
            return -1;
        }
        return jAbs > jAbs2 ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && gm9.class == obj.getClass() && this.a == ((gm9) obj).a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zza()), Long.valueOf(this.a)});
    }

    public final String toString() {
        return Long.toString(this.a);
    }

    @Override // defpackage.rm9
    public final int zza() {
        return rm9.c(this.a >= 0 ? (byte) 0 : (byte) 32);
    }
}
