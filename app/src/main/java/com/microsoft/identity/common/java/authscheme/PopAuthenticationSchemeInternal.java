package com.microsoft.identity.common.java.authscheme;

import com.microsoft.identity.common.components.AndroidClockSkewManager;
import com.microsoft.identity.common.java.crypto.IDevicePopManager;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.platform.AbstractDevicePopManager;
import com.microsoft.identity.common.java.util.IClockSkewManager;
import defpackage.f6;
import defpackage.g84;
import defpackage.y77;
import java.io.Serializable;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PopAuthenticationSchemeInternal extends TokenAuthenticationScheme implements Serializable {
    public static final String SCHEME_POP = "PoP";
    private static final long serialVersionUID = 788393037295696358L;

    @y77("client_claims")
    private String mClientClaims;
    private transient IClockSkewManager mClockSkewManager;

    @y77("http_method")
    private String mHttpMethod;

    @y77("nonce")
    private String mNonce;
    private transient IDevicePopManager mPopManager;

    @y77("url")
    private URL mUrl;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class PopAuthenticationSchemeInternalBuilder<C extends PopAuthenticationSchemeInternal, B extends PopAuthenticationSchemeInternalBuilder<C, B>> extends TokenAuthenticationScheme.TokenAuthenticationSchemeBuilder<C, B> {
        private String clientClaims;
        private IClockSkewManager clockSkewManager;
        private String httpMethod;
        private String nonce;
        private IDevicePopManager popManager;
        private URL url;

        public final B $fillValuesFrom(C c) {
            $fillValuesFrom((TokenAuthenticationScheme) c);
            this.clockSkewManager = ((PopAuthenticationSchemeInternal) c).mClockSkewManager;
            this.httpMethod = ((PopAuthenticationSchemeInternal) c).mHttpMethod;
            this.url = ((PopAuthenticationSchemeInternal) c).mUrl;
            this.nonce = ((PopAuthenticationSchemeInternal) c).mNonce;
            this.clientClaims = ((PopAuthenticationSchemeInternal) c).mClientClaims;
            this.popManager = ((PopAuthenticationSchemeInternal) c).mPopManager;
            return (PopAuthenticationSchemeInternalBuilderImpl) this;
        }

        @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme.TokenAuthenticationSchemeBuilder
        public final String toString() {
            return "PopAuthenticationSchemeInternal.PopAuthenticationSchemeInternalBuilder(super=" + super.toString() + ", clockSkewManager=" + this.clockSkewManager + ", httpMethod=" + this.httpMethod + ", url=" + this.url + ", nonce=" + this.nonce + ", clientClaims=" + this.clientClaims + ", popManager=" + this.popManager + ")";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class PopAuthenticationSchemeInternalBuilderImpl extends PopAuthenticationSchemeInternalBuilder<PopAuthenticationSchemeInternal, PopAuthenticationSchemeInternalBuilderImpl> {
    }

    public PopAuthenticationSchemeInternal(IClockSkewManager iClockSkewManager, IDevicePopManager iDevicePopManager, String str, URL url, String str2, String str3) {
        super(SCHEME_POP);
        if (iClockSkewManager == null) {
            f6.n("clockSkewManager is marked non-null but is null");
            throw null;
        }
        if (iDevicePopManager == null) {
            f6.n("popManager is marked non-null but is null");
            throw null;
        }
        if (url == null) {
            f6.n("url is marked non-null but is null");
            throw null;
        }
        this.mClockSkewManager = iClockSkewManager;
        this.mPopManager = iDevicePopManager;
        this.mHttpMethod = str;
        this.mUrl = url;
        this.mNonce = str2;
        this.mClientClaims = str3;
    }

    public static PopAuthenticationSchemeInternalBuilder<?, ?> builder() {
        return new PopAuthenticationSchemeInternalBuilderImpl();
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean canEqual(Object obj) {
        return obj instanceof PopAuthenticationSchemeInternal;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PopAuthenticationSchemeInternal)) {
            return false;
        }
        PopAuthenticationSchemeInternal popAuthenticationSchemeInternal = (PopAuthenticationSchemeInternal) obj;
        if (!popAuthenticationSchemeInternal.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String httpMethod = getHttpMethod();
        String httpMethod2 = popAuthenticationSchemeInternal.getHttpMethod();
        if (httpMethod != null ? !httpMethod.equals(httpMethod2) : httpMethod2 != null) {
            return false;
        }
        URL url = getUrl();
        URL url2 = popAuthenticationSchemeInternal.getUrl();
        if (url != null ? !url.equals(url2) : url2 != null) {
            return false;
        }
        String nonce = getNonce();
        String nonce2 = popAuthenticationSchemeInternal.getNonce();
        if (nonce != null ? !nonce.equals(nonce2) : nonce2 != null) {
            return false;
        }
        String clientClaims = getClientClaims();
        String clientClaims2 = popAuthenticationSchemeInternal.getClientClaims();
        return clientClaims != null ? clientClaims.equals(clientClaims2) : clientClaims2 == null;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme
    public String getAccessTokenForScheme(String str) throws ClientException {
        if (str == null) {
            f6.n("accessToken is marked non-null but is null");
            return null;
        }
        IClockSkewManager iClockSkewManager = this.mClockSkewManager;
        if (iClockSkewManager == null) {
            g84.h("IClockSkewManager not initialized.");
            return null;
        }
        long time = ((AndroidClockSkewManager) iClockSkewManager).getAdjustedReferenceTime().getTime();
        return ((AbstractDevicePopManager) this.mPopManager).mintSignedAccessToken(getHttpMethod(), time / 1000, getUrl(), str, getNonce(), getClientClaims());
    }

    public String getClientClaims() {
        return this.mClientClaims;
    }

    public String getHttpMethod() {
        return this.mHttpMethod;
    }

    public String getNonce() {
        return this.mNonce;
    }

    public URL getUrl() {
        return this.mUrl;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public int hashCode() {
        int iHashCode = super.hashCode();
        String httpMethod = getHttpMethod();
        int iHashCode2 = (iHashCode * 59) + (httpMethod == null ? 43 : httpMethod.hashCode());
        URL url = getUrl();
        int iHashCode3 = (iHashCode2 * 59) + (url == null ? 43 : url.hashCode());
        String nonce = getNonce();
        int i = iHashCode3 * 59;
        int iHashCode4 = nonce == null ? 43 : nonce.hashCode();
        String clientClaims = getClientClaims();
        return ((i + iHashCode4) * 59) + (clientClaims != null ? clientClaims.hashCode() : 43);
    }

    public void setClockSkewManager(IClockSkewManager iClockSkewManager) {
        if (iClockSkewManager != null) {
            this.mClockSkewManager = iClockSkewManager;
        } else {
            f6.n("clockSkewManager is marked non-null but is null");
        }
    }

    public void setDevicePopManager(IDevicePopManager iDevicePopManager) {
        if (iDevicePopManager != null) {
            this.mPopManager = iDevicePopManager;
        } else {
            f6.n("devicePopManager is marked non-null but is null");
        }
    }

    public PopAuthenticationSchemeInternalBuilder<?, ?> toBuilder() {
        return new PopAuthenticationSchemeInternalBuilderImpl().$fillValuesFrom(this);
    }

    public PopAuthenticationSchemeInternal() {
        super(SCHEME_POP);
    }

    public PopAuthenticationSchemeInternal(PopAuthenticationSchemeInternalBuilder<?, ?> popAuthenticationSchemeInternalBuilder) {
        super(popAuthenticationSchemeInternalBuilder);
        this.mClockSkewManager = ((PopAuthenticationSchemeInternalBuilder) popAuthenticationSchemeInternalBuilder).clockSkewManager;
        this.mHttpMethod = ((PopAuthenticationSchemeInternalBuilder) popAuthenticationSchemeInternalBuilder).httpMethod;
        this.mUrl = ((PopAuthenticationSchemeInternalBuilder) popAuthenticationSchemeInternalBuilder).url;
        this.mNonce = ((PopAuthenticationSchemeInternalBuilder) popAuthenticationSchemeInternalBuilder).nonce;
        this.mClientClaims = ((PopAuthenticationSchemeInternalBuilder) popAuthenticationSchemeInternalBuilder).clientClaims;
        this.mPopManager = ((PopAuthenticationSchemeInternalBuilder) popAuthenticationSchemeInternalBuilder).popManager;
    }

    public PopAuthenticationSchemeInternal(IDevicePopManager iDevicePopManager, String str, URL url, String str2, String str3) {
        super(SCHEME_POP);
        if (iDevicePopManager == null) {
            f6.n("popManager is marked non-null but is null");
            throw null;
        }
        if (url != null) {
            this.mClockSkewManager = null;
            this.mPopManager = iDevicePopManager;
            this.mHttpMethod = str;
            this.mUrl = url;
            this.mNonce = str2;
            this.mClientClaims = str3;
            return;
        }
        f6.n("url is marked non-null but is null");
        throw null;
    }
}
