package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ua6 extends i5 {
    public static final Parcelable.Creator<ua6> CREATOR = new m8(19);
    public final String a;
    public final String b;
    public final String c;

    public ua6(String str, String str2, String str3) {
        ly8.h(str);
        this.a = str;
        ly8.h(str2);
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ua6)) {
            return false;
        }
        ua6 ua6Var = (ua6) obj;
        return x13.m(this.a, ua6Var.a) && x13.m(this.b, ua6Var.b) && x13.m(this.c, ua6Var.c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PublicKeyCredentialRpEntity{\n id='");
        sb.append(this.a);
        sb.append("', \n name='");
        sb.append(this.b);
        sb.append("', \n icon='");
        return dj7.n(sb, this.c, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 2, this.a);
        yc9.w0(parcel, 3, this.b);
        yc9.w0(parcel, 4, this.c);
        yc9.G0(parcel, iF0);
    }
}
