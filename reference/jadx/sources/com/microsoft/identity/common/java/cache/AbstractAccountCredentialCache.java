package com.microsoft.identity.common.java.cache;

import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeWithClientKeyInternal;
import com.microsoft.identity.common.java.authscheme.WebAppsPopAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.Credential;
import com.microsoft.identity.common.java.dto.CredentialType;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.PrimaryRefreshTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractAccountCredentialCache {
    protected final AbstractSharedPrefNameValueStorage mSharedPreferencesFileManager;

    public AbstractAccountCredentialCache(AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage) {
        this.mSharedPreferencesFileManager = abstractSharedPrefNameValueStorage;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0203  */
    /* JADX WARN: Code duplicated, block: B:104:0x0207  */
    /* JADX WARN: Code duplicated, block: B:105:0x020a  */
    /* JADX WARN: Code duplicated, block: B:107:0x020e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0223  */
    /* JADX WARN: Code duplicated, block: B:124:0x0133 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x012b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:40:0x0117  */
    /* JADX WARN: Code duplicated, block: B:42:0x011b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0137  */
    /* JADX WARN: Code duplicated, block: B:50:0x013b  */
    /* JADX WARN: Code duplicated, block: B:53:0x0150  */
    /* JADX WARN: Code duplicated, block: B:54:0x015a  */
    /* JADX WARN: Code duplicated, block: B:66:0x0184  */
    /* JADX WARN: Code duplicated, block: B:67:0x0186  */
    /* JADX WARN: Code duplicated, block: B:69:0x018a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0198  */
    /* JADX WARN: Code duplicated, block: B:74:0x019c  */
    /* JADX WARN: Code duplicated, block: B:77:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:78:0x01af  */
    /* JADX WARN: Code duplicated, block: B:79:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:92:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:96:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ef  */
    public static ArrayList getCredentialsFilteredByInternal(List list, String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        boolean z;
        boolean z2;
        boolean zIsNullOrEmpty;
        boolean zIsNullOrEmpty2;
        ArrayList arrayList;
        Iterator it;
        Credential credential;
        boolean z3;
        String str11 = str6;
        String str12 = str7;
        if (list == null) {
            f6.n("allCredentials is marked non-null but is null");
            return null;
        }
        boolean zIsNullOrEmpty3 = StringUtil.isNullOrEmpty(str2);
        boolean zIsNullOrEmpty4 = StringUtil.isNullOrEmpty(str);
        boolean z4 = !zIsNullOrEmpty4;
        boolean zIsNullOrEmpty5 = StringUtil.isNullOrEmpty(str11);
        boolean z5 = !zIsNullOrEmpty5;
        boolean zIsNullOrEmpty6 = StringUtil.isNullOrEmpty(str12);
        boolean z6 = !zIsNullOrEmpty6;
        boolean zIsNullOrEmpty7 = StringUtil.isNullOrEmpty(str3);
        boolean z7 = !zIsNullOrEmpty7;
        boolean zIsNullOrEmpty8 = StringUtil.isNullOrEmpty(str4);
        boolean z8 = !zIsNullOrEmpty8;
        boolean zIsNullOrEmpty9 = StringUtil.isNullOrEmpty(str5);
        boolean z9 = !zIsNullOrEmpty9;
        boolean z10 = credentialType != null;
        if (z10 && !StringUtil.isNullOrEmpty(str8)) {
            z = zIsNullOrEmpty5;
            if (credentialType == CredentialType.AccessToken_With_AuthScheme) {
                z2 = true;
            }
            zIsNullOrEmpty = StringUtil.isNullOrEmpty(str10);
            zIsNullOrEmpty2 = StringUtil.isNullOrEmpty(str9);
            StringBuilder sb = new StringBuilder("Credential lookup filtered by home_account_id? [");
            sb.append(z4);
            sb.append("]\nCredential lookup filtered by realm? [");
            sb.append(z5);
            sb.append("]\nCredential lookup filtered by target? [");
            sb.append(z6);
            sb.append("]\nCredential lookup filtered by clientId? [");
            sb.append(z7);
            sb.append("]\nCredential lookup filtered by applicationIdentifier? [");
            sb.append(z8);
            sb.append("]\nCredential lookup filtered by mamEnrollmentIdentifier? [");
            sb.append(z9);
            sb.append("]\nCredential lookup filtered by credential type? [");
            sb.append(z10);
            sb.append("]\nCredential lookup filtered by auth scheme? [");
            sb.append(z2);
            sb.append("]\nCredential lookup filtered by requested claims? [");
            sb.append(!zIsNullOrEmpty2);
            sb.append("]");
            Logger.verbose("AbstractAccountCredentialCache", sb.toString());
            arrayList = new ArrayList();
            it = list.iterator();
            while (it.hasNext()) {
                credential = (Credential) it.next();
                if (!zIsNullOrEmpty4 || StringUtil.equalsIgnoreCaseTrimBoth(str, credential.getHomeAccountId())) {
                    if (!zIsNullOrEmpty3 || StringUtil.equalsIgnoreCaseTrimBoth(str2, credential.getEnvironment())) {
                        if (z10 || StringUtil.equalsIgnoreCaseTrimBoth(credentialType.name(), credential.getCredentialType())) {
                            if (!zIsNullOrEmpty7 || StringUtil.equalsIgnoreCaseTrimBoth(str3, credential.getClientId())) {
                                if (zIsNullOrEmpty8) {
                                    if (credential instanceof AccessTokenRecord) {
                                        Logger.verbose("AbstractAccountCredentialCache", "Query specified applicationIdentifier match, but credential type does not have application identifier");
                                    } else if (!StringUtil.equalsIgnoreCaseTrimBoth(str4, ((AccessTokenRecord) credential).getApplicationIdentifier())) {
                                    }
                                }
                                if (!zIsNullOrEmpty9) {
                                    z3 = z10;
                                } else if (credential instanceof AccessTokenRecord) {
                                    z3 = z10;
                                    if (StringUtil.equalsIgnoreCaseTrimBoth(str5, ((AccessTokenRecord) credential).getMamEnrollmentIdentifier())) {
                                    }
                                    z10 = z3;
                                } else {
                                    z3 = z10;
                                    Logger.verbose("AbstractAccountCredentialCache", "Query specified mamEnrollmentIdentifier match, but credential type does not have MAM enrollment identifier");
                                }
                                if (z || (!(credential instanceof AccessTokenRecord) ? !(credential instanceof IdTokenRecord) || StringUtil.equalsIgnoreCaseTrimBoth(str11, ((IdTokenRecord) credential).getRealm()) : StringUtil.equalsIgnoreCaseTrimBoth(str11, ((AccessTokenRecord) credential).getRealm()))) {
                                    if (zIsNullOrEmpty6) {
                                        if (z2 || !(credential instanceof AccessTokenRecord)) {
                                            if (zIsNullOrEmpty && (credential instanceof AccessTokenRecord)) {
                                                if (!str10.equalsIgnoreCase(((AccessTokenRecord) credential).getKid())) {
                                                    str11 = str6;
                                                }
                                            }
                                            if (!zIsNullOrEmpty2) {
                                                if (credential instanceof AccessTokenRecord) {
                                                    if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                                    }
                                                    str11 = str6;
                                                    str12 = str7;
                                                } else {
                                                    Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                                                }
                                            }
                                            arrayList.add(credential);
                                            str11 = str6;
                                            str12 = str7;
                                        } else {
                                            String accessTokenType = ((AccessTokenRecord) credential).getAccessTokenType();
                                            if (accessTokenType != null) {
                                                accessTokenType = accessTokenType.trim();
                                            }
                                            if (!"pop".equalsIgnoreCase(accessTokenType) ? !str8.equalsIgnoreCase(accessTokenType) : !(str8.equalsIgnoreCase(PopAuthenticationSchemeWithClientKeyInternal.SCHEME_POP_WITH_CLIENT_KEY) || str8.equalsIgnoreCase(PopAuthenticationSchemeInternal.SCHEME_POP) || str8.equalsIgnoreCase(WebAppsPopAuthenticationSchemeInternal.SCHEME_POP_PREGENERATED))) {
                                                if (zIsNullOrEmpty) {
                                                }
                                                if (!zIsNullOrEmpty2) {
                                                    if (credential instanceof AccessTokenRecord) {
                                                        if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                                        }
                                                        str11 = str6;
                                                        str12 = str7;
                                                    } else {
                                                        Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                                                    }
                                                }
                                                arrayList.add(credential);
                                                str11 = str6;
                                                str12 = str7;
                                            } else {
                                                str11 = str6;
                                            }
                                        }
                                    } else if (!(credential instanceof AccessTokenRecord)) {
                                        if (!(credential instanceof RefreshTokenRecord)) {
                                            Logger.verbose("AbstractAccountCredentialCache", "Query specified target-match, but no target to match.");
                                        } else if (targetsIntersect(str12, ((RefreshTokenRecord) credential).getTarget())) {
                                        }
                                        if (z2) {
                                            if (zIsNullOrEmpty) {
                                            }
                                            if (!zIsNullOrEmpty2) {
                                                if (credential instanceof AccessTokenRecord) {
                                                    if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                                    }
                                                    str11 = str6;
                                                    str12 = str7;
                                                } else {
                                                    Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                                                }
                                            }
                                            arrayList.add(credential);
                                            str11 = str6;
                                            str12 = str7;
                                        } else {
                                            if (zIsNullOrEmpty) {
                                            }
                                            if (!zIsNullOrEmpty2) {
                                                if (credential instanceof AccessTokenRecord) {
                                                    if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                                    }
                                                    str11 = str6;
                                                    str12 = str7;
                                                } else {
                                                    Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                                                }
                                            }
                                            arrayList.add(credential);
                                            str11 = str6;
                                            str12 = str7;
                                        }
                                    } else if (targetsIntersect(str12, ((AccessTokenRecord) credential).getTarget())) {
                                        if (z2) {
                                            if (zIsNullOrEmpty) {
                                            }
                                            if (!zIsNullOrEmpty2) {
                                                if (credential instanceof AccessTokenRecord) {
                                                    if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                                    }
                                                    str11 = str6;
                                                    str12 = str7;
                                                } else {
                                                    Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                                                }
                                            }
                                            arrayList.add(credential);
                                            str11 = str6;
                                            str12 = str7;
                                        } else {
                                            if (zIsNullOrEmpty) {
                                            }
                                            if (!zIsNullOrEmpty2) {
                                                if (credential instanceof AccessTokenRecord) {
                                                    if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                                    }
                                                    str11 = str6;
                                                    str12 = str7;
                                                } else {
                                                    Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                                                }
                                            }
                                            arrayList.add(credential);
                                            str11 = str6;
                                            str12 = str7;
                                        }
                                    }
                                }
                                z10 = z3;
                            }
                        }
                    }
                }
            }
            return arrayList;
        }
        z = zIsNullOrEmpty5;
        z2 = false;
        zIsNullOrEmpty = StringUtil.isNullOrEmpty(str10);
        zIsNullOrEmpty2 = StringUtil.isNullOrEmpty(str9);
        StringBuilder sb2 = new StringBuilder("Credential lookup filtered by home_account_id? [");
        sb2.append(z4);
        sb2.append("]\nCredential lookup filtered by realm? [");
        sb2.append(z5);
        sb2.append("]\nCredential lookup filtered by target? [");
        sb2.append(z6);
        sb2.append("]\nCredential lookup filtered by clientId? [");
        sb2.append(z7);
        sb2.append("]\nCredential lookup filtered by applicationIdentifier? [");
        sb2.append(z8);
        sb2.append("]\nCredential lookup filtered by mamEnrollmentIdentifier? [");
        sb2.append(z9);
        sb2.append("]\nCredential lookup filtered by credential type? [");
        sb2.append(z10);
        sb2.append("]\nCredential lookup filtered by auth scheme? [");
        sb2.append(z2);
        sb2.append("]\nCredential lookup filtered by requested claims? [");
        sb2.append(!zIsNullOrEmpty2);
        sb2.append("]");
        Logger.verbose("AbstractAccountCredentialCache", sb2.toString());
        arrayList = new ArrayList();
        it = list.iterator();
        while (it.hasNext()) {
            credential = (Credential) it.next();
            if (!zIsNullOrEmpty4) {
            }
            if (!zIsNullOrEmpty3) {
            }
            if (z10) {
            }
            if (!zIsNullOrEmpty7) {
            }
            if (zIsNullOrEmpty8) {
                if (credential instanceof AccessTokenRecord) {
                    Logger.verbose("AbstractAccountCredentialCache", "Query specified applicationIdentifier match, but credential type does not have application identifier");
                } else if (!StringUtil.equalsIgnoreCaseTrimBoth(str4, ((AccessTokenRecord) credential).getApplicationIdentifier())) {
                }
            }
            if (!zIsNullOrEmpty9) {
                z3 = z10;
            } else if (credential instanceof AccessTokenRecord) {
                z3 = z10;
                if (StringUtil.equalsIgnoreCaseTrimBoth(str5, ((AccessTokenRecord) credential).getMamEnrollmentIdentifier())) {
                }
                z10 = z3;
            } else {
                z3 = z10;
                Logger.verbose("AbstractAccountCredentialCache", "Query specified mamEnrollmentIdentifier match, but credential type does not have MAM enrollment identifier");
            }
            if (z) {
                if (zIsNullOrEmpty6) {
                    if (z2) {
                        if (zIsNullOrEmpty) {
                        }
                        if (!zIsNullOrEmpty2) {
                            if (credential instanceof AccessTokenRecord) {
                                if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                }
                                str11 = str6;
                                str12 = str7;
                            } else {
                                Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                            }
                        }
                        arrayList.add(credential);
                        str11 = str6;
                        str12 = str7;
                    } else {
                        if (zIsNullOrEmpty) {
                        }
                        if (!zIsNullOrEmpty2) {
                            if (credential instanceof AccessTokenRecord) {
                                if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                }
                                str11 = str6;
                                str12 = str7;
                            } else {
                                Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                            }
                        }
                        arrayList.add(credential);
                        str11 = str6;
                        str12 = str7;
                    }
                } else if (!(credential instanceof AccessTokenRecord)) {
                    if (!(credential instanceof RefreshTokenRecord)) {
                        Logger.verbose("AbstractAccountCredentialCache", "Query specified target-match, but no target to match.");
                    } else if (targetsIntersect(str12, ((RefreshTokenRecord) credential).getTarget())) {
                    }
                    if (z2) {
                        if (zIsNullOrEmpty) {
                        }
                        if (!zIsNullOrEmpty2) {
                            if (credential instanceof AccessTokenRecord) {
                                if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                }
                                str11 = str6;
                                str12 = str7;
                            } else {
                                Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                            }
                        }
                        arrayList.add(credential);
                        str11 = str6;
                        str12 = str7;
                    } else {
                        if (zIsNullOrEmpty) {
                        }
                        if (!zIsNullOrEmpty2) {
                            if (credential instanceof AccessTokenRecord) {
                                if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                }
                                str11 = str6;
                                str12 = str7;
                            } else {
                                Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                            }
                        }
                        arrayList.add(credential);
                        str11 = str6;
                        str12 = str7;
                    }
                } else if (targetsIntersect(str12, ((AccessTokenRecord) credential).getTarget())) {
                    if (z2) {
                        if (zIsNullOrEmpty) {
                        }
                        if (!zIsNullOrEmpty2) {
                            if (credential instanceof AccessTokenRecord) {
                                if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                }
                                str11 = str6;
                                str12 = str7;
                            } else {
                                Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                            }
                        }
                        arrayList.add(credential);
                        str11 = str6;
                        str12 = str7;
                    } else {
                        if (zIsNullOrEmpty) {
                        }
                        if (!zIsNullOrEmpty2) {
                            if (credential instanceof AccessTokenRecord) {
                                if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                                }
                                str11 = str6;
                                str12 = str7;
                            } else {
                                Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                            }
                        }
                        arrayList.add(credential);
                        str11 = str6;
                        str12 = str7;
                    }
                }
            } else if (zIsNullOrEmpty6) {
                if (z2) {
                    if (zIsNullOrEmpty) {
                    }
                    if (!zIsNullOrEmpty2) {
                        if (credential instanceof AccessTokenRecord) {
                            if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                            }
                            str11 = str6;
                            str12 = str7;
                        } else {
                            Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                        }
                    }
                    arrayList.add(credential);
                    str11 = str6;
                    str12 = str7;
                } else {
                    if (zIsNullOrEmpty) {
                    }
                    if (!zIsNullOrEmpty2) {
                        if (credential instanceof AccessTokenRecord) {
                            if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                            }
                            str11 = str6;
                            str12 = str7;
                        } else {
                            Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                        }
                    }
                    arrayList.add(credential);
                    str11 = str6;
                    str12 = str7;
                }
            } else if (!(credential instanceof AccessTokenRecord)) {
                if (!(credential instanceof RefreshTokenRecord)) {
                    Logger.verbose("AbstractAccountCredentialCache", "Query specified target-match, but no target to match.");
                } else if (targetsIntersect(str12, ((RefreshTokenRecord) credential).getTarget())) {
                }
                if (z2) {
                    if (zIsNullOrEmpty) {
                    }
                    if (!zIsNullOrEmpty2) {
                        if (credential instanceof AccessTokenRecord) {
                            if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                            }
                            str11 = str6;
                            str12 = str7;
                        } else {
                            Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                        }
                    }
                    arrayList.add(credential);
                    str11 = str6;
                    str12 = str7;
                } else {
                    if (zIsNullOrEmpty) {
                    }
                    if (!zIsNullOrEmpty2) {
                        if (credential instanceof AccessTokenRecord) {
                            if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                            }
                            str11 = str6;
                            str12 = str7;
                        } else {
                            Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                        }
                    }
                    arrayList.add(credential);
                    str11 = str6;
                    str12 = str7;
                }
            } else if (targetsIntersect(str12, ((AccessTokenRecord) credential).getTarget())) {
                if (z2) {
                    if (zIsNullOrEmpty) {
                    }
                    if (!zIsNullOrEmpty2) {
                        if (credential instanceof AccessTokenRecord) {
                            if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                            }
                            str11 = str6;
                            str12 = str7;
                        } else {
                            Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                        }
                    }
                    arrayList.add(credential);
                    str11 = str6;
                    str12 = str7;
                } else {
                    if (zIsNullOrEmpty) {
                    }
                    if (!zIsNullOrEmpty2) {
                        if (credential instanceof AccessTokenRecord) {
                            if (StringUtil.equalsIgnoreCaseTrimBoth(str9, ((AccessTokenRecord) credential).getRequestedClaims())) {
                            }
                            str11 = str6;
                            str12 = str7;
                        } else {
                            Logger.verbose("AbstractAccountCredentialCache", "Query specified requested_claims-match, but attempted to match with non-AT credential type.");
                        }
                    }
                    arrayList.add(credential);
                    str11 = str6;
                    str12 = str7;
                }
            }
            z10 = z3;
        }
        return arrayList;
    }

    public static Class getTargetClassForCredentialType(String str, CredentialType credentialType) {
        if (credentialType == null) {
            f6.n("targetType is marked non-null but is null");
            return null;
        }
        int iOrdinal = credentialType.ordinal();
        if (iOrdinal == 0) {
            return RefreshTokenRecord.class;
        }
        if (iOrdinal == 1) {
            return AccessTokenRecord.class;
        }
        if (iOrdinal == 2 || iOrdinal == 3) {
            return IdTokenRecord.class;
        }
        if (iOrdinal == 7) {
            return AccessTokenRecord.class;
        }
        if (iOrdinal == 8) {
            return PrimaryRefreshTokenRecord.class;
        }
        Logger.warn("AbstractAccountCredentialCache", "Could not match CredentialType to class. Did you forget to update this method with a new type?");
        if (str != null) {
            Logger.warnPII("AbstractAccountCredentialCache", "Sought key was: [" + str + "]");
        }
        return null;
    }

    public static boolean targetsIntersect(String str, String str2) {
        if (str == null) {
            f6.n("targetToMatch is marked non-null but is null");
            return false;
        }
        if (str2 == null) {
            f6.n("credentialTarget is marked non-null but is null");
            return false;
        }
        String[] strArrSplit = str.trim().split("\\s+");
        String[] strArrSplit2 = str2.trim().split("\\s+");
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (String str3 : strArrSplit) {
            hashSet.add(str3.toLowerCase(Locale.ROOT));
        }
        for (String str4 : strArrSplit2) {
            hashSet2.add(str4.toLowerCase(Locale.ROOT));
        }
        Set<String> set = AuthenticationConstants.DEFAULT_SCOPES;
        hashSet.removeAll(set);
        hashSet2.removeAll(set);
        return hashSet2.containsAll(hashSet);
    }

    public abstract ArrayList getAccounts();

    public abstract ArrayList getAccountsFilteredBy(String str, String str2);

    public abstract ArrayList getCredentials();

    public abstract ArrayList getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4);

    public abstract ArrayList getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6, String str7, String str8, List list);

    public abstract ArrayList getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4, String str5, List list);

    public abstract ArrayList getCredentialsFilteredBy(String str, HashSet hashSet, String str2);

    public abstract ArrayList getCredentialsFilteredBy(List list, String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6, String str7, String str8, String str9);

    public abstract boolean removeAccount(AccountRecord accountRecord);

    public abstract boolean removeCredential(Credential credential);

    public abstract void saveAccount(AccountRecord accountRecord);

    public abstract void saveCredential(Credential credential);
}
