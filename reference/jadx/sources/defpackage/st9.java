package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class st9 extends i5 {
    public static final Parcelable.Creator<st9> CREATOR = new mn0(11);
    public final long a;
    public final wk9 b;
    public final wk9 c;
    public final wk9 d;

    public st9(long j, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        ly8.h(bArr);
        wk9 wk9VarL = wk9.l(bArr, bArr.length);
        ly8.h(bArr2);
        wk9 wk9VarL2 = wk9.l(bArr2, bArr2.length);
        ly8.h(bArr3);
        wk9 wk9VarL3 = wk9.l(bArr3, bArr3.length);
        this.a = j;
        this.b = wk9VarL;
        this.c = wk9VarL2;
        this.d = wk9VarL3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof st9)) {
            return false;
        }
        st9 st9Var = (st9) obj;
        return this.a == st9Var.a && x13.m(this.b, st9Var.b) && x13.m(this.c, st9Var.c) && x13.m(this.d, st9Var.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.a), this.b, this.c, this.d});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 8);
        parcel.writeLong(this.a);
        yc9.o0(parcel, 2, this.b.o());
        yc9.o0(parcel, 3, this.c.o());
        yc9.o0(parcel, 4, this.d.o());
        yc9.G0(parcel, iF0);
    }
}
