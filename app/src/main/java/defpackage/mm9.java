package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mm9 extends rm9 {
    public final String a;

    public mm9(String str) {
        this.a = str;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        rm9 rm9Var = (rm9) obj;
        int iZza = rm9Var.zza();
        int iC = rm9.c((byte) 96);
        if (iC != iZza) {
            return iC - rm9Var.zza();
        }
        String str = ((mm9) rm9Var).a;
        int length = str.length();
        String str2 = this.a;
        if (str2.length() == length) {
            return str2.compareTo(str);
        }
        return str2.length() - str.length();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && mm9.class == obj.getClass()) {
            return this.a.equals(((mm9) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(rm9.c((byte) 96)), this.a});
    }

    public final String toString() {
        return dj7.n(new StringBuilder("\""), this.a, "\"");
    }

    @Override // defpackage.rm9
    public final int zza() {
        return rm9.c((byte) 96);
    }
}
