package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kg9 extends se9 {
    public final int a;
    public final int b;
    public final int c;
    public final ig9 d;

    public kg9(int i, int i2, int i3, ig9 ig9Var) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = ig9Var;
    }

    public static bs2 b() {
        bs2 bs2Var = new bs2(5);
        bs2Var.b = null;
        bs2Var.c = null;
        bs2Var.d = null;
        bs2Var.e = ig9.e;
        return bs2Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.d != ig9.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof kg9)) {
            return false;
        }
        kg9 kg9Var = (kg9) obj;
        return kg9Var.a == this.a && kg9Var.b == this.b && kg9Var.c == this.c && kg9Var.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(kg9.class, Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), this.d);
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("AesGcm Parameters (variant: ", String.valueOf(this.d), ", ", this.b, "-byte IV, ");
        sbV.append(this.c);
        sbV.append("-byte tag, and ");
        sbV.append(this.a);
        sbV.append("-byte key)");
        return sbV.toString();
    }
}
