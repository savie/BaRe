package org.swiftapps.swiftbackup.appslist.ui.labels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.b90;
import defpackage.dj7;
import defpackage.el1;
import defpackage.fz5;
import defpackage.io4;
import defpackage.jz2;
import defpackage.lr4;
import defpackage.mr4;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.u48;
import defpackage.vr6;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LabelledApp implements Parcelable {
    private static final String logTag = "LabelledApp";
    private final List<String> labelIds;
    private final String name;
    private final String packageName;
    public static final mr4 Companion = new mr4();
    public static final Parcelable.Creator<LabelledApp> CREATOR = new b90(6);

    public /* synthetic */ LabelledApp(String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ov2.a : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LabelledApp copy$default(LabelledApp labelledApp, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = labelledApp.packageName;
        }
        if ((i & 2) != 0) {
            str2 = labelledApp.name;
        }
        if ((i & 4) != 0) {
            list = labelledApp.labelIds;
        }
        return labelledApp.copy(str, str2, list);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.name;
    }

    public final List<String> component3() {
        return this.labelIds;
    }

    public final LabelledApp copy(String str, String str2, List<String> list) {
        str.getClass();
        str2.getClass();
        list.getClass();
        return new LabelledApp(str, str2, list);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LabelledApp)) {
            return false;
        }
        LabelledApp labelledApp = (LabelledApp) obj;
        return pe4.d(this.packageName, labelledApp.packageName) && pe4.d(this.name, labelledApp.name) && pe4.d(this.labelIds, labelledApp.labelIds);
    }

    public final List<String> getLabelIds() {
        return this.labelIds;
    }

    @jz2
    public final Set<LabelParams> getLabelParams() {
        try {
            if (this.labelIds.isEmpty()) {
                return null;
            }
            List<String> list = this.labelIds;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                lr4 lr4Var = lr4.a;
                LabelParams labelParamsC = lr4.c(str);
                if (labelParamsC != null) {
                    arrayList.add(labelParamsC);
                }
            }
            return el1.z1(arrayList);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, logTag, io4.b(e), null, 4, null);
            return null;
        }
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    @jz2
    public final boolean hasLabels() {
        return !this.labelIds.isEmpty();
    }

    public int hashCode() {
        return this.labelIds.hashCode() + fz5.g(this.packageName.hashCode() * 31, 31, this.name);
    }

    public String toString() {
        String str = this.packageName;
        String str2 = this.name;
        return dj7.o(u48.p("LabelledApp(packageName=", str, ", name=", str2, ", labelIds="), this.labelIds, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.packageName);
        parcel.writeString(this.name);
        parcel.writeStringList(this.labelIds);
    }

    public LabelledApp(String str, String str2, List<String> list) {
        str.getClass();
        str2.getClass();
        list.getClass();
        this.packageName = str;
        this.name = str2;
        this.labelIds = list;
    }

    public LabelledApp() {
        this(null, null, null, 7, null);
    }
}
