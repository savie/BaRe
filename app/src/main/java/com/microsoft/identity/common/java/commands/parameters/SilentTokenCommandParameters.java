package com.microsoft.identity.common.java.commands.parameters;

import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryB2CAuthority;
import com.microsoft.identity.common.java.authorities.CIAMAuthority;
import com.microsoft.identity.common.java.exception.ArgumentException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.TerminalException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectoryCloud;
import defpackage.dj7;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SilentTokenCommandParameters extends TokenCommandParameters {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class SilentTokenCommandParametersBuilder<C extends SilentTokenCommandParameters, B extends SilentTokenCommandParametersBuilder<C, B>> extends TokenCommandParameters.TokenCommandParametersBuilder<C, B> {
        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public abstract C build();

        @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters.TokenCommandParametersBuilder, com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final String toString() {
            return dj7.n(new StringBuilder("SilentTokenCommandParameters.SilentTokenCommandParametersBuilder(super="), super.toString(), ")");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class SilentTokenCommandParametersBuilderImpl extends SilentTokenCommandParametersBuilder<SilentTokenCommandParameters, SilentTokenCommandParametersBuilderImpl> {
        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParameters build() {
            return new SilentTokenCommandParameters(this);
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters.TokenCommandParametersBuilder, com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final TokenCommandParameters.TokenCommandParametersBuilder self() {
            return this;
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters.SilentTokenCommandParametersBuilder, com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final SilentTokenCommandParameters build() {
            return new SilentTokenCommandParameters(this);
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParameters.CommandParametersBuilder self() {
            return this;
        }
    }

    public static SilentTokenCommandParametersBuilder<?, ?> builder() {
        return new SilentTokenCommandParametersBuilderImpl();
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final boolean canEqual(CommandParameters commandParameters) {
        return commandParameters instanceof SilentTokenCommandParameters;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof SilentTokenCommandParameters) && super.equals(obj);
    }

    public final SilentTokenCommandParametersBuilder<?, ?> toBuilder() {
        SilentTokenCommandParametersBuilderImpl silentTokenCommandParametersBuilderImpl = new SilentTokenCommandParametersBuilderImpl();
        silentTokenCommandParametersBuilderImpl.$fillValuesFrom$1(this);
        return silentTokenCommandParametersBuilderImpl;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters
    public final void validate() throws ArgumentException, ClientException {
        URL authorityURL;
        super.validate();
        if (getAccount() == null) {
            Logger.warn("SilentTokenCommandParameters", "The account set on silent operation parameters is NULL.");
            return;
        }
        if ((getAuthority() instanceof AzureActiveDirectoryB2CAuthority) || (getAuthority() instanceof CIAMAuthority)) {
            return;
        }
        try {
            Authority authority = getAuthority();
            if (authority != null) {
                int i = AzureActiveDirectory.a;
                authorityURL = authority.getAuthorityURL();
            } else {
                authorityURL = null;
            }
            AzureActiveDirectory.ensureCloudDiscoveryForAuthority(authorityURL);
            AzureActiveDirectoryCloud azureActiveDirectoryCloudFromHostName = AzureActiveDirectory.getAzureActiveDirectoryCloudFromHostName(getAccount().getEnvironment());
            if (azureActiveDirectoryCloudFromHostName == null || !azureActiveDirectoryCloudFromHostName.getPreferredNetworkHostName().equals(getAuthority().getAuthorityURL().getAuthority())) {
                throw new ArgumentException("acquireTokenSilent", "authority", "Authority passed to silent parameters does not match with the cloud associated to the account.");
            }
        } catch (ClientException e) {
            String errorCode = e.getErrorCode();
            Logger.error("SilentTokenCommandParameters:authorityMatchesAccountEnvironment", "Unable to perform cloud discovery", e);
            throw new TerminalException(e, "Unable to perform cloud discovery in order to validate request authority", errorCode);
        }
    }
}
