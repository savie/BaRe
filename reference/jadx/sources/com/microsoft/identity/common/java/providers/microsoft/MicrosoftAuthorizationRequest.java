package com.microsoft.identity.common.java.providers.microsoft;

import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.platform.Device;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.PkceChallenge;
import defpackage.q03;
import defpackage.y77;
import java.net.URL;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class MicrosoftAuthorizationRequest<T extends MicrosoftAuthorizationRequest<T>> extends AuthorizationRequest<T> {
    private final transient URL mAuthority;

    @q03
    @y77("client-request-id")
    private final UUID mCorrelationId;

    @q03
    @y77("x-client-CPU")
    private final String mDiagnosticCPU;

    @q03
    @y77("x-client-DM")
    private final String mDiagnosticDM;

    @q03
    @y77("x-client-MN")
    private final String mDiagnosticMN;

    @q03
    @y77("x-client-OS")
    private final String mDiagnosticOS;

    @q03
    @y77("x-client-ReleaseOS")
    private final String mDiagnosticReleaseOS;

    @y77("domain_hint")
    private final String mDomainHint;

    @q03
    @y77("x-client-SKU")
    private final String mLibraryName;

    @q03
    @y77("x-client-Ver")
    private final String mLibraryVersion;

    @y77("login_hint")
    private final String mLoginHint;

    @q03
    @y77("instance_aware")
    private final Boolean mMultipleCloudAware;

    @y77("code_challenge")
    private final String mPkceCodeChallenge;

    @y77("code_challenge_method")
    private final String mPkceCodeChallengeMethod;
    private final transient String mPkceCodeVerifier;

    @q03
    @y77("pc")
    private final String mPreferredAuthMethodCode;

    @y77("x-client-WPAvailable")
    private final Boolean mWorkProfileAvailable;

    public MicrosoftAuthorizationRequest(MicrosoftStsAuthorizationRequest.Builder builder) {
        super(builder);
        this.mAuthority = builder.mAuthority;
        this.mLoginHint = builder.mLoginHint;
        this.mDomainHint = builder.mDomainHint;
        this.mCorrelationId = builder.mCorrelationId;
        PkceChallenge pkceChallengeNewPkceChallenge = PkceChallenge.newPkceChallenge();
        this.mPkceCodeChallengeMethod = pkceChallengeNewPkceChallenge.getCodeChallengeMethod();
        this.mPkceCodeChallenge = pkceChallengeNewPkceChallenge.getCodeChallenge();
        this.mPkceCodeVerifier = pkceChallengeNewPkceChallenge.getCodeVerifier();
        this.mMultipleCloudAware = builder.mMultipleCloudAware;
        this.mLibraryVersion = builder.mLibraryVersion;
        this.mLibraryName = builder.mLibraryName;
        this.mPreferredAuthMethodCode = builder.mPreferredAuthMethod == null ? null : String.valueOf(builder.mPreferredAuthMethod.code);
        this.mDiagnosticOS = Device.getOsForEsts();
        this.mDiagnosticDM = Device.getModel();
        this.mDiagnosticCPU = Device.getCpu();
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS)) {
            this.mDiagnosticMN = Device.getManufacturer();
            this.mDiagnosticReleaseOS = Device.getAndroidReleaseOs();
            this.mWorkProfileAvailable = Device.isInPersonalProfileButClouddpcWorkProfileAvailable();
        } else {
            this.mDiagnosticMN = null;
            this.mDiagnosticReleaseOS = null;
            this.mWorkProfileAvailable = null;
        }
    }

    public final URL getAuthority() {
        return this.mAuthority;
    }

    public final String getLibraryName() {
        return this.mLibraryName;
    }

    public final String getLibraryVersion() {
        return this.mLibraryVersion;
    }

    public final String getLoginHint() {
        return this.mLoginHint;
    }

    public final Boolean getMultipleCloudAware() {
        return this.mMultipleCloudAware;
    }

    public final String getPkceCodeVerifier() {
        return this.mPkceCodeVerifier;
    }
}
