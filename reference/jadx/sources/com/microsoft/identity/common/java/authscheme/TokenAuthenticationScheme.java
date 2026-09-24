package com.microsoft.identity.common.java.authscheme;

import com.microsoft.identity.common.java.exception.ClientException;
import defpackage.dj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class TokenAuthenticationScheme extends AbstractAuthenticationScheme {
    public static final String SCHEME_DELIMITER = " ";
    private static final long serialVersionUID = 8007073391895830795L;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class TokenAuthenticationSchemeBuilder<C extends TokenAuthenticationScheme, B extends TokenAuthenticationSchemeBuilder<C, B>> {
        private String name;

        public final void $fillValuesFrom(TokenAuthenticationScheme tokenAuthenticationScheme) {
            this.name = ((AbstractAuthenticationScheme) tokenAuthenticationScheme).mName;
        }

        public String toString() {
            return "TokenAuthenticationScheme.TokenAuthenticationSchemeBuilder(super=" + toString$com$microsoft$identity$common$java$authscheme$AbstractAuthenticationScheme$AbstractAuthenticationSchemeBuilder() + ")";
        }

        public final String toString$com$microsoft$identity$common$java$authscheme$AbstractAuthenticationScheme$AbstractAuthenticationSchemeBuilder() {
            return dj7.n(new StringBuilder("AbstractAuthenticationScheme.AbstractAuthenticationSchemeBuilder(name="), this.name, ")");
        }
    }

    public TokenAuthenticationScheme(TokenAuthenticationSchemeBuilder<?, ?> tokenAuthenticationSchemeBuilder) {
        super(tokenAuthenticationSchemeBuilder);
    }

    @Override // com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean canEqual(Object obj) {
        return obj instanceof TokenAuthenticationScheme;
    }

    @Override // com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof TokenAuthenticationScheme) && ((TokenAuthenticationScheme) obj).canEqual(this) && super.equals(obj);
    }

    public abstract String getAccessTokenForScheme(String str) throws ClientException;

    @Override // com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public int hashCode() {
        return super.hashCode();
    }

    public TokenAuthenticationScheme(String str) {
        super(str);
    }
}
