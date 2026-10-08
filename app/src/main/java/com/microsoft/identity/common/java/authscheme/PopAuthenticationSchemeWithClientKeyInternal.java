package com.microsoft.identity.common.java.authscheme;

import com.nimbusds.jose.util.Base64URL;
import defpackage.dj7;
import defpackage.f6;
import defpackage.y77;
import java.io.Serializable;
import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PopAuthenticationSchemeWithClientKeyInternal extends TokenAuthenticationScheme implements Serializable {
    public static final String SCHEME_POP_WITH_CLIENT_KEY = "PoP_With_Client_Key";
    private static final long serialVersionUID = 788393037295696359L;

    @y77("kid")
    private String mKid;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class PopAuthenticationSchemeWithClientKeyInternalBuilder<C extends PopAuthenticationSchemeWithClientKeyInternal, B extends PopAuthenticationSchemeWithClientKeyInternalBuilder<C, B>> extends TokenAuthenticationScheme.TokenAuthenticationSchemeBuilder<C, B> {
        private String kid;

        public final B $fillValuesFrom(C c) {
            $fillValuesFrom((TokenAuthenticationScheme) c);
            this.kid = ((PopAuthenticationSchemeWithClientKeyInternal) c).mKid;
            return (PopAuthenticationSchemeWithClientKeyInternalBuilderImpl) this;
        }

        @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme.TokenAuthenticationSchemeBuilder
        public final String toString() {
            StringBuilder sb = new StringBuilder("PopAuthenticationSchemeWithClientKeyInternal.PopAuthenticationSchemeWithClientKeyInternalBuilder(super=");
            sb.append(super.toString());
            sb.append(", kid=");
            return dj7.n(sb, this.kid, ")");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class PopAuthenticationSchemeWithClientKeyInternalBuilderImpl extends PopAuthenticationSchemeWithClientKeyInternalBuilder<PopAuthenticationSchemeWithClientKeyInternal, PopAuthenticationSchemeWithClientKeyInternalBuilderImpl> {
    }

    public PopAuthenticationSchemeWithClientKeyInternal(String str) {
        super(SCHEME_POP_WITH_CLIENT_KEY);
        if (str != null) {
            this.mKid = str;
        } else {
            f6.n("kid is marked non-null but is null");
            throw null;
        }
    }

    public static PopAuthenticationSchemeWithClientKeyInternalBuilder<?, ?> builder() {
        return new PopAuthenticationSchemeWithClientKeyInternalBuilderImpl();
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean canEqual(Object obj) {
        return obj instanceof PopAuthenticationSchemeWithClientKeyInternal;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PopAuthenticationSchemeWithClientKeyInternal)) {
            return false;
        }
        PopAuthenticationSchemeWithClientKeyInternal popAuthenticationSchemeWithClientKeyInternal = (PopAuthenticationSchemeWithClientKeyInternal) obj;
        if (!popAuthenticationSchemeWithClientKeyInternal.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String kid = getKid();
        String kid2 = popAuthenticationSchemeWithClientKeyInternal.getKid();
        return kid != null ? kid.equals(kid2) : kid2 == null;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme
    public String getAccessTokenForScheme(String str) {
        if (str != null) {
            return str;
        }
        f6.n("accessToken is marked non-null but is null");
        return null;
    }

    public String getClientClaims() {
        return null;
    }

    public String getHttpMethod() {
        return null;
    }

    public String getKid() {
        return this.mKid;
    }

    public String getNonce() {
        return null;
    }

    public String getRequestConfirmation() {
        return Base64URL.encode(new JSONObject().put("kid", this.mKid).toString()).toString();
    }

    public URL getUrl() {
        return null;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public int hashCode() {
        int iHashCode = super.hashCode();
        String kid = getKid();
        return (iHashCode * 59) + (kid == null ? 43 : kid.hashCode());
    }

    public PopAuthenticationSchemeWithClientKeyInternalBuilder<?, ?> toBuilder() {
        return new PopAuthenticationSchemeWithClientKeyInternalBuilderImpl().$fillValuesFrom(this);
    }

    public PopAuthenticationSchemeWithClientKeyInternal() {
        super(SCHEME_POP_WITH_CLIENT_KEY);
    }

    public PopAuthenticationSchemeWithClientKeyInternal(PopAuthenticationSchemeWithClientKeyInternalBuilder<?, ?> popAuthenticationSchemeWithClientKeyInternalBuilder) {
        super(popAuthenticationSchemeWithClientKeyInternalBuilder);
        this.mKid = ((PopAuthenticationSchemeWithClientKeyInternalBuilder) popAuthenticationSchemeWithClientKeyInternalBuilder).kid;
    }
}
