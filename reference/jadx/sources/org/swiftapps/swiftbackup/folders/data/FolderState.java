package org.swiftapps.swiftbackup.folders.data;

import defpackage.pe4;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderState {
    private final List<String> directories;
    private final Map<String, FileEntry> files;

    public FolderState(Map<String, FileEntry> map, List<String> list) {
        map.getClass();
        list.getClass();
        this.files = map;
        this.directories = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FolderState copy$default(FolderState folderState, Map map, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            map = folderState.files;
        }
        if ((i & 2) != 0) {
            list = folderState.directories;
        }
        return folderState.copy(map, list);
    }

    public final Map<String, FileEntry> component1() {
        return this.files;
    }

    public final List<String> component2() {
        return this.directories;
    }

    public final FolderState copy(Map<String, FileEntry> map, List<String> list) {
        map.getClass();
        list.getClass();
        return new FolderState(map, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderState)) {
            return false;
        }
        FolderState folderState = (FolderState) obj;
        return pe4.d(this.files, folderState.files) && pe4.d(this.directories, folderState.directories);
    }

    public final List<String> getDirectories() {
        return this.directories;
    }

    public final Map<String, FileEntry> getFiles() {
        return this.files;
    }

    public int hashCode() {
        return this.directories.hashCode() + (this.files.hashCode() * 31);
    }

    public String toString() {
        return "FolderState(files=" + this.files + ", directories=" + this.directories + ")";
    }
}
