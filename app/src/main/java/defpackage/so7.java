package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class so7 implements Parcelable, jl0 {
    public static final Parcelable.Creator<so7> CREATOR = new ro7();
    public final zn7 a;
    public final StorageInfoLocal.Success b;
    public final boolean c;
    public final String d;

    public so7(zn7 zn7Var, StorageInfoLocal.Success success, boolean z, String str) {
        zn7Var.getClass();
        this.a = zn7Var;
        this.b = success;
        this.c = z;
        this.d = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof so7)) {
            return false;
        }
        so7 so7Var = (so7) obj;
        return pe4.d(this.a, so7Var.a) && pe4.d(this.b, so7Var.b) && this.c == so7Var.c && pe4.d(this.d, so7Var.d);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        zn7 zn7Var = this.a;
        zn7Var.getClass();
        return new so7(zn7Var, this.b, this.c, this.d);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.n().v();
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        StorageInfoLocal.Success success = this.b;
        int iH = fz5.h((iHashCode + (success == null ? 0 : success.hashCode())) * 31, 31, this.c);
        String str = this.d;
        return iH + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "StorageSwitchItem(storage=" + this.a + ", storageInfo=" + this.b + ", requiresRoot=" + this.c + ", fileSystem=" + this.d + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        this.a.writeToParcel(parcel, i);
        StorageInfoLocal.Success success = this.b;
        if (success == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            success.writeToParcel(parcel, i);
        }
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeString(this.d);
    }
}
