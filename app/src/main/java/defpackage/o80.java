package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o80 extends d80 {
    public static final Parcelable.Creator<o80> CREATOR = new l91(5);
    public final xx2 a;
    public final String b;
    public final int c;

    public o80(int i, int i2, String str) {
        try {
            this.a = xx2.c(i);
            this.b = str;
            this.c = i2;
        } catch (wx2 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof o80)) {
            return false;
        }
        o80 o80Var = (o80) obj;
        return x13.m(this.a, o80Var.a) && x13.m(this.b, o80Var.b) && x13.m(Integer.valueOf(this.c), Integer.valueOf(o80Var.c));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, Integer.valueOf(this.c)});
    }

    public final String toString() {
        u00 u00Var = new u00(getClass().getSimpleName());
        String strValueOf = String.valueOf(this.a.a);
        p99 p99Var = new p99();
        ((s02) u00Var.d).c = p99Var;
        u00Var.d = p99Var;
        p99Var.b = strValueOf;
        p99Var.a = "errorCode";
        String str = this.b;
        if (str != null) {
            u00Var.l(str, "errorMessage");
        }
        return u00Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        int i2 = this.a.a;
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(i2);
        yc9.w0(parcel, 3, this.b);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.c);
        yc9.G0(parcel, iF0);
    }
}
