package com.bare.home.service;

import com.bare.home.data.CloudViewModel;
import com.bare.home.repository.CloudRepository;

/** Orchestrates Reference cloud-check semantics without binding Home to a provider SDK. */
public final class CloudService {
    private final CloudRepository repository;

    public CloudService(CloudRepository repository) {
        this.repository = repository;
    }

    public CloudRepository.CloudSnapshot refresh() {
        return repository.checkAccess(true);
    }

    public CloudRepository.CloudSnapshot current() {
        return repository.current();
    }

    public void disconnect() {
        repository.disconnect();
    }

    public void applyTo(CloudViewModel model, CloudRepository.CloudSnapshot snapshot) {
        if (snapshot == null) return;
        model.setState(snapshot.state == null ? CloudViewModel.State.LOADING : snapshot.state);
        model.setAccountId(snapshot.accountId);
        model.setCloudFolderName(snapshot.mainFolderName);
        model.setBusy(false);
    }
}
