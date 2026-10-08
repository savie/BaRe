package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xl9 extends rm9 {
    public final boolean a;

    public xl9(boolean z) {
        this.a = z;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        rm9 rm9Var = (rm9) obj;
        int iZza = rm9Var.zza();
        int iC = rm9.c((byte) -32);
        if (iC != iZza) {
            return iC - rm9Var.zza();
        }
        return (true != this.a ? 20 : 21) - (true != ((xl9) rm9Var).a ? 20 : 21);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && xl9.class == obj.getClass() && this.a == ((xl9) obj).a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(rm9.c((byte) -32)), Boolean.valueOf(this.a)});
    }

    public final String toString() {
        return Boolean.toString(this.a);
    }

    @Override // defpackage.rm9
    public final int zza() {
        return rm9.c((byte) -32);
    }
}
