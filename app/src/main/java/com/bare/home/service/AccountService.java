package com.bare.home.service;

import com.bare.account.data.UserInfo;
import com.bare.account.repository.UserInfoRepository;
import com.bare.home.data.AccountViewModel;
import com.bare.home.repository.AccountRepository;
import com.bare.home.repository.BackendIdentity;

/**
 * Maps provider-neutral account data into the Reference-shaped Home model.
 *
 * Identity acquisition and userInfo persistence are separate provider-neutral
 * boundaries; this service only composes their already-defined contracts.
 */
public final class AccountService {
    private final AccountRepository accountRepository;
    private final UserInfoRepository userInfoRepository;

    public AccountService(
            AccountRepository accountRepository,
            UserInfoRepository userInfoRepository) {
        this.accountRepository = accountRepository;
        this.userInfoRepository = userInfoRepository;
    }

    public void refresh(AccountViewModel model) {
        BackendIdentity identity = accountRepository.currentIdentity();
        if (identity != null) {
            UserInfo userInfo = userInfoRepository.load(identity.id);
            if (userInfo != null) {
                model.setUser(new AccountViewModel.User(
                        userInfo.id,
                        userInfo.email,
                        userInfo.displayName,
                        userInfo.photoUrl,
                        userInfo.isAnonymous()));
            } else {
                // Reference creates an in-memory user model for anonymous identity
                // before a persistent userInfo record is required.
                model.setUser(new AccountViewModel.User(
                        identity.id,
                        identity.email,
                        identity.displayName,
                        identity.photoUrl,
                        identity.anonymous));
            }
        } else {
            model.setUser(null);
        }
        model.configureItems(
                identity != null && accountRepository.isRegisteredContributor());
    }

    public void signOut() {
        accountRepository.signOut();
    }
}
