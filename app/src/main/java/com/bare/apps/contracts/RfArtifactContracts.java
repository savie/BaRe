package com.bare.apps.contracts;

import java.util.List;
import java.util.Set;

/**
 * P5.5 R-F bounded archive/crypto/APK-import contract layer.
 *
 * Static/domain contracts only. Native archive/crypto execution, filesystem
 * mutation, PackageInstaller execution, privileged access, provider/backend
 * execution and runtime/device verification remain downstream.
 */
public final class RfArtifactContracts {
    private RfArtifactContracts() {}

    /** F86 — APKS share-package artifact metadata and per-file manifest. */
    public record F86FileMetadata(
            String name,
            String role,
            long sizeBytes,
            String sha256) {}

    public record F86ApksPackage(
            String packageName, String appName, String versionName, Long versionCode,
            String installerPackage, long exportedAt, String exportedBy,
            List<F86FileMetadata> files, String saiMetadataEntry,
            String swiftBackupMetadataEntry) {
        public static final String SAI_METADATA = "meta.sai_v2.json";
        public static final String SWIFTBACKUP_METADATA = "meta.swiftbackup_v1.json";
        public boolean hasRequiredMetadata() {
            return SAI_METADATA.equals(saiMetadataEntry)
                    && SWIFTBACKUP_METADATA.equals(swiftBackupMetadataEntry)
                    && files != null && !files.isEmpty();
        }
    }

    /** F154 — concrete app-data part model, capability and persisted selection. */
    public enum F154Part { APP, DATA, EXTDATA, EXPANSION, MEDIA }
    public enum F154BackupRequirement { NONE, ROOT, ROOT_OR_SHIZUKU }

    public record F154PartSelection(
            F154Part part, F154BackupRequirement backupRequirement,
            boolean systemChecked, boolean userChecked) {}

    /** F155 — per-part encryption metadata and local/cloud reconciliation state. */
    public record F155PartEncryptionMetadata(
            F154Part part,
            boolean encrypted,
            String encryptionMethod,
            String passwordHash,
            long sizeBytes,
            long mirroredSizeBytes,
            long backupDateMillis) {}

    public record F155Reconciliation(
            F155Part part,
            F155PartEncryptionMetadata local,
            F155PartEncryptionMetadata cloud,
            boolean matches) {}

    /** F156 — SBA KDF/key-check and index-MAC derivation inputs. */
    public enum F156EncryptionMethod {
        NONE, SEVEN_ZIP_AES, AES_256_GCM, AES_256_GCM_SIV, AEGIS_256, AEGIS_128X2
    }

    public record F156KdfParameters(
            F156EncryptionMethod method, int iterations, int memoryKiB,
            int parallelism, int outputBytes, int saltBytes) {
        public boolean validSalt() { return saltBytes == 16; }
        public boolean validParameters() {
            return iterations >= 1 && iterations <= 100
                    && memoryKiB >= 16384 && memoryKiB <= 65536
                    && parallelism >= 1 && parallelism <= 8
                    && outputBytes > 0;
        }
    }

    public record F156KeyCheck(
            String encryptionMethod,
            byte[] salt,
            byte[] keyCheck,
            boolean valid) {}

    public record F156IndexMac(
            long archiveOffset,
            long archiveLength,
            int entryCount,
            byte[] metadata,
            byte[] mac,
            boolean valid) {}

    /** F157 — native SBA archive creation request/result boundary. */
    public record F157ArchiveCreate(
            String destination,
            String tarProfile,
            String compressionMethod,
            int compressionLevel,
            String encryptionMethod,
            List<String> entryNames,
            boolean verifyAfterCreate,
            boolean finalized,
            boolean temporaryCleaned,
            long progressBytes,
            long totalBytes,
            String resultState) {}

    /** F158 — SBA archive parse/decrypt safety and authentication boundary. */
    public record F158ArchiveParse(
            String format,
            String archiveVersion,
            String kdfMethod,
            String encryptionMethod,
            boolean headerValid,
            boolean keyCheckValid,
            boolean duplicateEntryRejected,
            boolean unsafeEntryRejected,
            boolean extractionReady,
            String errorState) {}

    /** F162 — per-part cloud-restore artifact descriptor and reuse decision. */
    public record F162ArtifactDescriptor(
            F154Part part,
            String artifactKind,
            String cloudSource,
            String targetLocalPath,
            long expectedSizeBytes,
            boolean optional) {}

    public record F162ReuseDecision(
            F162ArtifactDescriptor artifact, boolean localExists,
            long localSizeBytes, boolean exactSizeMatch, boolean metadataMatches,
            boolean reuseLocalCopy, boolean downloadRequired, String reason) {
        public static F162ReuseDecision byExactSize(
                F162ArtifactDescriptor artifact, boolean exists, long localSize,
                boolean metadataMatches) {
            boolean exact = exists && localSize == artifact.expectedSizeBytes();
            return new F162ReuseDecision(artifact, exists, localSize, exact,
                    metadataMatches, exact, !exact,
                    exact ? "LOCAL_COPY_REUSED" : "DOWNLOAD_REQUIRED");
        }
    }

    /** F167 — APK/APKS import intake, staging, validation and fallback boundary. */
    public enum F167InputAction { VIEW, SEND }

    public enum F167ArtifactType { APK, APKS }

    public record F167StagedEntry(
            String originalName,
            String stagedName,
            String role,
            long sizeBytes,
            boolean valid) {}

    public record F167ImportState(
            F167InputAction action, F167ArtifactType artifactType, String sourceUri,
            String stagingDirectory, List<F167StagedEntry> entries,
            boolean archiveValid, boolean metadataValid,
            boolean installerFallbackRequired, String validationError, String state) {
        public static F167ArtifactType classify(String displayName, String mimeType) {
            String name = displayName == null ? "" : displayName.toLowerCase(java.util.Locale.ROOT);
            if (name.endsWith(".apks")) return F167ArtifactType.APKS;
            if (name.endsWith(".apk")
                    || "application/vnd.android.package-archive".equals(mimeType)) {
                return F167ArtifactType.APK;
            }
            return null;
        }
        public static boolean accepts(F167InputAction action) {
            return action == F167InputAction.VIEW || action == F167InputAction.SEND;
        }
    }

    /** R-F traceability index: exact frozen scope, no duplicate F94 marker. */
    public static final Set<String> RF_SCOPE = Set.of(
            "F86","F154","F155","F156","F157","F158","F162","F167");
}
