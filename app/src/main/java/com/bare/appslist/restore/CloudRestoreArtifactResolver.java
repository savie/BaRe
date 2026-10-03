package com.bare.appslist.restore;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Provider-neutral boundary for resolving cloud backup parts into external
 * provider artifacts. No provider SDK or backend state is exposed here.
 */
public interface CloudRestoreArtifactResolver {
    Result resolve(Request request);

    final class Request {
        private final String packageName;
        private final String backupId;
        private final List<String> selectedParts;

        public Request(String packageName, String backupId, List<String> selectedParts) {
            if (packageName == null || packageName.isEmpty()) throw new IllegalArgumentException("packageName");
            if (backupId == null || backupId.isEmpty()) throw new IllegalArgumentException("backupId");
            List<String> copy = new ArrayList<>();
            if (selectedParts != null) {
                for (String part : selectedParts) {
                    if (part != null && !part.isEmpty() && !copy.contains(part)) copy.add(part);
                }
            }
            this.packageName = packageName;
            this.backupId = backupId;
            this.selectedParts = Collections.unmodifiableList(copy);
        }

        public String getPackageName() { return packageName; }
        public String getBackupId() { return backupId; }
        public List<String> getSelectedParts() { return selectedParts; }
    }

    final class Artifact {
        private final String partId;
        private final String providerLocator;
        private final long size;

        public Artifact(String partId, String providerLocator, long size) {
            if (partId == null || partId.isEmpty()) throw new IllegalArgumentException("partId");
            if (providerLocator == null || providerLocator.isEmpty()) {
                throw new IllegalArgumentException("providerLocator");
            }
            this.partId = partId;
            this.providerLocator = providerLocator;
            this.size = Math.max(0L, size);
        }

        public String getPartId() { return partId; }
        public String getProviderLocator() { return providerLocator; }
        public long getSize() { return size; }
    }

    final class Result {
        private final List<Artifact> artifacts;
        private final List<String> unresolvedParts;

        public Result(List<Artifact> artifacts, List<String> unresolvedParts) {
            this.artifacts = Collections.unmodifiableList(
                    new ArrayList<>(artifacts == null ? Collections.emptyList() : artifacts));
            this.unresolvedParts = Collections.unmodifiableList(
                    new ArrayList<>(unresolvedParts == null ? Collections.emptyList() : unresolvedParts));
        }

        public List<Artifact> getArtifacts() { return artifacts; }
        public List<String> getUnresolvedParts() { return unresolvedParts; }
        public boolean isComplete() { return unresolvedParts.isEmpty(); }
    }
}
