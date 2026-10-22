package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sa6 extends i5 {
    public static final Parcelable.Creator<sa6> CREATOR = new r39(11);
    public final wa6 a;
    public final az0 b;

    public sa6(String str, int i) {
        ly8.h(str);
        try {
            this.a = wa6.c(str);
            try {
                this.b = az0.c(i);
            } catch (zy0 e) {
                throw new IllegalArgumentException(e);
            }
        } catch (va6 e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof sa6)) {
            return false;
        }
        sa6 sa6Var = (sa6) obj;
        return this.a.equals(sa6Var.a) && this.b.equals(sa6Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public final String toString() {
        return eq3.l("PublicKeyCredentialParameters{\n type=", String.valueOf(this.a), ", \n algorithm=", String.valueOf(this.b), "\n }");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        this.a.getClass();
        yc9.w0(parcel, 2, "public-key");
        yc9.p0(parcel, 3, Integer.valueOf(this.b.a.a()));
        yc9.G0(parcel, iF0);
    }
}
