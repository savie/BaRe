package com.bare.folders.repository;

import com.bare.folders.data.BaReFolderItem;

import java.util.List;

/** Cloud-folder metadata boundary. Provider implementation is deliberately external. */
public interface FolderRepository {
    List<BaReFolderItem> list();
    BaReFolderItem find(String id);
    void save(BaReFolderItem item);
    void remove(String id);
}
