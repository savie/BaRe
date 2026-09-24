package com.microsoft.identity.common.java.authscheme;

import com.microsoft.identity.common.java.base64.Base64Flags;
import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.c6;
import defpackage.f6;
import defpackage.fl4;
import defpackage.y77;
import defpackage.yc9;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class WebAppsPopAuthenticationSchemeInternal extends TokenAuthenticationScheme {
    public static final String SCHEME_POP_PREGENERATED = "PoP_Pregenerated";
    private static final String TAG = "WebAppsPopAuthenticationSchemeInternal";
    private static final long serialVersionUID = 1;

    @y77("kid")
    private String mKid;

    @y77("req_cnf")
    private String mRequestConfirmation;

    public WebAppsPopAuthenticationSchemeInternal(String str) {
        super(SCHEME_POP_PREGENERATED);
        if (str == null) {
            f6.n("requestConfirmation is marked non-null but is null");
            throw null;
        }
        if (StringUtil.isNullOrEmpty(str)) {
            c6.f("requestConfirmation (req_cnf) cannot be null or empty for WebAppsPopAuthenticationSchemeInternal");
            throw null;
        }
        this.mRequestConfirmation = str;
        try {
            int i = Base64Util.a;
            byte[] bArrDecode = LibraryInfoHelper.decode(str, Base64Flags.URL_SAFE, Base64Flags.NO_PADDING, Base64Flags.NO_WRAP);
            Charset charset = StandardCharsets.UTF_8;
            charset.getClass();
            fl4 fl4VarI = yc9.K(new String(bArrDecode, charset)).i();
            if (fl4VarI.a.containsKey("kid")) {
                this.mKid = fl4VarI.x("kid").o();
            }
        } catch (Exception e) {
            Logger.warn(TAG, "Failed to parse kid from reqCnf. Exception type and message: " + e.getClass().getSimpleName() + ": " + e.getMessage());
        }
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean canEqual(Object obj) {
        return obj instanceof WebAppsPopAuthenticationSchemeInternal;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WebAppsPopAuthenticationSchemeInternal)) {
            return false;
        }
        WebAppsPopAuthenticationSchemeInternal webAppsPopAuthenticationSchemeInternal = (WebAppsPopAuthenticationSchemeInternal) obj;
        if (!webAppsPopAuthenticationSchemeInternal.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String requestConfirmation = getRequestConfirmation();
        String requestConfirmation2 = webAppsPopAuthenticationSchemeInternal.getRequestConfirmation();
        if (requestConfirmation != null ? !requestConfirmation.equals(requestConfirmation2) : requestConfirmation2 != null) {
            return false;
        }
        String kid = getKid();
        String kid2 = webAppsPopAuthenticationSchemeInternal.getKid();
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

    public String getKid() {
        return this.mKid;
    }

    public String getRequestConfirmation() {
        return this.mRequestConfirmation;
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme, com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme
    public int hashCode() {
        int iHashCode = super.hashCode();
        String requestConfirmation = getRequestConfirmation();
        int i = iHashCode * 59;
        int iHashCode2 = requestConfirmation == null ? 43 : requestConfirmation.hashCode();
        String kid = getKid();
        return ((i + iHashCode2) * 59) + (kid != null ? kid.hashCode() : 43);
    }

    public WebAppsPopAuthenticationSchemeInternal() {
        super(SCHEME_POP_PREGENERATED);
    }
}
