package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ef extends i5 {
    public static final Parcelable.Creator<ef> CREATOR = r39.b;
    public static final ef d;
    public final qn1 a;
    public final boolean b;
    public boolean c;

    static {
        ef efVar = new ef(null, false);
        efVar.c = false;
        d = efVar;
    }

    public ef(qn1 qn1Var, boolean z) {
        this.a = qn1Var;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ef)) {
            return false;
        }
        ef efVar = (ef) obj;
        return x13.m(this.a, efVar.a) && this.c == efVar.c && this.b == efVar.b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Boolean.valueOf(this.c), Boolean.valueOf(this.b)});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        return eq3.n(new StringBuilder(strValueOf.length() + 31), "ApiMetadata(complianceOptions=", strValueOf, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (this.c) {
            parcel.setDataPosition(parcel.dataPosition() - 4);
            parcel.setDataSize(parcel.dataSize() - 4);
            return;
        }
        parcel.writeInt(-204102970);
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
