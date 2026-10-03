package com.bare.folders.data;

import java.util.List;

/** Account/cloud-tag scoped remote boundary for folder backup metadata. */
public interface RemoteFolderMetadataRepository {
    FolderMetadata get(String folderId);
    List<FolderMetadata> list();
    void save(FolderMetadata metadata);
    void remove(String folderId);
}
