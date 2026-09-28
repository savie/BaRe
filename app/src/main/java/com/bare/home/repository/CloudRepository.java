package com.bare.home.repository;

import com.bare.home.data.CloudViewModel;

/** Cloud boundary. The concrete provider is deliberately outside the Home domain. */
public interface CloudRepository {
    CloudSnapshot checkAccess(boolean refresh);

    CloudSnapshot current();

    void disconnect();

    final class CloudSnapshot {
        public final CloudViewModel.State state;
        public final String accountId;
        public final String mainFolderName;
        public final boolean recoverable;
        public final boolean networkError;
        public final String diagnostic;

        public CloudSnapshot(CloudViewModel.State state, String accountId, String mainFolderName,
                             boolean recoverable, boolean networkError, String diagnostic) {
            this.state = state;
            this.accountId = accountId == null ? "" : accountId;
            this.mainFolderName = mainFolderName == null ? "" : mainFolderName;
            this.recoverable = recoverable;
            this.networkError = networkError;
            this.diagnostic = diagnostic;
        }

        public static CloudSnapshot loading() {
            return new CloudSnapshot(CloudViewModel.State.LOADING, "", "", false, false, null);
        }
    }
}
