package org.swiftapps.swiftbackup.model.app;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.c6;
import defpackage.cf3;
import defpackage.db2;
import defpackage.eb2;
import defpackage.el1;
import defpackage.g00;
import defpackage.hk5;
import defpackage.l73;
import defpackage.ms8;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.q;
import defpackage.re3;
import defpackage.sb4;
import defpackage.t62;
import defpackage.uq7;
import defpackage.wc2;
import defpackage.we3;
import defpackage.xe3;
import defpackage.zc2;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppCloudBackups implements Parcelable {
    private List<AppCloudBackup> backups;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<AppCloudBackups> CREATOR = new b();

    public AppCloudBackups(List<AppCloudBackup> list) {
        list.getClass();
        this.backups = list;
        if (el1.U0(list) != null) {
            return;
        }
        c6.f("Backups empty!");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AppCloudBackups copy$default(AppCloudBackups appCloudBackups, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = appCloudBackups.backups;
        }
        return appCloudBackups.copy(list);
    }

    public final List<AppCloudBackup> component1() {
        return this.backups;
    }

    public final AppCloudBackups copy(List<AppCloudBackup> list) {
        list.getClass();
        return new AppCloudBackups(list);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AppCloudBackups) && pe4.d(this.backups, ((AppCloudBackups) obj).backups);
    }

    public final List<AppCloudBackup> getBackups() {
        return this.backups;
    }

    public final AppCloudBackup getLatestBackup() {
        return (AppCloudBackup) el1.S0(this.backups);
    }

    public final long getTotalSize() {
        Iterator<T> it = this.backups.iterator();
        long totalSize = 0;
        while (it.hasNext()) {
            totalSize += ((AppCloudBackup) it.next()).getMetadata().getTotalSize();
        }
        return totalSize;
    }

    public final boolean hasBackups() {
        List<AppCloudBackup> list = this.backups;
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((AppCloudBackup) it.next()).getMetadata().hasBackups()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.backups.hashCode();
    }

    public final void setBackups(List<AppCloudBackup> list) {
        list.getClass();
        this.backups = list;
    }

    public String toString() {
        return "AppCloudBackups(backups=" + this.backups + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        List<AppCloudBackup> list = this.backups;
        parcel.writeInt(list.size());
        Iterator<AppCloudBackup> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {

        /* JADX INFO: renamed from: org.swiftapps.swiftbackup.model.app.AppCloudBackups$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class C0014a {
            private final AppCloudBackups appCloudBackups;
            private final wc2 databaseError;

            public C0014a(AppCloudBackups appCloudBackups, wc2 wc2Var) {
                this.appCloudBackups = appCloudBackups;
                this.databaseError = wc2Var;
            }

            public final AppCloudBackups getAppCloudBackups() {
                return this.appCloudBackups;
            }

            public final wc2 getDatabaseError() {
                return this.databaseError;
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class b implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ms8.n(Long.valueOf(((AppCloudBackup) obj2).getDateBackedUpOrUpdated()), Long.valueOf(((AppCloudBackup) obj).getDateBackedUpOrUpdated()));
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C0014a fetchForPackage(String str) {
            str.getClass();
            zc2 zc2Var = re3.a;
            g00 g00Var = g00.a;
            l73 l73VarA = cf3.a(re3.c().d(uq7.T(str, ".", "")), true);
            if (l73VarA instanceof xe3) {
                return new C0014a(fromSnapshot(((xe3) l73VarA).n), null);
            }
            if (l73VarA instanceof we3) {
                return new C0014a(null, ((we3) l73VarA).n);
            }
            q.j();
            return null;
        }

        public final AppCloudBackups fromSnapshot(eb2 eb2Var) {
            CloudMetadata cloudMetadata;
            eb2Var.getClass();
            db2 db2VarB = eb2Var.b();
            ArrayList arrayList = new ArrayList();
            Iterator it = (Iterator) db2VarB.b;
            while (true) {
                AppCloudBackup appCloudBackup = null;
                if (!it.hasNext()) {
                    break;
                }
                hk5 hk5Var = (hk5) it.next();
                zc2 zc2VarD = ((eb2) db2VarB.c).b.d(hk5Var.a.a);
                try {
                    cloudMetadata = (CloudMetadata) t62.b(CloudMetadata.class, sb4.d(hk5Var.b).a.getValue());
                } catch (Exception unused) {
                    cloudMetadata = null;
                }
                if (cloudMetadata != null && cloudMetadata.isValidCloudDetails()) {
                    AppCloudBackup appCloudBackup2 = new AppCloudBackup(zc2VarD.e(), cloudMetadata);
                    if (appCloudBackup2.isValid()) {
                        appCloudBackup = appCloudBackup2;
                    }
                }
                if (appCloudBackup != null) {
                    arrayList.add(appCloudBackup);
                }
            }
            List listN1 = el1.n1(arrayList, new b());
            if (listN1.isEmpty()) {
                return null;
            }
            return new AppCloudBackups(listN1);
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final AppCloudBackups createFromParcel(Parcel parcel) {
            parcel.getClass();
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(AppCloudBackup.CREATOR.createFromParcel(parcel));
            }
            return new AppCloudBackups(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final AppCloudBackups[] newArray(int i) {
            return new AppCloudBackups[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AppCloudBackups() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ AppCloudBackups(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ov2.a : list);
    }
}
