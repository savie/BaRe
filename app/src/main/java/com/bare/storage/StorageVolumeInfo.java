package com.bare.storage;

/**
 * Reference-shaped storage-volume identity and presentation metadata.
 *
 * Runtime filesystem probing is represented by validity/read-write state and is
 * supplied by the storage adapter; this model does not fabricate those values.
 */
public final class StorageVolumeInfo {
    public final String id;
    public final String rootPath;
    public final String displayName;
    public final boolean removable;
    public final boolean usb;
    public final boolean readable;
    public final boolean writable;
    public final boolean requiresRoot;
    public final String filesystemType;

    public StorageVolumeInfo(
            String id,
            String rootPath,
            String displayName,
            boolean removable,
            boolean usb,
            boolean readable,
            boolean writable) {
        this(id, rootPath, displayName, removable, usb, readable, writable,
                !readable || !writable, null);
    }

    public StorageVolumeInfo(
            String id,
            String rootPath,
            String displayName,
            boolean removable,
            boolean usb,
            boolean readable,
            boolean writable,
            boolean requiresRoot,
            String filesystemType) {
        if (id == null) throw new NullPointerException("id");
        if (rootPath == null) throw new NullPointerException("rootPath");
        if (displayName == null) throw new NullPointerException("displayName");
        this.id = id;
        this.rootPath = rootPath;
        this.displayName = displayName;
        this.removable = removable;
        this.usb = usb;
        this.readable = readable;
        this.writable = writable;
        this.requiresRoot = requiresRoot;
        this.filesystemType = filesystemType;
    }

    public boolean isValid() {
        return readable && writable;
    }
}
