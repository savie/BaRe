package com.microsoft.identity.common.internal.authorities;

import com.microsoft.identity.common.java.authorities.AccountsInOneOrganization;
import com.microsoft.identity.common.java.authorities.AllAccounts;
import com.microsoft.identity.common.java.authorities.AnyOrganizationalAccount;
import com.microsoft.identity.common.java.authorities.AnyPersonalAccount;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.logging.Logger;
import defpackage.fl4;
import defpackage.gl4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AzureActiveDirectoryAudienceDeserializer implements pj4 {
    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) throws gl4 {
        fl4 fl4VarI = qj4Var.i();
        qj4 qj4VarX = fl4VarI.x("type");
        if (qj4VarX == null) {
            return null;
        }
        String strO = qj4VarX.o();
        strO.getClass();
        switch (strO) {
            case "PersonalMicrosoftAccount":
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryAudienceDeserializer:deserialize", "Type: PersonalMicrosoftAccount");
                return (AzureActiveDirectoryAudience) z28Var.E(fl4VarI, AnyPersonalAccount.class);
            case "AzureADMultipleOrgs":
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryAudienceDeserializer:deserialize", "Type: AzureADMultipleOrgs");
                return (AzureActiveDirectoryAudience) z28Var.E(fl4VarI, AnyOrganizationalAccount.class);
            case "AzureADMyOrg":
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryAudienceDeserializer:deserialize", "Type: AzureADMyOrg");
                return (AzureActiveDirectoryAudience) z28Var.E(fl4VarI, AccountsInOneOrganization.class);
            case "AzureADandPersonalMicrosoftAccount":
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryAudienceDeserializer:deserialize", "Type: AzureADandPersonalMicrosoftAccount");
                return (AzureActiveDirectoryAudience) z28Var.E(fl4VarI, AllAccounts.class);
            default:
                int i5 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryAudienceDeserializer:deserialize", "Type: Unknown");
                return (AzureActiveDirectoryAudience) z28Var.E(fl4VarI, UnknownAudience.class);
        }
    }
}
