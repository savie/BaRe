package com.bare.settings.appbackuplimits;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public final class AppBackupLimitItem implements Parcelable {
    public static final Creator<AppBackupLimitItem> CREATOR = new Creator<AppBackupLimitItem>() {
        @Override public AppBackupLimitItem createFromParcel(Parcel in) { return new AppBackupLimitItem(in); }
        @Override public AppBackupLimitItem[] newArray(int size) { return new AppBackupLimitItem[size]; }
    };
    private final String part;
    private final Long localLimitMBs;
    private final Long cloudLimitMBs;

    public AppBackupLimitItem(String part, Long localLimitMBs, Long cloudLimitMBs) {
        this.part = part; this.localLimitMBs = localLimitMBs; this.cloudLimitMBs = cloudLimitMBs;
    }
    private AppBackupLimitItem(Parcel in) {
        part = in.readString(); localLimitMBs = readNullableLong(in); cloudLimitMBs = readNullableLong(in);
    }
    private static Long readNullableLong(Parcel in) { return in.readByte() == 0 ? null : in.readLong(); }
    private static void writeNullableLong(Parcel out, Long value) {
        if (value == null) out.writeByte((byte) 0); else { out.writeByte((byte) 1); out.writeLong(value); }
    }
    public String getPart() { return part; }
    public Long getLocalLimitMBs() { return localLimitMBs; }
    public Long getCloudLimitMBs() { return cloudLimitMBs; }
    public long getLocalLimitBytes() { return (localLimitMBs == null ? 0L : localLimitMBs) * 1024L * 1024L; }
    public long getCloudLimitBytes() { return (cloudLimitMBs == null ? 0L : cloudLimitMBs) * 1024L * 1024L; }
    public boolean hasLimits() { return (localLimitMBs != null && localLimitMBs > 0) || (cloudLimitMBs != null && cloudLimitMBs > 0); }
    public boolean isValid() { return part != null && !part.isEmpty() && hasLimits(); }
    public AppBackupLimitItem copy(String p, Long local, Long cloud) { return new AppBackupLimitItem(p, local, cloud); }
    public static ArrayList<AppBackupLimitItem> defaultItems() {
        ArrayList<AppBackupLimitItem> items = new ArrayList<>();
        items.add(new AppBackupLimitItem("DATA", null, null));
        items.add(new AppBackupLimitItem("EXTERNAL_DATA", null, null));
        items.add(new AppBackupLimitItem("MEDIA", null, null));
        items.add(new AppBackupLimitItem("EXPANSION", null, null));
        return items;
    }
    @Override public int describeContents() { return 0; }
    @Override public void writeToParcel(Parcel out, int flags) {
        out.writeString(part); writeNullableLong(out, localLimitMBs); writeNullableLong(out, cloudLimitMBs);
    }
    @Override public String toString() {
        StringBuilder sb = new StringBuilder(part);
        if (localLimitMBs != null && localLimitMBs > 0) sb.append(":Local=").append(localLimitMBs).append("MB");
        if (cloudLimitMBs != null && cloudLimitMBs > 0) sb.append(":Cloud=").append(cloudLimitMBs).append("MB");
        return sb.toString();
    }
}
