package com.bare.folders.repository;

import com.bare.folders.data.BaReFolderItem;
import com.bare.folders.data.FolderMetadata;

import java.util.List;

/** Reference tags/{cloudTag}/folders repository boundary. */
public interface CloudFolderRepository {
    List<BaReFolderItem> list(String cloudTag);
    BaReFolderItem get(String cloudTag, String folderId);
    void upsert(String cloudTag, BaReFolderItem item);
    void remove(String cloudTag, String folderId);
    void writeFolderItem(String cloudTag, String folderId, BaReFolderItem item);
    void writeFolderMetadata(String cloudTag, String folderId, FolderMetadata metadata);
}
