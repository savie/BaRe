package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g89 extends vz8 implements w89 {
    public final int n(int i, String str, String str2, Bundle bundle) {
        Parcel parcelL = l();
        parcelL.writeInt(i);
        parcelL.writeString(str);
        parcelL.writeString(str2);
        int i2 = z89.a;
        parcelL.writeInt(1);
        bundle.writeToParcel(parcelL, 0);
        Parcel parcelM = m(parcelL, 10);
        int i3 = parcelM.readInt();
        parcelM.recycle();
        return i3;
    }

    public final Bundle o(String str, String str2, Bundle bundle) {
        Parcel parcelL = l();
        parcelL.writeInt(9);
        parcelL.writeString(str);
        parcelL.writeString(str2);
        int i = z89.a;
        parcelL.writeInt(1);
        bundle.writeToParcel(parcelL, 0);
        Parcel parcelM = m(parcelL, 902);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) z89.a(parcelM);
        parcelM.recycle();
        return bundle2;
    }

    public final Bundle p(String str, String str2, String str3) {
        Parcel parcelL = l();
        parcelL.writeInt(3);
        parcelL.writeString(str);
        parcelL.writeString(str2);
        parcelL.writeString(str3);
        parcelL.writeString(null);
        Parcel parcelM = m(parcelL, 3);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) z89.a(parcelM);
        parcelM.recycle();
        return bundle;
    }

    public final Bundle q(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel parcelL = l();
        parcelL.writeInt(i);
        parcelL.writeString(str);
        parcelL.writeString(str2);
        parcelL.writeString(str3);
        parcelL.writeString(null);
        int i2 = z89.a;
        parcelL.writeInt(1);
        bundle.writeToParcel(parcelL, 0);
        Parcel parcelM = m(parcelL, 8);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) z89.a(parcelM);
        parcelM.recycle();
        return bundle2;
    }

    public final Bundle r(String str, String str2, String str3) {
        Parcel parcelL = l();
        parcelL.writeInt(3);
        parcelL.writeString(str);
        parcelL.writeString(str2);
        parcelL.writeString(str3);
        Parcel parcelM = m(parcelL, 4);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) z89.a(parcelM);
        parcelM.recycle();
        return bundle;
    }

    public final Bundle s(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel parcelL = l();
        parcelL.writeInt(i);
        parcelL.writeString(str);
        parcelL.writeString(str2);
        parcelL.writeString(str3);
        int i2 = z89.a;
        parcelL.writeInt(1);
        bundle.writeToParcel(parcelL, 0);
        Parcel parcelM = m(parcelL, 11);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) z89.a(parcelM);
        parcelM.recycle();
        return bundle2;
    }

    public final Bundle t(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel parcelL = l();
        parcelL.writeInt(i);
        parcelL.writeString(str);
        parcelL.writeString(str2);
        int i2 = z89.a;
        parcelL.writeInt(1);
        bundle.writeToParcel(parcelL, 0);
        parcelL.writeInt(1);
        bundle2.writeToParcel(parcelL, 0);
        Parcel parcelM = m(parcelL, 901);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle3 = (Bundle) z89.a(parcelM);
        parcelM.recycle();
        return bundle3;
    }
}
