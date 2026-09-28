package com.bare.cloud;

import java.util.List;

/**
 * Provider-neutral boundary for Reference cloud file deletion.
 * The Google Drive implementation corresponds to Reference ju3.
 */
public interface CloudFileDeletionRepository {
    DeleteResult deleteFilesByIds(List<String> fileIds);

    final class DeleteResult {
        public enum Kind {
            SUCCESS,
            PARTIAL_FAILURE,
            FAILURE,
            UNKNOWN
        }

        public final Kind kind;
        public final int requestedCount;
        public final int remainingCount;
        public final Long retryAfterMillis;

        public DeleteResult(Kind kind, int requestedCount, int remainingCount, Long retryAfterMillis) {
            this.kind = kind == null ? Kind.UNKNOWN : kind;
            this.requestedCount = requestedCount;
            this.remainingCount = remainingCount;
            this.retryAfterMillis = retryAfterMillis;
        }

        public boolean isSuccess() {
            return kind == Kind.SUCCESS && remainingCount == 0;
        }
    }
}
