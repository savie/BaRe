package org.swiftapps.swiftbackup.home.schedule;

import android.os.Parcel;
import android.os.Parcelable;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        parcel.getClass();
        return new ScheduleService.RunMode.SingleSchedule((ScheduleItem) parcel.readParcelable(ScheduleService.RunMode.SingleSchedule.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new ScheduleService.RunMode.SingleSchedule[i];
    }
}
