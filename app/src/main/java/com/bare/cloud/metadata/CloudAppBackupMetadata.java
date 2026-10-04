package com.bare.cloud.metadata;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Provider-neutral app-backup metadata boundary.
 * Artifact bytes and provider credentials stay outside this model.
 */
public final class CloudAppBackupMetadata {
    public static final long MIN_SUPPORTED_BARE_VERSION_CODE = 580L;

    public static final class Part {
        public final String id;
        public final String providerLocator;
        public final Long size;
        public final Long sizeMirrored;
        public final Long backupDate;
        public final Boolean encrypted;
        public final Long requiredVersionCode;
        public final String requiredVersionName;
        public final String encryptionMethod;
        public final String passwordHash;

        public Part(String id, String providerLocator, Long size,
                    String encryptionMethod, String passwordHash) {
            this(id, providerLocator, size, null, null, null, null, null,
                    encryptionMethod, passwordHash);
        }

        public Part(String id, String providerLocator, Long size, Long sizeMirrored,
                    Long backupDate, Boolean encrypted, Long requiredVersionCode,
                    String requiredVersionName, String encryptionMethod, String passwordHash) {
            if (id == null || id.trim().isEmpty()) throw new IllegalArgumentException("Part id is required.");
            this.id = id;
            this.providerLocator = providerLocator;
            this.size = size;
            this.sizeMirrored = sizeMirrored;
            this.backupDate = backupDate;
            this.encrypted = encrypted;
            this.requiredVersionCode = requiredVersionCode;
            this.requiredVersionName = requiredVersionName;
            this.encryptionMethod = encryptionMethod;
            this.passwordHash = passwordHash;
        }

        public Part withoutLocalState() {
            return new Part(id, providerLocator, size, sizeMirrored, backupDate, encrypted,
                    requiredVersionCode, requiredVersionName, encryptionMethod, passwordHash);
        }
    }

    public final String packageName;
    public final String backupId;
    public final String name;
    public final Long versionCode;
    public final String versionName;
    public final Long backupDate;
    public final Long updateDate;
    public final long minRequiredVersionCode;
    public final List<Part> parts;

    public CloudAppBackupMetadata(
            String packageName,
            String backupId,
            String name,
            Long versionCode,
            Long backupDate,
            Long updateDate,
            Long minRequiredVersionCode,
            List<Part> parts) {
        if (packageName == null || packageName.trim().isEmpty()) {
            throw new IllegalArgumentException("Package name is required.");
        }
        if (backupId == null || backupId.trim().isEmpty()) {
            throw new IllegalArgumentException("Backup id is required.");
        }
        this.packageName = packageName;
        this.backupId = backupId;
        this.name = name == null ? "" : name;
        this.versionCode = versionCode;
        this.backupDate = backupDate;
        this.updateDate = updateDate;
        this.minRequiredVersionCode = minRequiredVersionCode == null
                ? MIN_SUPPORTED_BARE_VERSION_CODE
                : minRequiredVersionCode;
        this.parts = Collections.unmodifiableList(
                new ArrayList<>(parts == null ? Collections.<Part>emptyList() : parts));
    }

    public boolean isValid() {
        if (packageName.trim().isEmpty() || backupId.trim().isEmpty()) return false;
        if (minRequiredVersionCode <= 0) return false;
        for (Part part : parts) {
            if (part == null || part.id.trim().isEmpty()) return false;
            if (part.size != null && part.size < 0) return false;
            if (part.sizeMirrored != null && part.sizeMirrored < 0) return false;
            if (part.requiredVersionCode != null && part.requiredVersionCode < 0) return false;
        }
        return true;
    }

    public CloudAppBackupMetadata withPart(Part replacement) {
        if (replacement == null) throw new IllegalArgumentException("Part is required.");
        List<Part> next = new ArrayList<>();
        boolean replaced = false;
        for (Part part : parts) {
            if (part.id.equals(replacement.id)) {
                next.add(replacement);
                replaced = true;
            } else {
                next.add(part);
            }
        }
        if (!replaced) next.add(replacement);
        return copy(next);
    }

    public CloudAppBackupMetadata withoutPart(String partId) {
        List<Part> next = new ArrayList<>();
        for (Part part : parts) {
            if (!part.id.equals(partId)) next.add(part);
        }
        return copy(next);
    }

    public boolean isEmpty() {
        return parts.isEmpty();
    }

    private CloudAppBackupMetadata copy(List<Part> next) {
        return new CloudAppBackupMetadata(
                packageName, backupId, name, versionCode, backupDate, updateDate,
                minRequiredVersionCode, next);
    }
}
