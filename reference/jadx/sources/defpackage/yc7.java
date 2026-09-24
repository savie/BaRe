package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yc7 implements Parcelable {
    public static final Parcelable.Creator<yc7> CREATOR = new a();
    private final String apkPath;
    private final String packageName;

    public /* synthetic */ yc7(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getApkPath() {
        return this.apkPath;
    }

    public final String getBackupFileName() {
        return eq3.j(this.packageName, ".apk");
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final boolean isValid() {
        return this.packageName.length() > 0 && this.apkPath.length() > 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.packageName);
        parcel.writeString(this.apkPath);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final yc7 createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new yc7(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final yc7[] newArray(int i) {
            return new yc7[i];
        }
    }

    public yc7(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.packageName = str;
        this.apkPath = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public yc7() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
