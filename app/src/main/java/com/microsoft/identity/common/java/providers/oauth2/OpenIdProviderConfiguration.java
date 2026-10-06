package com.microsoft.identity.common.java.providers.oauth2;

import defpackage.y77;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class OpenIdProviderConfiguration {

    @y77("acr_values_supported")
    private List<String> mAcrValuesSupported;

    @y77("authorization_endpoint")
    private String mAuthorizationEndpoint;

    @y77("check_session_iframe")
    private String mCheckSessionIFrame;

    @y77("claim_types_supported")
    private List<String> mClaimTypesSupported;

    @y77("claims_locales_supported")
    private List<String> mClaimsLocalesSupported;

    @y77("claims_parameter_supported")
    private Boolean mClaimsParameterSupported;

    @y77("claims_supported")
    private List<String> mClaimsSupported;

    @y77("cloud_graph_host_name")
    private String mCloudGraphHostName;

    @y77("cloud_instance_name")
    private String mCloudInstanceName;

    @y77("device_authorization_endpoint")
    private String mDeviceAuthorizationEndpoint;

    @y77("display_values_supported")
    private List<String> mDisplayValuesSupported;

    @y77("end_session_endpoint")
    private String mEndSessionEndpoint;

    @y77("frontchannel_logout_supported")
    private Boolean mFrontChannelLogoutSupported;

    @y77("grant_types_supported")
    private List<String> mGrantTypesSupported;

    @y77("http_logout_supported")
    private Boolean mHttpLogoutSupported;

    @y77("id_token_encryption_alg_values_supported")
    private List<String> mIdTokenEncryptionAlgValuesSupported;

    @y77("id_token_encryption_enc_values_supported")
    private List<String> mIdTokenEncryptionEncValuesSupported;

    @y77("id_token_signing_alg_values_supported")
    private List<String> mIdTokenSigningAlgValuesSupported;

    @y77("issuer")
    private String mIssuer;

    @y77("jwks_uri")
    private String mJwksUri;

    @y77("msgraph_host")
    private String mMsGraphHost;

    @y77("op_policy_uri")
    private String mOpPolicyUri;

    @y77("op_tos_uri")
    private String mOpTosUri;

    @y77("rbac_url")
    private String mRbacUrl;

    @y77("registration_endpoint")
    private String mRegistrationEndpoint;

    @y77("request_object_encryption_alg_values_supported")
    private List<String> mRequestObjectEncryptionAlgValuesSupported;

    @y77("request_object_encryption_enc_values_supported")
    private List<String> mRequestObjectEncryptionEncValuesSupported;

    @y77("request_object_signing_alg_values_supported")
    private List<String> mRequestObjectSigningAlgValuesSupported;

    @y77("request_parameter_supported")
    private Boolean mRequestParameterSupported;

    @y77("request_uri_parameter_supported")
    private Boolean mRequestUriParameterSupported;

    @y77("require_request_uri_registration")
    private Boolean mRequireRequestUriRegistration;

    @y77("response_modes_supported")
    private List<String> mResponseModesSupported;

    @y77("response_types_supported")
    private List<String> mResponseTypesSupported;

    @y77("scopes_supported")
    private List<String> mScopesSupported;

    @y77("service_documentation")
    private String mServiceDocumentation;

    @y77("subject_types_supported")
    private List<String> mSubjectTypesSupported;

    @y77("tenant_region_scope")
    private String mTenantRegionScope;

    @y77("tenant_region_sub_scope")
    private String mTenantRegionSubScope;

    @y77("token_endpoint")
    private String mTokenEndpoint;

    @y77("token_endpoint_auth_methods_supported")
    private List<String> mTokenEndpointAuthMethodsSupported;

    @y77("token_endpoint_auth_signing_alg_values_supported")
    private List<String> mTokenEndpointAuthSigningAlgValuesSupported;

    @y77("ui_locales_supported")
    private List<String> mUiLocalesSupported;

    @y77("userinfo_encryption_alg_values_supported")
    private List<String> mUserInfoEncryptionAlgValuesSupported;

    @y77("userinfo_encryption_enc_values_supported")
    private List<String> mUserInfoEncryptionEncValueSupported;

    @y77("userinfo_endpoint")
    private String mUserInfoEndpoint;

    @y77("userinfo_signing_alg_values_supported")
    private List<String> mUserInfoSigningAlgValuesSupported;

    public final String getAuthorizationEndpoint() {
        return this.mAuthorizationEndpoint;
    }

    public final String getIssuer() {
        return this.mIssuer;
    }

    public final String getTokenEndpoint() {
        return this.mTokenEndpoint;
    }
}
