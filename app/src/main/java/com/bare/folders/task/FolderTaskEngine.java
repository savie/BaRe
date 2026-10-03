package com.bare.folders.task;

/** F78 static execution-planning boundary. Filesystem/cloud I/O stays downstream. */
public final class FolderTaskEngine {
    public enum Decision { READY, NO_FOLDER }

    public Decision plan(FolderTaskRequest request) {
        if (request == null || request.getFolderId() == null
                || request.getFolderId().trim().isEmpty()) {
            return Decision.NO_FOLDER;
        }
        return Decision.READY;
    }
}
