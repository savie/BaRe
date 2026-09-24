package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class az0 implements Parcelable {
    public static final Parcelable.Creator<az0> CREATOR = new m8(23);
    public final xa a;

    public az0(xa xaVar) {
        this.a = xaVar;
    }

    public static az0 c(int i) throws zy0 {
        xa xaVar;
        if (i != -262) {
            for (oe6 oe6Var : oe6.values()) {
                if (oe6Var.a == i) {
                    xaVar = oe6Var;
                }
            }
            for (zr2 zr2Var : zr2.values()) {
                if (zr2Var.a == i) {
                    xaVar = zr2Var;
                }
            }
            throw new zy0(xs1.h(i, "Algorithm with COSE value ", " not supported"));
        }
        xaVar = oe6.RS1;
        return new az0(xaVar);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof az0) && this.a.a() == ((az0) obj).a.a();
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    public final String toString() {
        return eq3.k("COSEAlgorithmIdentifier{algorithm=", String.valueOf(this.a), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a.a());
    }
}
