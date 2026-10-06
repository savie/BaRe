package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gm implements Parcelable {
    public static final Parcelable.Creator<gm> CREATOR = new fm(0);
    public final hk a;
    public final LocalMetadata b;

    public gm(hk hkVar, LocalMetadata localMetadata) {
        hkVar.getClass();
        localMetadata.getClass();
        this.a = hkVar;
        this.b = localMetadata;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gm)) {
            return false;
        }
        gm gmVar = (gm) obj;
        return pe4.d(this.a, gmVar.a) && pe4.d(this.b, gmVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AppBackupWrapper(backup=" + this.a + ", metadata=" + this.b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        this.a.writeToParcel(parcel, i);
        this.b.writeToParcel(parcel, i);
    }
}
