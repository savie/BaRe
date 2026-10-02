package com.bare.messagescalls.backuprestore;
import java.util.Collections; import java.util.LinkedHashSet; import java.util.Set;
public final class MessageRestoreSelection {
 private final Set<String> ids;
 public MessageRestoreSelection(Set<String> ids){this.ids=ids==null?Collections.emptySet():Collections.unmodifiableSet(new LinkedHashSet<>(ids));}
 public Set<String> getIds(){return ids;}
}