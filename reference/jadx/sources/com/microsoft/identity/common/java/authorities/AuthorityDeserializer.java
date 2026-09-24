package com.microsoft.identity.common.java.authorities;

import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.fl4;
import defpackage.gl4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import net.jcip.annotations.Immutable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class AuthorityDeserializer implements pj4 {
    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) throws gl4 {
        String str;
        String str2;
        fl4 fl4VarI = qj4Var.i();
        qj4 qj4VarX = fl4VarI.x("type");
        if (qj4VarX == null) {
            return null;
        }
        String strO = qj4VarX.o();
        strO.getClass();
        switch (strO) {
            case "AAD":
                Logger.verbose("AuthorityDeserializer:deserialize", "Type: AAD");
                AzureActiveDirectoryAuthority azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) z28Var.E(fl4VarI, AzureActiveDirectoryAuthority.class);
                if (azureActiveDirectoryAuthority != null && (str = azureActiveDirectoryAuthority.mAuthorityUrlString) != null) {
                    try {
                        CommonURIBuilder commonURIBuilder = new CommonURIBuilder(URI.create(str));
                        if (commonURIBuilder.getPort() != -1) {
                            str2 = commonURIBuilder.getScheme() + "://" + commonURIBuilder.getHost() + ":" + commonURIBuilder.getPort();
                        } else {
                            str2 = commonURIBuilder.getScheme() + "://" + commonURIBuilder.getHost();
                        }
                        ArrayList pathSegments = commonURIBuilder.getPathSegments();
                        String str3 = pathSegments.isEmpty() ? "" : (String) pathSegments.get(pathSegments.size() - 1);
                        if (!StringUtil.isNullOrEmpty(str3)) {
                            azureActiveDirectoryAuthority.mAudience = AzureActiveDirectoryAudience.getAzureActiveDirectoryAudience(str2, str3);
                            return azureActiveDirectoryAuthority;
                        }
                    } catch (IllegalArgumentException e) {
                        Logger.error("AuthorityDeserializer:deserialize", e.getMessage(), e);
                    }
                }
                return azureActiveDirectoryAuthority;
            case "B2C":
                Logger.verbose("AuthorityDeserializer:deserialize", "Type: B2C");
                return (Authority) z28Var.E(fl4VarI, AzureActiveDirectoryB2CAuthority.class);
            case "ADFS":
                Logger.verbose("AuthorityDeserializer:deserialize", "Type: ADFS");
                return (Authority) z28Var.E(fl4VarI, ActiveDirectoryFederationServicesAuthority.class);
            case "CIAM":
                Logger.verbose("AuthorityDeserializer:deserialize", "Type: CIAM");
                return (Authority) z28Var.E(fl4VarI, CIAMAuthority.class);
            default:
                Logger.verbose("AuthorityDeserializer:deserialize", "Type: Unknown");
                return (Authority) z28Var.E(fl4VarI, UnknownAuthority.class);
        }
    }
}
