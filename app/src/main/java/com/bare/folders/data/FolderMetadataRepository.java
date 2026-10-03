package com.bare.folders.data;
import java.util.*;
public final class FolderMetadataRepository {private final Map<String,FolderMetadata> local=new LinkedHashMap<>();public synchronized FolderMetadata get(String id){return local.get(id);}public synchronized void put(FolderMetadata m){if(m==null||!m.isValid())throw new IllegalArgumentException("invalid metadata");local.put(m.getItemId(),m);}public synchronized void remove(String id){local.remove(id);}public synchronized List<FolderMetadata> list(){return Collections.unmodifiableList(new ArrayList<>(local.values()));}}
