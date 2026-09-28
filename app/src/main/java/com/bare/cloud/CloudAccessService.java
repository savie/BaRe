package com.bare.cloud;

import com.bare.home.data.CloudViewModel;
import com.bare.home.repository.CloudRepository;

/** Maps Reference tb1 provider access results into the Home cloud state contract. */
public final class CloudAccessService {
    private final CloudProviderRepository provider;

    public CloudAccessService(CloudProviderRepository provider) {
        this.provider = provider;
    }

    public CloudRepository.CloudSnapshot refresh(boolean forceLoading) {
        CloudProviderRepository.CloudAccessResult result = provider.checkAccess(forceLoading);
        return map(result);
    }

    private CloudRepository.CloudSnapshot map(CloudProviderRepository.CloudAccessResult result) {
        if (result == null) return CloudRepository.CloudSnapshot.loading();
        CloudViewModel.State state;
        switch (result.kind) {
            case CONNECTED: state = CloudViewModel.State.DRIVE_CONNECTED; break;
            case NETWORK_ERROR: state = CloudViewModel.State.NETWORK_ERROR; break;
            case TEMPORARY_ERROR: state = CloudViewModel.State.TEMP_CONNECTION_ERROR; break;
            case NOT_CONNECTED: state = CloudViewModel.State.DRIVE_NOT_CONNECTED; break;
            default: state = CloudViewModel.State.DRIVE_NOT_CONNECTED;
        }
        return new CloudRepository.CloudSnapshot(
                state,
                "",
                provider.getMainCloudFolderName(),
                result.recoverableAuthorization,
                result.kind == CloudProviderRepository.CloudAccessResult.Kind.NETWORK_ERROR,
                result.diagnostic);
    }
}
