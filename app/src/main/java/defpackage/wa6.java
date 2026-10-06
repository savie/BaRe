package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wa6 implements Parcelable {

    /* JADX INFO: Fake field, exist only in values array */
    wa6 EF5;
    public static final /* synthetic */ wa6[] a = {new wa6("PUBLIC_KEY", 0)};
    public static final Parcelable.Creator<wa6> CREATOR = new eq1(12);

    public static wa6 c(String str) throws va6 {
        for (wa6 wa6Var : values()) {
            wa6Var.getClass();
            if (str.equals("public-key")) {
                return wa6Var;
            }
        }
        throw new va6(eq3.k("PublicKeyCredentialType ", str, " not supported"));
    }

    public static wa6 valueOf(String str) {
        return (wa6) Enum.valueOf(wa6.class, str);
    }

    public static wa6[] values() {
        return (wa6[]) a.clone();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "public-key";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString("public-key");
    }
}
