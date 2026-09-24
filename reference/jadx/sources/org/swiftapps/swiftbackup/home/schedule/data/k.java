package org.swiftapps.swiftbackup.home.schedule.data;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class k implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        ArrayList arrayList;
        parcel.getClass();
        String string = parcel.readString();
        ScheduleItem.Type typeValueOf = ScheduleItem.Type.valueOf(parcel.readString());
        boolean z = true;
        if (parcel.readInt() == 0) {
            z = false;
        }
        if (parcel.readInt() == 0) {
            arrayList = null;
        } else {
            int i = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList2.add(FolderItem.CREATOR.createFromParcel(parcel));
            }
            arrayList = arrayList2;
        }
        return new ScheduleItem.Folders(string, typeValueOf, z, arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new ScheduleItem.Folders[i];
    }
}
