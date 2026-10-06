package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qn1 extends i5 {
    public static final Parcelable.Creator<qn1> CREATOR = new f9(14);
    public final int a;
    public final int b;
    public final int c;
    public final boolean d;

    public qn1(int i, int i2, int i3, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof qn1)) {
            return false;
        }
        qn1 qn1Var = (qn1) obj;
        return this.a == qn1Var.a && this.b == qn1Var.b && this.c == qn1Var.c && this.d == qn1Var.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), Boolean.valueOf(this.d)});
    }

    public final String toString() {
        int i = this.a;
        int length = String.valueOf(i).length();
        int i2 = this.b;
        int length2 = String.valueOf(i2).length();
        int i3 = this.c;
        int length3 = String.valueOf(i3).length();
        boolean z = this.d;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 19 + length3 + 13 + String.valueOf(z).length() + 1);
        sb.append("ComplianceOptions{callerProductId=");
        sb.append(i);
        sb.append(", dataOwnerProductId=");
        sb.append(i2);
        sb.append(", processingReason=");
        sb.append(i3);
        sb.append(", isUserData=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b);
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(this.c);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
