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
            String packageName,
            String appName,
            String versionName,
            Long versionCode,
            String installerPackage,
            long exportedAt,
            String exportedBy,
            List<F86FileMetadata> files,
            String saiMetadataEntry,
            String swiftBackupMetadataEntry) {}

    /** F154 — concrete app-data part model, capability and persisted selection. */
    public enum F154Part { APP, DATA, EXTDATA, EXPANSION, MEDIA }

    public record F154PartSelection(
            F154Part part,
            String backupRequirement,
            boolean systemChecked,
            boolean userChecked) {}

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
    public record F156KdfParameters(
            String method,
            int iterations,
            int memoryKiB,
            int parallelism,
            int outputBytes,
            int saltBytes) {}

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
            F162ArtifactDescriptor artifact,
            boolean localExists,
            long localSizeBytes,
            boolean exactSizeMatch,
            boolean metadataMatches,
            boolean reuseLocalCopy,
            boolean downloadRequired,
            String reason) {}

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
            F167InputAction action,
            F167ArtifactType artifactType,
            String sourceUri,
            String stagingDirectory,
            List<F167StagedEntry> entries,
            boolean archiveValid,
            boolean metadataValid,
            boolean installerFallbackRequired,
            String validationError,
            String state) {}

    /** R-F traceability index: exact frozen scope, no duplicate F94 marker. */
    public static final Set<String> RF_SCOPE = Set.of(
            "F86","F154","F155","F156","F157","F158","F162","F167");
}
