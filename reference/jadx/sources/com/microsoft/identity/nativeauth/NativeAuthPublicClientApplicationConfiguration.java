package com.microsoft.identity.nativeauth;

import android.text.TextUtils;
import com.microsoft.identity.client.PublicClientApplicationConfiguration;
import com.microsoft.identity.client.configuration.AccountMode;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.common.java.authorities.CIAMAuthority;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.nativeauth.authorities.NativeAuthCIAMAuthority;
import defpackage.eq3;
import defpackage.fl1;
import defpackage.hl1;
import defpackage.u48;
import defpackage.y77;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NativeAuthPublicClientApplicationConfiguration extends PublicClientApplicationConfiguration implements Serializable {

    @y77("capabilities")
    private List<String> capabilities;

    @y77("challenge_types")
    private List<String> challengeTypes;

    @y77("dc")
    private String dc;

    @y77("use_mock_api_for_native_auth")
    private Boolean useMockAuthority;
    private static final List<String> VALID_CHALLENGE_TYPES = fl1.A0("password", "oob", "redirect");
    private static final List<String> VALID_CAPABILITIES = fl1.A0("mfa_required", "registration_required");

    @Override // com.microsoft.identity.client.PublicClientApplicationConfiguration
    public final void checkIntentFilterAddedToAppManifestForBrokerFlow() throws MsalClientException {
        if (getRedirectUri() != null) {
            super.checkIntentFilterAddedToAppManifestForBrokerFlow();
        }
    }

    @Override // com.microsoft.identity.client.PublicClientApplicationConfiguration
    public final void validateConfiguration() throws MsalClientException {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (TextUtils.isEmpty(getClientId())) {
            throw new MsalClientException("native_auth_use_without_client_id", "NativeAuthPublicClientApplication cannot be used without a client ID", null);
        }
        if (getRedirectUri() != null) {
            super.validateConfiguration();
        } else {
            Logger.warn("NativeAuthPublicClientApplicationConfiguration", "No redirect URI was passed.");
        }
        if (getAccountMode() != AccountMode.SINGLE) {
            throw new MsalClientException("native_auth_invalid_account_mode_config", "NativeAuthPublicClientApplication Native auth apps cannot be used with anything other than SINGLE account mode", null);
        }
        if (getAuthorities() == null || getAuthorities().size() == 0) {
            throw new MsalClientException("native_auth_use_with_no_authority", "NativeAuthPublicClientApplication can't be used with no authority.", null);
        }
        if (getAuthorities().size() > 1) {
            throw new MsalClientException("native_auth_use_with_multi_authority", "NativeAuthPublicClientApplication can't be used with multiple authorities", null);
        }
        if (!(getDefaultAuthority() instanceof NativeAuthCIAMAuthority)) {
            if (!(getDefaultAuthority() instanceof CIAMAuthority)) {
                throw new MsalClientException("native_auth_invalid_ciam_authority", "NativeAuthPublicClientApplication can only be used with a valid CIAM Authority", null);
            }
            String string = getDefaultAuthority().getAuthorityUri().toString();
            string.getClass();
            String clientId = getClientId();
            clientId.getClass();
            NativeAuthCIAMAuthority nativeAuthCIAMAuthority = new NativeAuthCIAMAuthority(string, clientId);
            getAuthorities().clear();
            getAuthorities().add(nativeAuthCIAMAuthority);
        }
        if (getIsSharedDevice()) {
            throw new MsalClientException("native_auth_shared_device_mode", "NativeAuthPublicClientApplication cannot be used in shared device mode", null);
        }
        List<String> list = this.challengeTypes;
        if (list != null) {
            arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                String lowerCase = ((String) it.next()).toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                arrayList.add(lowerCase);
            }
        } else {
            arrayList = null;
        }
        this.challengeTypes = arrayList;
        List<String> listP = arrayList != null ? eq3.p(arrayList) : null;
        this.challengeTypes = listP;
        if (listP != null) {
            for (String str : listP) {
                if (!VALID_CHALLENGE_TYPES.contains(str)) {
                    throw new MsalClientException("native_auth_invalid_challenge_type", u48.j('\"', "NativeAuthPublicClientApplication detected invalid challenge type. \"", str), null);
                }
            }
        }
        List<String> list2 = this.capabilities;
        if (list2 != null) {
            arrayList2 = new ArrayList(hl1.G0(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                String lowerCase2 = ((String) it2.next()).toLowerCase(Locale.ROOT);
                lowerCase2.getClass();
                arrayList2.add(lowerCase2);
            }
        } else {
            arrayList2 = null;
        }
        this.capabilities = arrayList2;
        List<String> listP2 = arrayList2 != null ? eq3.p(arrayList2) : null;
        this.capabilities = listP2;
        if (listP2 != null) {
            for (String str2 : listP2) {
                if (!VALID_CAPABILITIES.contains(str2)) {
                    throw new MsalClientException("native_auth_invalid_capability", u48.j('\"', "NativeAuthPublicClientApplication detected invalid capability. \"", str2), null);
                }
            }
        }
    }
}
