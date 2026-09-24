package com.microsoft.identity.common.java.cache;

import com.google.gson.a;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountCredentialBase;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.Credential;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.PrimaryRefreshTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.aw4;
import defpackage.el4;
import defpackage.eq3;
import defpackage.fl4;
import defpackage.fw4;
import defpackage.gw4;
import defpackage.iw4;
import defpackage.km4;
import defpackage.qj4;
import defpackage.qm4;
import defpackage.y77;
import defpackage.yc9;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CacheKeyValueDelegate {
    private final a mGson = new a();

    public CacheKeyValueDelegate() {
        Logger.verbose("CacheKeyValueDelegate", "Init: CacheKeyValueDelegate");
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0056  */
    public static String generateCacheKey(Credential credential) {
        String strReplace;
        String strReplace2 = "<home_account_id>-<environment>-<credential_type>-<client_id>-<realm>-<target>".replace("<home_account_id>", StringUtil.sanitizeNullAndLowercaseAndTrim(credential.getHomeAccountId())).replace("<environment>", StringUtil.sanitizeNullAndLowercaseAndTrim(credential.getEnvironment())).replace("<credential_type>", StringUtil.sanitizeNullAndLowercaseAndTrim(credential.getCredentialType()));
        boolean z = credential instanceof RefreshTokenRecord;
        if (z) {
            RefreshTokenRecord refreshTokenRecord = (RefreshTokenRecord) credential;
            if (StringUtil.isNullOrEmpty(refreshTokenRecord.getFamilyId())) {
                strReplace = strReplace2.replace("<client_id>", StringUtil.sanitizeNullAndLowercaseAndTrim(credential.getClientId()));
            } else {
                String familyId = refreshTokenRecord.getFamilyId();
                if (familyId.startsWith("foci-")) {
                    familyId = familyId.replace("foci-", "");
                }
                strReplace = strReplace2.replace("<client_id>", familyId);
            }
        } else {
            strReplace = strReplace2.replace("<client_id>", StringUtil.sanitizeNullAndLowercaseAndTrim(credential.getClientId()));
        }
        if (!(credential instanceof AccessTokenRecord)) {
            if (z) {
                return strReplace.replace("<realm>", "").replace("<target>", StringUtil.sanitizeNullAndLowercaseAndTrim(((RefreshTokenRecord) credential).getTarget()));
            }
            if (credential instanceof IdTokenRecord) {
                return strReplace.replace("<realm>", StringUtil.sanitizeNullAndLowercaseAndTrim(((IdTokenRecord) credential).getRealm())).replace("<target>", "");
            }
            return credential instanceof PrimaryRefreshTokenRecord ? strReplace.replace("<realm>", "").replace("<target>", "") : strReplace;
        }
        AccessTokenRecord accessTokenRecord = (AccessTokenRecord) credential;
        String strReplace3 = strReplace.replace("<realm>", StringUtil.sanitizeNullAndLowercaseAndTrim(accessTokenRecord.getRealm())).replace("<target>", StringUtil.sanitizeNullAndLowercaseAndTrim(accessTokenRecord.getTarget()));
        if (!StringUtil.isNullOrEmpty(accessTokenRecord.getApplicationIdentifier())) {
            strReplace3 = eq3.j(strReplace3, "-<application_identifier>").replace("<application_identifier>", StringUtil.sanitizeNullAndLowercaseAndTrim(accessTokenRecord.getApplicationIdentifier()));
        }
        if (!StringUtil.isNullOrEmpty(accessTokenRecord.getMamEnrollmentIdentifier())) {
            strReplace3 = eq3.j(strReplace3, "-<mam_enrollment_identifier>").replace("<mam_enrollment_identifier>", StringUtil.sanitizeNullAndLowercaseAndTrim(accessTokenRecord.getMamEnrollmentIdentifier()));
        }
        if ("pop".equalsIgnoreCase(accessTokenRecord.getAccessTokenType())) {
            strReplace3 = eq3.j(strReplace3, "-<auth_scheme>").replace("<auth_scheme>", StringUtil.sanitizeNullAndLowercaseAndTrim(accessTokenRecord.getAccessTokenType()));
        }
        return !StringUtil.isNullOrEmpty(accessTokenRecord.getRequestedClaims()) ? eq3.j(strReplace3, "-<requested_claims>").replace("<requested_claims>", StringUtil.sanitizeNullAndLowercaseAndTrim(String.valueOf(StringUtil.sanitizeNullAndLowercaseAndTrim(accessTokenRecord.getRequestedClaims()).hashCode()))) : strReplace3;
    }

    private String generateCacheValueInternal(AccountCredentialBase accountCredentialBase) {
        qj4 qj4VarY;
        a aVar = this.mGson;
        if (accountCredentialBase == null) {
            aVar.getClass();
            qj4VarY = el4.a;
        } else {
            Class<?> cls = accountCredentialBase.getClass();
            aVar.getClass();
            qm4 qm4Var = new qm4();
            aVar.l(accountCredentialBase, cls, qm4Var);
            qj4VarY = qm4Var.Y();
        }
        fl4 fl4VarI = qj4VarY.i();
        if (accountCredentialBase != null) {
            for (String str : accountCredentialBase.getAdditionalFields().keySet()) {
                fl4VarI.p(str, accountCredentialBase.getAdditionalFields().get(str));
            }
        }
        return aVar.h(fl4VarI);
    }

    private static HashSet getExpectedJsonFields(Class cls) {
        HashSet hashSet = new HashSet();
        ArrayList<Field> fieldsUpTo = getFieldsUpTo(cls);
        ArrayList arrayList = new ArrayList();
        for (Field field : fieldsUpTo) {
            if (((y77) field.getAnnotation(y77.class)) != null) {
                arrayList.add(field);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            hashSet.add(((y77) ((Field) it.next()).getAnnotation(y77.class)).value());
        }
        return hashSet;
    }

    private static ArrayList getFieldsUpTo(Class cls) {
        ArrayList arrayList = new ArrayList(Arrays.asList(cls.getDeclaredFields()));
        Class superclass = cls.getSuperclass();
        if (superclass != null && !superclass.equals(AccountCredentialBase.class)) {
            arrayList.addAll(getFieldsUpTo(superclass));
        }
        return arrayList;
    }

    public final AccountCredentialBase fromCacheValue(Class cls, String str) {
        try {
            AccountCredentialBase accountCredentialBase = (AccountCredentialBase) this.mGson.c(str, cls);
            if (!StringUtil.isNullOrEmpty(str)) {
                fl4 fl4VarI = yc9.K(str).i();
                iw4 iw4Var = fl4VarI.a;
                Iterator it = getExpectedJsonFields(cls).iterator();
                while (it.hasNext()) {
                }
                HashMap map = new HashMap();
                Iterator it2 = ((gw4) iw4Var.keySet()).iterator();
                while (((aw4) it2).hasNext()) {
                    String str2 = (String) ((fw4) it2).b().f;
                    map.put(str2, fl4VarI.x(str2));
                }
                accountCredentialBase.setAdditionalFields(map);
            }
            return accountCredentialBase;
        } catch (km4 unused) {
            Logger.error("CacheKeyValueDelegate:fromCacheValue", "Failed to parse cache value.", null);
            return null;
        }
    }

    public final String generateCacheValue(AccountRecord accountRecord) {
        return generateCacheValueInternal(accountRecord);
    }

    public final String generateCacheValue(Credential credential) {
        return generateCacheValueInternal(credential);
    }

    public static String generateCacheKey(AccountRecord accountRecord) {
        return "<home_account_id>-<environment>-<realm>".replace("<home_account_id>", StringUtil.sanitizeNullAndLowercaseAndTrim(accountRecord.getHomeAccountId())).replace("<environment>", StringUtil.sanitizeNullAndLowercaseAndTrim(accountRecord.getEnvironment())).replace("<realm>", StringUtil.sanitizeNullAndLowercaseAndTrim(accountRecord.getRealm()));
    }
}
