package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f58 extends i5 {
    public static final Parcelable.Creator<f58> CREATOR = new f9(13);
    public final d58 a;
    public final String b;

    static {
        new f58("supported", null);
        new f58("not-supported", null);
    }

    public f58(String str, String str2) {
        ly8.h(str);
        try {
            this.a = d58.c(str);
            this.b = str2;
        } catch (e58 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f58)) {
            return false;
        }
        f58 f58Var = (f58) obj;
        return x13.X(this.a, f58Var.a) && x13.X(this.b, f58Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 2, this.a.a);
        yc9.w0(parcel, 3, this.b);
        yc9.G0(parcel, iF0);
    }
}
