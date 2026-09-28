package com.bare.folders.data;

/** Direct domain port of Reference FolderItem's persisted identity fields. */
public final class BaReFolderItem {
    public final String id;
    public final String displayName;
    public final String sourceFolder;
    public final long setupCreationTime;

    public BaReFolderItem(String id, String displayName, String sourceFolder, long setupCreationTime) {
        if (id == null || displayName == null || sourceFolder == null) throw new IllegalArgumentException("folder fields required");
        this.id = id;
        this.displayName = displayName;
        this.sourceFolder = sourceFolder;
        this.setupCreationTime = setupCreationTime;
    }
}
