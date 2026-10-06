package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e39 extends i5 {
    public static final Parcelable.Creator<e39> CREATOR = new fm(8);
    public final String a;
    public final boolean b;

    public e39(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e39) {
            e39 e39Var = (e39) obj;
            if (this.a.equals(e39Var.a) && this.b == e39Var.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Boolean.valueOf(this.b)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
