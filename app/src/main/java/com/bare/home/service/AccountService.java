package com.bare.home.service;

import com.bare.home.data.AccountViewModel;
import com.bare.home.repository.AccountRepository;
import com.bare.home.repository.BackendIdentity;

/** Maps provider-neutral account data into the Reference-shaped Home model. */
public final class AccountService {
    private final AccountRepository repository;

    public AccountService(AccountRepository repository) {
        this.repository = repository;
    }

    public void refresh(AccountViewModel model) {
        BackendIdentity identity = repository.currentIdentity();
        if (identity != null) {
            model.setUser(new AccountViewModel.User(
                    identity.id, identity.email, identity.displayName, identity.photoUrl, identity.anonymous));
        } else {
            model.setUser(null);
        }
        model.configureItems(repository.isRegisteredContributor());
    }

    public void signOut() {
        repository.signOut();
    }
}
