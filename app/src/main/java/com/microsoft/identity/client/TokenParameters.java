package com.microsoft.identity.client;

import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.common.java.dto.AccountRecord;
import defpackage.c6;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class TokenParameters {
    private final Account mAccount;
    private AccountRecord mAccountRecord;
    private String mAuthority;
    private final ClaimsRequest mClaimsRequest;
    private List<String> mScopes;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class Builder<B extends Builder<B>> {
        private Account mAccount;
        private String mAuthority;
        private ClaimsRequest mClaimsRequest;
        private List<String> mScopes;

        public final B forAccount(Account account) {
            this.mAccount = account;
            return (B) self();
        }

        public final B fromAuthority(String str) {
            this.mAuthority = str;
            return (B) self();
        }

        public abstract B self();

        public final B withClaims(ClaimsRequest claimsRequest) {
            this.mClaimsRequest = claimsRequest;
            return (B) self();
        }

        public final B withScopes(List<String> list) {
            if (this.mScopes != null) {
                c6.f("Scopes is already set.");
                return null;
            }
            if (list == null || list.isEmpty()) {
                c6.f("Empty scopes list.");
                return null;
            }
            this.mScopes = list;
            return (B) self();
        }
    }

    public TokenParameters(Builder builder) {
        this.mAccount = builder.mAccount;
        this.mAuthority = builder.mAuthority;
        this.mClaimsRequest = builder.mClaimsRequest;
        this.mScopes = builder.mScopes;
    }

    public final Account getAccount() {
        return this.mAccount;
    }

    public final AccountRecord getAccountRecord() {
        return this.mAccountRecord;
    }

    public final String getAuthority() {
        return this.mAuthority;
    }

    public final ClaimsRequest getClaimsRequest() {
        return this.mClaimsRequest;
    }

    public final List<String> getScopes() {
        return this.mScopes;
    }

    public final void setAccountRecord(AccountRecord accountRecord) {
        this.mAccountRecord = accountRecord;
    }

    public final void setAuthority(String str) {
        this.mAuthority = str;
    }

    public final void setScopes(List<String> list) {
        this.mScopes = list;
    }
}
