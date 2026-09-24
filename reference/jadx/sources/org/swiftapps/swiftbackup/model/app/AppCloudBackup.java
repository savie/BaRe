package org.swiftapps.swiftbackup.model.app;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.c6;
import defpackage.ck;
import defpackage.dk;
import defpackage.ek;
import defpackage.eq3;
import defpackage.f6;
import defpackage.fk;
import defpackage.gv7;
import defpackage.hk;
import defpackage.io4;
import defpackage.l0;
import defpackage.os4;
import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppCloudBackup implements Parcelable {
    public static final String logTag = "AppCloudBackup";
    private final String _backupId;
    private final CloudMetadata _metadata;
    private final os4 backupTag$delegate;
    private final os4 dateBackedUpOrUpdated$delegate;
    private final os4 dateBackup$delegate;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<AppCloudBackup> CREATOR = new b();

    public AppCloudBackup(String str, CloudMetadata cloudMetadata) {
        this._backupId = str;
        this._metadata = cloudMetadata;
        if (str == null) {
            l0.e("_backupId null!");
            throw null;
        }
        if (cloudMetadata == null) {
            l0.e("CloudMetadata null!");
            throw null;
        }
        this.backupTag$delegate = new gv7(new ck(this, 2));
        this.dateBackup$delegate = new gv7(new dk(this, 4));
        this.dateBackedUpOrUpdated$delegate = new gv7(new ek(this, 5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String backupTag_delegate$lambda$0(AppCloudBackup appCloudBackup) {
        Parcelable.Creator<hk> creator = hk.CREATOR;
        return fk.a(appCloudBackup.getBackupId());
    }

    private final String component1() {
        return this._backupId;
    }

    private final CloudMetadata component2() {
        return this._metadata;
    }

    public static /* synthetic */ AppCloudBackup copy$default(AppCloudBackup appCloudBackup, String str, CloudMetadata cloudMetadata, int i, Object obj) {
        if ((i & 1) != 0) {
            str = appCloudBackup._backupId;
        }
        if ((i & 2) != 0) {
            cloudMetadata = appCloudBackup._metadata;
        }
        return appCloudBackup.copy(str, cloudMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long dateBackedUpOrUpdated_delegate$lambda$0(AppCloudBackup appCloudBackup) {
        Long dateBackupUpdated = appCloudBackup.getMetadata().getDateBackupUpdated();
        return dateBackupUpdated != null ? dateBackupUpdated.longValue() : appCloudBackup.getDateBackup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long dateBackup_delegate$lambda$0(AppCloudBackup appCloudBackup) {
        Parcelable.Creator<hk> creator = hk.CREATOR;
        Long lE = fk.e(appCloudBackup.getBackupId());
        if (lE != null) {
            return lE.longValue();
        }
        try {
            return io4.h(appCloudBackup.getMetadata().getDateBackup());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public final AppCloudBackup copy(String str, CloudMetadata cloudMetadata) {
        return new AppCloudBackup(str, cloudMetadata);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppCloudBackup)) {
            return false;
        }
        AppCloudBackup appCloudBackup = (AppCloudBackup) obj;
        return pe4.d(this._backupId, appCloudBackup._backupId) && pe4.d(this._metadata, appCloudBackup._metadata);
    }

    public final String getBackupId() {
        String str = this._backupId;
        if (str != null) {
            return str;
        }
        c6.f("Backup id null");
        return null;
    }

    public final String getBackupTag() {
        return (String) this.backupTag$delegate.getValue();
    }

    public final long getDateBackedUpOrUpdated() {
        return ((Number) this.dateBackedUpOrUpdated$delegate.getValue()).longValue();
    }

    public final long getDateBackup() {
        return ((Number) this.dateBackup$delegate.getValue()).longValue();
    }

    public final CloudMetadata getMetadata() {
        CloudMetadata cloudMetadata = this._metadata;
        if (cloudMetadata != null) {
            return cloudMetadata;
        }
        f6.g(eq3.k("CloudMetadata null for backupId '", this._backupId, "'"));
        return null;
    }

    public int hashCode() {
        String str = this._backupId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        CloudMetadata cloudMetadata = this._metadata;
        return iHashCode + (cloudMetadata != null ? cloudMetadata.hashCode() : 0);
    }

    public final boolean isValid() {
        return getBackupId().length() > 0 && getMetadata().isValidCloudDetails();
    }

    public String toString() {
        return "AppCloudBackup(_backupId=" + this._backupId + ", _metadata=" + this._metadata + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this._backupId);
        CloudMetadata cloudMetadata = this._metadata;
        if (cloudMetadata == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            cloudMetadata.writeToParcel(parcel, i);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final AppCloudBackup createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AppCloudBackup(parcel.readString(), parcel.readInt() == 0 ? null : CloudMetadata.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final AppCloudBackup[] newArray(int i) {
            return new AppCloudBackup[i];
        }
    }

    public static /* synthetic */ void getBackupTag$annotations() {
    }

    public static /* synthetic */ void getDateBackedUpOrUpdated$annotations() {
    }

    public static /* synthetic */ void getDateBackup$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AppCloudBackup() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ AppCloudBackup(String str, CloudMetadata cloudMetadata, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : cloudMetadata);
    }
}
