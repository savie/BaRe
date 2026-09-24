package org.swiftapps.swiftbackup.folders.data;

import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.af3;
import defpackage.b90;
import defpackage.cf3;
import defpackage.d6;
import defpackage.dj7;
import defpackage.eh3;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.jz2;
import defpackage.kj3;
import defpackage.nm3;
import defpackage.nq7;
import defpackage.om3;
import defpackage.pe4;
import defpackage.q;
import defpackage.re3;
import defpackage.sf1;
import defpackage.u48;
import defpackage.vr6;
import defpackage.ye3;
import defpackage.zc2;
import defpackage.ze3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderItem extends eh3 implements Parcelable {
    public static final int DISPLAY_NAME_MAX_CHARACTERS = 30;
    private static final String TAG = "FolderItem";
    private final String displayName;
    private final String id;
    private final long setupCreationTime;
    private final String sourceFolder;
    public static final nm3 Companion = new nm3();
    public static final Parcelable.Creator<FolderItem> CREATOR = new b90(3);

    public /* synthetic */ FolderItem(String str, String str2, String str3, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? 0L : j);
    }

    public static /* synthetic */ FolderItem copy$default(FolderItem folderItem, String str, String str2, String str3, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = folderItem.id;
        }
        if ((i & 2) != 0) {
            str2 = folderItem.displayName;
        }
        if ((i & 4) != 0) {
            str3 = folderItem.sourceFolder;
        }
        if ((i & 8) != 0) {
            j = folderItem.setupCreationTime;
        }
        String str4 = str3;
        return folderItem.copy(str, str2, str4, j);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.displayName;
    }

    public final String component3() {
        return this.sourceFolder;
    }

    public final long component4() {
        return this.setupCreationTime;
    }

    public final FolderItem copy(String str, String str2, String str3, long j) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        return new FolderItem(str, str2, str3, j);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderItem)) {
            return false;
        }
        FolderItem folderItem = (FolderItem) obj;
        return pe4.d(this.id, folderItem.id) && pe4.d(this.displayName, folderItem.displayName) && pe4.d(this.sourceFolder, folderItem.sourceFolder) && this.setupCreationTime == folderItem.setupCreationTime;
    }

    public final FolderMetadata fetchCloudBackup() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        FolderMetadata folderMetadata = (FolderMetadata) sf1.g.d(this.id);
        if (folderMetadata == null || !folderMetadata.hasBackups()) {
            return null;
        }
        return folderMetadata;
    }

    public final kj3 fetchLocalBackup() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        kj3 kj3VarA = a.a(this, false, false);
        if (kj3VarA.f()) {
            return kj3VarA;
        }
        return null;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getId() {
        return this.id;
    }

    public final long getSetupCreationTime() {
        return this.setupCreationTime;
    }

    public final String getSourceFolder() {
        return this.sourceFolder;
    }

    public final boolean hasBackup(boolean z) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        if (z) {
            return fetchCloudBackup() != null;
        }
        return fetchLocalBackup() != null;
    }

    public int hashCode() {
        return Long.hashCode(this.setupCreationTime) + fz5.g(fz5.g(this.id.hashCode() * 31, 31, this.displayName), 31, this.sourceFolder);
    }

    @jz2
    public final boolean isValid() {
        return this.id.length() > 0 && validateDisplayName().b && validateSourceFolder().b;
    }

    @jz2
    public final String toDisplayString() {
        return eq3.l("FolderItem(name='", this.displayName, "', id='", this.id, "')");
    }

    @jz2
    public String toString() {
        String str = this.sourceFolder;
        String str2 = this.displayName;
        return dj7.n(u48.p("FolderItem(sourceFolder='", str, "', displayName='", str2, "', id='"), this.id, "')");
    }

    @jz2
    public final om3 validateDisplayName() {
        String string = nq7.H0(this.displayName).toString();
        if (string.length() == 0 || nq7.j0(string) || nq7.Z(string, "  ", false)) {
            SwiftApp.Companion companion = SwiftApp.d;
            return new om3(string, dj7.g(R.string.invalid_display_name), false);
        }
        if (string.length() <= 30) {
            return new om3(string, null, true);
        }
        SwiftApp.Companion companion2 = SwiftApp.d;
        return new om3(string, dj7.g(R.string.display_name_too_long), false);
    }

    @jz2
    public final om3 validateSourceFolder() {
        String string = nq7.H0(this.sourceFolder).toString();
        if (string.length() != 0 && !nq7.j0(string)) {
            return new om3(string, null, true);
        }
        SwiftApp.Companion companion = SwiftApp.d;
        return new om3(string, dj7.g(R.string.invalid_folder_path), false);
    }

    @jz2
    public final af3 writeToFirebaseNode() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        if (!isValid()) {
            q.d(this, "Folder item invalid: ");
            return null;
        }
        zc2 zc2Var = re3.a;
        String str = this.id;
        str.getClass();
        zc2 zc2VarD = re3.h().d(str);
        zc2 zc2VarD2 = zc2VarD.d("folderItem");
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "FolderItem.writeToCloud", dj7.l("Uploading folderItem at node: ", zc2VarD.e(), "/", zc2VarD2.e()), null, 4, null);
        af3 af3VarC = cf3.c(zc2VarD2, this);
        if (pe4.d(af3VarC, ze3.b)) {
            vr6.i$default(vr6Var, "FolderItem.writeToCloud", "Uploading FolderItem to firebase complete", null, 4, null);
            return af3VarC;
        }
        if (!(af3VarC instanceof ye3)) {
            q.j();
            return null;
        }
        vr6.e$default(vr6Var, "FolderItem.writeToCloud", "Error occurred while uploading FolderItem to Firebase = " + this, null, 4, null);
        return af3VarC;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.id);
        parcel.writeString(this.displayName);
        parcel.writeString(this.sourceFolder);
        parcel.writeLong(this.setupCreationTime);
    }

    public FolderItem() {
        this(null, null, null, 0L, 15, null);
    }

    public FolderItem(String str, String str2, String str3, long j) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.id = str;
        this.displayName = str2;
        this.sourceFolder = str3;
        this.setupCreationTime = j;
    }
}
