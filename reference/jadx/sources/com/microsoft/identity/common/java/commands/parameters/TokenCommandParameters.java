package com.microsoft.identity.common.java.commands.parameters;

import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.dto.IAccountRecord;
import com.microsoft.identity.common.java.exception.ArgumentException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import defpackage.dj7;
import defpackage.q03;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class TokenCommandParameters extends CommandParameters {
    private final IAccountRecord account;

    @q03
    private final AbstractAuthenticationScheme authenticationScheme;

    @q03
    private final Authority authority;

    @q03
    private final String claimsRequestJson;
    private final String domainHint;
    private final List<Map.Entry<String, String>> extraOptions;
    private final List<Map.Entry<String, String>> extraTokenBodyParameters;

    @q03
    private final boolean forceRefresh;
    private final String loginHint;

    @q03
    private final String mamEnrollmentId;

    @q03
    private final Set<String> scopes;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class TokenCommandParametersBuilder<C extends TokenCommandParameters, B extends TokenCommandParametersBuilder<C, B>> extends CommandParameters.CommandParametersBuilder<C, B> {
        private IAccountRecord account;
        private AbstractAuthenticationScheme authenticationScheme;
        private Authority authority;
        private String claimsRequestJson;
        private String domainHint;
        private List<Map.Entry<String, String>> extraOptions;
        private List<Map.Entry<String, String>> extraTokenBodyParameters;
        private boolean forceRefresh;
        private String loginHint;
        private String mamEnrollmentId;
        private Set<String> scopes;

        public final void $fillValuesFrom$1(TokenCommandParameters tokenCommandParameters) {
            $fillValuesFrom(tokenCommandParameters);
            account(tokenCommandParameters.account);
            scopes(tokenCommandParameters.scopes);
            authority(tokenCommandParameters.authority);
            claimsRequestJson(tokenCommandParameters.claimsRequestJson);
            authenticationScheme(tokenCommandParameters.authenticationScheme);
            this.mamEnrollmentId = tokenCommandParameters.mamEnrollmentId;
            forceRefresh(tokenCommandParameters.forceRefresh);
            loginHint(tokenCommandParameters.loginHint);
            domainHint(tokenCommandParameters.domainHint);
            this.extraOptions = tokenCommandParameters.extraOptions;
            this.extraTokenBodyParameters = tokenCommandParameters.extraTokenBodyParameters;
        }

        public final B account(IAccountRecord iAccountRecord) {
            this.account = iAccountRecord;
            return (B) self();
        }

        public final B authenticationScheme(AbstractAuthenticationScheme abstractAuthenticationScheme) {
            this.authenticationScheme = abstractAuthenticationScheme;
            return (B) self();
        }

        public final B authority(Authority authority) {
            this.authority = authority;
            return (B) self();
        }

        public final B claimsRequestJson(String str) {
            this.claimsRequestJson = str;
            return (B) self();
        }

        public final B domainHint(String str) {
            this.domainHint = str;
            return (B) self();
        }

        public final B forceRefresh(boolean z) {
            this.forceRefresh = z;
            return (B) self();
        }

        public final B loginHint(String str) {
            this.loginHint = str;
            return (B) self();
        }

        public final B scopes(Set<String> set) {
            this.scopes = set;
            return (B) self();
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public abstract B self();

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public String toString() {
            StringBuilder sb = new StringBuilder("TokenCommandParameters.TokenCommandParametersBuilder(super=");
            sb.append(super.toString());
            sb.append(", account=");
            sb.append(this.account);
            sb.append(", scopes=");
            sb.append(this.scopes);
            sb.append(", authority=");
            sb.append(this.authority);
            sb.append(", claimsRequestJson=");
            sb.append(this.claimsRequestJson);
            sb.append(", authenticationScheme=");
            sb.append(this.authenticationScheme);
            sb.append(", mamEnrollmentId=");
            sb.append(this.mamEnrollmentId);
            sb.append(", forceRefresh=");
            sb.append(this.forceRefresh);
            sb.append(", loginHint=");
            sb.append(this.loginHint);
            sb.append(", domainHint=");
            sb.append(this.domainHint);
            sb.append(", extraOptions=");
            sb.append(this.extraOptions);
            sb.append(", extraTokenBodyParameters=");
            return dj7.o(sb, this.extraTokenBodyParameters, ")");
        }
    }

    public TokenCommandParameters(TokenCommandParametersBuilder<?, ?> tokenCommandParametersBuilder) {
        super(tokenCommandParametersBuilder);
        this.account = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).account;
        this.scopes = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).scopes;
        this.authority = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).authority;
        this.claimsRequestJson = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).claimsRequestJson;
        this.authenticationScheme = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).authenticationScheme;
        this.mamEnrollmentId = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).mamEnrollmentId;
        this.forceRefresh = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).forceRefresh;
        this.loginHint = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).loginHint;
        this.domainHint = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).domainHint;
        this.extraOptions = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).extraOptions;
        this.extraTokenBodyParameters = ((TokenCommandParametersBuilder) tokenCommandParametersBuilder).extraTokenBodyParameters;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public abstract boolean canEqual(CommandParameters commandParameters);

    @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenCommandParameters)) {
            return false;
        }
        TokenCommandParameters tokenCommandParameters = (TokenCommandParameters) obj;
        if (!tokenCommandParameters.canEqual(this) || !super.equals(obj) || this.forceRefresh != tokenCommandParameters.forceRefresh) {
            return false;
        }
        IAccountRecord iAccountRecord = tokenCommandParameters.account;
        IAccountRecord iAccountRecord2 = this.account;
        if (iAccountRecord2 == null) {
            if (iAccountRecord != null) {
                return false;
            }
        } else if (!iAccountRecord2.equals(iAccountRecord)) {
            return false;
        }
        HashSet scopes = getScopes();
        HashSet scopes2 = tokenCommandParameters.getScopes();
        if (scopes == null) {
            if (scopes2 != null) {
                return false;
            }
        } else if (!scopes.equals(scopes2)) {
            return false;
        }
        Authority authority = this.authority;
        Authority authority2 = tokenCommandParameters.authority;
        if (authority == null) {
            if (authority2 != null) {
                return false;
            }
        } else if (!authority.equals(authority2)) {
            return false;
        }
        String str = this.claimsRequestJson;
        String str2 = tokenCommandParameters.claimsRequestJson;
        if (str == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str.equals(str2)) {
            return false;
        }
        AbstractAuthenticationScheme abstractAuthenticationScheme = this.authenticationScheme;
        AbstractAuthenticationScheme abstractAuthenticationScheme2 = tokenCommandParameters.authenticationScheme;
        if (abstractAuthenticationScheme == null) {
            if (abstractAuthenticationScheme2 != null) {
                return false;
            }
        } else if (!abstractAuthenticationScheme.equals(abstractAuthenticationScheme2)) {
            return false;
        }
        String str3 = this.mamEnrollmentId;
        String str4 = tokenCommandParameters.mamEnrollmentId;
        if (str3 == null) {
            if (str4 != null) {
                return false;
            }
        } else if (!str3.equals(str4)) {
            return false;
        }
        String str5 = tokenCommandParameters.loginHint;
        String str6 = this.loginHint;
        if (str6 == null) {
            if (str5 != null) {
                return false;
            }
        } else if (!str6.equals(str5)) {
            return false;
        }
        String str7 = tokenCommandParameters.domainHint;
        String str8 = this.domainHint;
        if (str8 == null) {
            if (str7 != null) {
                return false;
            }
        } else if (!str8.equals(str7)) {
            return false;
        }
        List<Map.Entry<String, String>> list = tokenCommandParameters.extraOptions;
        List<Map.Entry<String, String>> list2 = this.extraOptions;
        if (list2 == null) {
            if (list != null) {
                return false;
            }
        } else if (!list2.equals(list)) {
            return false;
        }
        List<Map.Entry<String, String>> list3 = this.extraTokenBodyParameters;
        ArrayList arrayList = list3 == null ? null : new ArrayList(list3);
        List<Map.Entry<String, String>> list4 = tokenCommandParameters.extraTokenBodyParameters;
        ArrayList arrayList2 = list4 != null ? new ArrayList(list4) : null;
        if (arrayList == null) {
            return arrayList2 == null;
        }
        return arrayList.equals(arrayList2);
    }

    public final IAccountRecord getAccount() {
        return this.account;
    }

    public final AbstractAuthenticationScheme getAuthenticationScheme() {
        return this.authenticationScheme;
    }

    public final Authority getAuthority() {
        return this.authority;
    }

    public final String getClaimsRequestJson() {
        return this.claimsRequestJson;
    }

    public final String getDomainHint() {
        return this.domainHint;
    }

    public final List<Map.Entry<String, String>> getExtraOptions() {
        return this.extraOptions;
    }

    public final String getLoginHint() {
        return this.loginHint;
    }

    public final String getMamEnrollmentId() {
        return this.mamEnrollmentId;
    }

    public final HashSet getScopes() {
        if (this.scopes == null) {
            return null;
        }
        return new HashSet(this.scopes);
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public int hashCode() {
        int iHashCode = ((super.hashCode() * 59) + (this.forceRefresh ? 79 : 97)) * 59;
        IAccountRecord iAccountRecord = this.account;
        int iHashCode2 = iHashCode + (iAccountRecord == null ? 43 : iAccountRecord.hashCode());
        HashSet scopes = getScopes();
        int iHashCode3 = (iHashCode2 * 59) + (scopes == null ? 43 : scopes.hashCode());
        Authority authority = this.authority;
        int iHashCode4 = (iHashCode3 * 59) + (authority == null ? 43 : authority.hashCode());
        String str = this.claimsRequestJson;
        int iHashCode5 = (iHashCode4 * 59) + (str == null ? 43 : str.hashCode());
        AbstractAuthenticationScheme abstractAuthenticationScheme = this.authenticationScheme;
        int iHashCode6 = (iHashCode5 * 59) + (abstractAuthenticationScheme == null ? 43 : abstractAuthenticationScheme.hashCode());
        String str2 = this.mamEnrollmentId;
        int iHashCode7 = ((iHashCode6 * 59) + (str2 == null ? 43 : str2.hashCode())) * 59;
        String str3 = this.loginHint;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 43 : str3.hashCode())) * 59;
        String str4 = this.domainHint;
        int iHashCode9 = (iHashCode8 + (str4 == null ? 43 : str4.hashCode())) * 59;
        List<Map.Entry<String, String>> list = this.extraOptions;
        int iHashCode10 = iHashCode9 + (list == null ? 43 : list.hashCode());
        List<Map.Entry<String, String>> list2 = this.extraTokenBodyParameters;
        ArrayList arrayList = list2 == null ? null : new ArrayList(list2);
        return (iHashCode10 * 59) + (arrayList != null ? arrayList.hashCode() : 43);
    }

    public final boolean isForceRefresh() {
        return this.forceRefresh;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0050  */
    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    /* JADX WARN: Code duplicated, block: B:7:0x0026  */
    /* JADX WARN: Code duplicated, block: B:9:0x002e  */
    public void validate() throws ArgumentException, ClientException {
        Logger.verbose("TokenCommandParameters:validate", "Validating operation params...");
        Set<String> set = this.scopes;
        if (set != null) {
            set.removeAll(Arrays.asList("", null));
            if (this.scopes.size() <= 0) {
                if (!(this instanceof SilentTokenCommandParameters)) {
                    throw new ArgumentException("acquireTokenSilent", "scopes", "scope is empty or null");
                }
                if (this instanceof InteractiveTokenCommandParameters) {
                    throw new ArgumentException("acquireToken", "scopes", "scope is empty or null");
                }
            }
        } else {
            if (!(this instanceof SilentTokenCommandParameters)) {
                throw new ArgumentException("acquireTokenSilent", "scopes", "scope is empty or null");
            }
            if (this instanceof InteractiveTokenCommandParameters) {
                throw new ArgumentException("acquireToken", "scopes", "scope is empty or null");
            }
        }
        if (this.authenticationScheme == null) {
            if (this instanceof SilentTokenCommandParameters) {
                throw new ArgumentException("acquireTokenSilent", "authentication_scheme", "authentication scheme is undefined");
            }
            if (this instanceof InteractiveTokenCommandParameters) {
                throw new ArgumentException("acquireToken", "authentication_scheme", "authentication scheme is undefined");
            }
        }
    }
}
