package com.bare.cloud.contracts;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * P5.5 R-D bounded contract layer.
 *
 * Static/domain contracts only. Provider/network, backend, filesystem mutation,
 * authentication, archive/crypto execution and Android runtime integration remain
 * downstream. Each nested contract is traceable to one frozen R-D F-ID.
 */
public final class RdCloudContracts {
    private RdCloudContracts() {}

    /** F19 — provider selection, connection-entry routing and result presentation. */
    public record F19CloudConnection(
            String providerId,
            String connectionEntry,
            String resultState,
            String failureCode) {}

    /** F20 — provider-neutral cloud operations. */
    public interface F20CloudOperations {
        Object list(Object request);
        Object upload(Object request);
        Object download(Object request);
        Object delete(Object request);
    }

    /** F21 — orphan discovery/selection/cleanup boundary. */
    public record F21OrphanCleanupState(
            String state, List<String> orphanIds, int selectedCount,
            int deletedCount, String error) {}

    /** F41 — provider-neutral artifact/archive/crypto contract. */
    public record F41ArtifactSpec(
            String format, int compressionLevel, String passwordStrategy,
            boolean encrypted, String readerVersion) {}

    /** F51 — provider abstraction/diagnostic transfer-test entry. */
    public record F51ProviderTransferContext(
            String providerId, String operation, String transferMode,
            String diagnosticRunId) {}

    /** F87 — credential persistence/export projection. */
    public record F87CredentialExport(
            String providerId, String credentialType,
            String serializedCredential, String mergedPassword,
            String privateKey, Map<String, String> settings) {}

    /** F88 — orphan state machine. */
    public enum F88State { IDLE, SCANNING, RESULTS, DELETING, ERROR }
    public record F88OrphanRun(
            F88State state, int progress, List<String> resultIds, String error) {}

    /** F95 — versioned AppSpecialData payload codec. */
    public record F95SpecialDataPayload(
            int version, String userBinding, byte[] encodedPayload,
            int uncompressedSize, boolean compressed) {}

    /** F96 — generic cloud login outcome taxonomy. */
    public record F96LoginResult(
            boolean success, String outcome, String message,
            Map<String, String> properties) {}

    /** F97 — MEGA MFA-required gate/session continuation. */
    public record F97MegaAuthState(
            boolean mfaRequired, String sessionState,
            String continuationToken, String error) {}

    /** F98 — Filen persisted/restorable encrypted session state. */
    public record F98FilenSession(
            String sessionId, String identity, boolean encryptedStatePresent,
            boolean cryptoStateValid, String rehydrationState) {}

    /** F102 — selectable cloud diagnostic transfer-test engine. */
    public enum F102DiagnosticState {
        NOT_RUN, RUNNING, PASSED, FAILED, ACTION_REQUIRED, SKIPPED
    }
    public record F102DiagnosticResult(
            String testId, F102DiagnosticState state, String report,
            long bytes, String hash, String error) {}

    /** F103 — persisted parallel/serial transfer policy. */
    public enum F103TransferMode { PARALLEL, SERIAL }
    public record F103ConcurrencyPolicy(
            F103TransferMode mode, boolean persisted) {}

    /** F104 — MEGA saved-session persistence/rehydration. */
    public record F104MegaSavedSession(
            String serializedSession, boolean valid, String decodedIdentity,
            String rehydrationState) {}

    /** F105 — protected-backup deletion enforcement. */
    public record F105DeleteDecision(
            boolean confirmationRequired, int protectedCount,
            boolean localRevalidated, boolean cloudRevalidated,
            boolean allowed, String reason) {}

    /** F106 — shared AppSpecialData v1 container/codec. */
    public record F106SpecialDataContainer(
            int version, String encryptedStringSeparator, String userBinding,
            byte[] payload, boolean compressed, boolean valid) {}

    /** F131 — TeraBox token/session lifecycle. */
    public record F131TeraBoxCredentials(
            String accessToken, String refreshToken, String apiDomain,
            String uploadDomain, String userKey, String displayIdentity,
            long expiryTime, String cloudServiceId) {
        public boolean isExpired(long nowMillis) {
            return expiryTime > 0L && nowMillis >= expiryTime;
        }
        public boolean needsRefresh(long nowMillis, long skewMillis) {
            return expiryTime > 0L && nowMillis + skewMillis >= expiryTime;
        }
    }

    /** F132 — TeraBox browser OAuth/deep-link sign-in lifecycle. */
    public record F132TeraBoxSignInState(
            boolean browserAvailable, boolean credentialsConfigured,
            String authorizationCode, String callbackUri,
            String state, String error) {}

    /** F133 — TeraBox multipart upload session/part integrity. */
    public record F133UploadChunk(int index, long start, long size) {}
    public record F133PartResult(
            String md5, String uploadId, int partSeq) {}
    public record F133UploadSession(
            String uploadId, List<F133UploadChunk> chunks,
            List<F133PartResult> acknowledgedParts, boolean finalized) {}

    /** F134 — TeraBox HTTP/API error normalization/classification. */
    public record F134TeraBoxError(
            String method, String url, int httpStatus, long providerErrno,
            String rawBody) {
        public boolean isAuthenticationInvalidating() {
            return httpStatus == 401 || httpStatus == 403
                    || providerErrno == 200002L || providerErrno == 200003L;
        }
        public boolean isNotFoundNoOp() {
            return providerErrno == -9L;
        }
    }

    /** F135 — Google Drive resumable upload lifecycle. */
    public record F135ResumableUpload(
            String sessionUrl, long acknowledgedBytes, long totalBytes,
            boolean restartRequired, boolean completed) {}

    /** F136 — Google Drive batch-delete retry/result aggregation. */
    public record F136BatchDeleteResult(
            List<String> failedIds, int retryCount,
            boolean terminalFailure, String error) {}

    /** F137 — ranged-download progression/recovery. */
    public record F137RangeDownload(
            long rangeStart, long rangeEnd, long completedBytes,
            int retryCount, boolean localFilePresent,
            boolean mainFolderPresent, String state) {}

    /** F138 — Swift Backup root/account migration lifecycle. */
    public record F138CloudRootMigration(
            String rootId, String accountEmail, boolean created,
            boolean duplicateReconciled, boolean migrationRequired,
            boolean rolledBack, int retryCount, String state) {}

    /** F139 — GMS/Google Drive scoped token lifecycle. */
    public record F139ScopedToken(
            String accountId, String accessToken, long expiryTime,
            boolean staleCleared, boolean refreshed,
            String failureState) {}

    /** F140 — Box resumable upload/session/cache. */
    public record F140BoxUpload(
            String sessionId, long partSize, long offset,
            boolean committed, int retryCount, String recentUploadCacheKey) {}

    /** F141 — Dropbox upload session/chunk retry. */
    public record F141DropboxUpload(
            String sessionId, long offset, int retryCount,
            boolean offsetCorrected, boolean stopped, String failure) {}

    /** F142 — OneDrive Graph upload-session progression. */
    public record F142OneDriveUpload(
            String sessionUrl, long nextRangeStart, long nextRangeEnd,
            String resultState, int retryCount, boolean authStop) {}

    /** F143 — OneDrive batch-delete aggregation/retry. */
    public record F143OneDriveDelete(
            List<String> failedIds, int retryCount,
            boolean terminalFailure, String error) {}

    /** F144 — Microsoft Identity/MSAL token boundary. */
    public record F144MicrosoftToken(
            String accountId, String accessToken, long expiryTime,
            boolean forceRefresh, boolean invalid, String error) {}

    /** F145 — Yandex OAuth refresh/credential replacement. */
    public record F145YandexCredentials(
            String accessToken, String refreshToken, long expiryTime,
            boolean persisted, boolean refreshFailed, String error) {}

    /** F146 — Yandex async operation polling. */
    public record F146YandexOperation(
            String operationId, String state, long retryAfterMillis,
            boolean terminal, String downloadLink, String error) {}

    /** F147 — pCloud endpoint failover policy. */
    public record F147PCloudEndpoint(
            String endpoint, List<String> candidates,
            int attempt, boolean persisted, boolean failoverRequired) {}

    /** F148 — pCloud temporary-upload finalization. */
    public record F148PCloudFinalize(
            String temporaryId, String parentId, String finalName,
            boolean uploaded, boolean renamed, boolean cleanedUp,
            String error) {}

    /** F149 — S3 multi-object delete aggregation. */
    public record F149S3DeleteResult(
            int requestedCount, int successCount, List<String> failedKeys,
            boolean aggregateFailure) {}

    /** F150 — WebDAV chunked upload/fallback. */
    public record F150WebDavUpload(
            long chunkSize, int retryCount, boolean serverAssembly,
            String temporaryArtifact, boolean disconnectVerified,
            boolean directFallback) {}

    /** F151 — SMB multi-method delete fallback. */
    public record F151SmbDelete(
            List<String> attemptedMethods, List<String> failures,
            String selectedFallback, boolean escalated) {}

    /** F152 — SFTP password/private-key authentication. */
    public record F152SftpAuth(
            String mode, String username, String privateKey,
            String passphrase, boolean strictHostKeyChecking) {}

    /** F153 — FTP LIST/FTPS compatibility and cleanup. */
    public record F153FtpTransfer(
            boolean listFallback, boolean clientRecreated,
            boolean ftpsTlsRetry, boolean partialUploadCleanup,
            boolean directTransferFallback) {}

    /** F164 — provider access/authorization state machine. */
    public record F164CloudAccessState(
            String providerId, String state, String authorizationOutcome,
            String recoveryIntent, String error) {}

    /** F165 — CloudServiceId identity-file lifecycle. */
    public record F165CloudIdentity(
            String cloudServiceId, String identityFile,
            boolean created, boolean reconciled, boolean recovered,
            boolean generated, boolean protectedFile) {}

    /** R-D traceability index: exact frozen scope, no F94 duplicate. */
    public static final Set<String> RD_SCOPE = Set.of(
            "F19","F20","F21","F41","F51","F87","F88","F95","F96","F97","F98",
            "F102","F103","F104","F105","F106","F131","F132","F133","F134","F135",
            "F136","F137","F138","F139","F140","F141","F142","F143","F144","F145",
            "F146","F147","F148","F149","F150","F151","F152","F153","F164","F165");
}
