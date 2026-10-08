package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xa6 extends i5 {
    public static final Parcelable.Creator<xa6> CREATOR = new b90(12);
    public final wk9 a;
    public final String b;
    public final String c;
    public final String d;

    public xa6(byte[] bArr, String str, String str2, String str3) {
        ly8.h(bArr);
        this.a = wk9.l(bArr, bArr.length);
        ly8.h(str);
        this.b = str;
        this.c = str2;
        ly8.h(str3);
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xa6)) {
            return false;
        }
        xa6 xa6Var = (xa6) obj;
        return x13.m(this.a, xa6Var.a) && x13.m(this.b, xa6Var.b) && x13.m(this.c, xa6Var.c) && x13.m(this.d, xa6Var.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d});
    }

    public final String toString() {
        StringBuilder sbU = dj7.u("PublicKeyCredentialUserEntity{\n id=", cy0.t(this.a.o()), ", \n name='");
        sbU.append(this.b);
        sbU.append("', \n icon='");
        sbU.append(this.c);
        sbU.append("', \n displayName='");
        return dj7.n(sbU, this.d, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.o0(parcel, 2, this.a.o());
        yc9.w0(parcel, 3, this.b);
        yc9.w0(parcel, 4, this.c);
        yc9.w0(parcel, 5, this.d);
        yc9.G0(parcel, iF0);
    }
}
