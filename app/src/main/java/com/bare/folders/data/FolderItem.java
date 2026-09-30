package com.bare.folders.data;

import android.os.Parcel;
import android.os.Parcelable;

/** P3 reconstruction of the Reference FolderItem Parcelable contract. */
public final class FolderItem implements Parcelable {
    public static final Creator<FolderItem> CREATOR = new Creator<FolderItem>() {
        @Override public FolderItem createFromParcel(Parcel in) { return new FolderItem(in); }
        @Override public FolderItem[] newArray(int size) { return new FolderItem[size]; }
    };
    private final String id;
    private final String displayName;
    private final String sourceFolder;
    private final long setupCreationTime;
    public FolderItem(String id, String displayName, String sourceFolder, long setupCreationTime) {
        this.id = id == null ? "" : id;
        this.displayName = displayName == null ? "" : displayName;
        this.sourceFolder = sourceFolder == null ? "" : sourceFolder;
        this.setupCreationTime = setupCreationTime;
    }
    private FolderItem(Parcel in) { id=in.readString(); displayName=in.readString(); sourceFolder=in.readString(); setupCreationTime=in.readLong(); }
    public String getId(){return id;} public String getDisplayName(){return displayName;} public String getSourceFolder(){return sourceFolder;} public long getSetupCreationTime(){return setupCreationTime;}
    public boolean isValid(){ String n=displayName.trim(), p=sourceFolder.trim(); return !id.trim().isEmpty()&&!n.isEmpty()&&!n.contains("  ")&&n.length()<=30&&!p.isEmpty(); }
    @Override public int describeContents(){return 0;}
    @Override public void writeToParcel(Parcel dest,int flags){dest.writeString(id);dest.writeString(displayName);dest.writeString(sourceFolder);dest.writeLong(setupCreationTime);}
}