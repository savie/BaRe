package com.bare.manage;

import java.io.File;

/** F125 inventory projection for one local reclaimable backup-artifact category. */
public final class ManageSpaceReclaimItem {
    public enum ProtectionState {
        UNKNOWN,
        UNPROTECTED,
        PROTECTED
    }

    public final String id;
    public final String title;
    public final File root;
    public final long bytes;
    public final ProtectionState protectionState;

    public ManageSpaceReclaimItem(
            String id,
            String title,
            File root,
            long bytes,
            ProtectionState protectionState) {
        if (id == null) throw new NullPointerException("id");
        if (title == null) throw new NullPointerException("title");
        if (root == null) throw new NullPointerException("root");
        if (protectionState == null) throw new NullPointerException("protectionState");
        this.id = id;
        this.title = title;
        this.root = root;
        this.bytes = Math.max(bytes, 0L);
        this.protectionState = protectionState;
    }

    public boolean hasReclaimableData() {
        return bytes > 0L;
    }

    public boolean cleanupAllowed() {
        return hasReclaimableData()
                && protectionState == ProtectionState.UNPROTECTED;
    }
}
