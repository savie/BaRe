package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class up0 extends i5 {
    public static final Parcelable.Creator<up0> CREATOR = new mk(10);
    public final boolean a;
    public final byte[] b;
    public final String c;

    public up0(boolean z, byte[] bArr, String str) {
        if (z) {
            ly8.h(bArr);
            ly8.h(str);
        }
        this.a = z;
        this.b = bArr;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof up0)) {
            return false;
        }
        up0 up0Var = (up0) obj;
        return this.a == up0Var.a && Arrays.equals(this.b, up0Var.b) && Objects.equals(this.c, up0Var.c);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (Objects.hash(Boolean.valueOf(this.a), this.c) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a ? 1 : 0);
        yc9.o0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.G0(parcel, iF0);
    }
}
