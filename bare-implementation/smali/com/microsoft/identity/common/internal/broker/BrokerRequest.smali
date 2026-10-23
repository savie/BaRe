.class public Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAccountTransferToken:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "account_transfer_token"
    .end annotation
.end field

.field private mApplicationName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_app_name"
    .end annotation
.end field

.field private mApplicationVersion:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_app_version"
    .end annotation
.end field

.field private mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .annotation runtime Ly77;
        value = "authentication_scheme"
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "authority"
    .end annotation
.end field

.field private mAuthorizationAgent:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "authorization_agent"
    .end annotation
.end field

.field private mChildClientId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "child_client_id"
    .end annotation
.end field

.field private mChildRedirectUri:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "child_redirect_uri"
    .end annotation
.end field

.field private mClaims:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "claims"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_id"
    .end annotation
.end field

.field private mCorrelationId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "correlation_id"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "environment"
    .end annotation
.end field

.field private mExtraOptions:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "extra_options"
    .end annotation
.end field

.field private mExtraQueryStringParameter:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "extra_query_param"
    .end annotation
.end field

.field private mForceRefresh:Z
    .annotation runtime Ly77;
        value = "force_refresh"
    .end annotation
.end field

.field private mHomeAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "home_account_id"
    .end annotation
.end field

.field private mLocalAccountId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "local_account_id"
    .end annotation
.end field

.field private mMsalVersion:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_version"
    .end annotation
.end field

.field private mMultipleCloudsSupported:Z
    .annotation runtime Ly77;
        value = "multiple_clouds_supported"
    .end annotation
.end field

.field private mPowerOptCheckEnabled:Z
    .annotation runtime Ly77;
        value = "power_opt_check_enabled"
    .end annotation
.end field

.field private mPreferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
    .annotation runtime Ly77;
        value = "preferred_auth_method"
    .end annotation
.end field

.field private mPreferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;
    .annotation runtime Ly77;
        value = "preferred_browser"
    .end annotation
.end field

.field private mPrompt:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "prompt"
    .end annotation
.end field

.field private mRedirect:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "redirect_uri"
    .end annotation
.end field

.field private mRequestHeaders:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "request_headers"
    .end annotation
.end field

.field private mRequestType:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "request_type"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "scopes"
    .end annotation
.end field

.field private mSdkType:Lcom/microsoft/identity/common/java/request/SdkType;
    .annotation runtime Ly77;
        value = "client_sdk_type"
    .end annotation
.end field

.field private mSignInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;
    .annotation runtime Ly77;
        value = "sign_in_with_google_credential"
    .end annotation
.end field

.field private mSpanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;
    .annotation runtime Ly77;
        value = "span_context"
    .end annotation
.end field

.field private mSuppressAccountPicker:Z
    .annotation runtime Ly77;
        value = "suppress_account_picker"
    .end annotation
.end field

.field private mTenantId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "tenant_id"
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/request/SdkType;Ljava/lang/String;ZLjava/lang/String;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;ZLcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;Ljava/lang/String;ZLcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;)V
    .locals 7

    move-object/from16 v0, p11

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    move-object/from16 v5, p21

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    if-eqz p3, :cond_7

    if-eqz p4, :cond_6

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_1

    if-eqz v5, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthority:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mScope:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mRedirect:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClientId:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mUserName:Ljava/lang/String;

    iput-object p6, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mHomeAccountId:Ljava/lang/String;

    iput-object p7, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mLocalAccountId:Ljava/lang/String;

    iput-object p8, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraQueryStringParameter:Ljava/lang/String;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mRequestHeaders:Ljava/lang/String;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraOptions:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mCorrelationId:Ljava/lang/String;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPrompt:Ljava/lang/String;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mChildRedirectUri:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mChildClientId:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClaims:Ljava/lang/String;

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mForceRefresh:Z

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationName:Ljava/lang/String;

    iput-object v2, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMsalVersion:Ljava/lang/String;

    iput-object v4, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mSdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    iput-object v5, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mEnvironment:Ljava/lang/String;

    move/from16 p1, p22

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMultipleCloudsSupported:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthorizationAgent:Ljava/lang/String;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    move/from16 p1, p25

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPowerOptCheckEnabled:Z

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mSpanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPreferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPreferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAccountTransferToken:Ljava/lang/String;

    move/from16 p1, p30

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mSuppressAccountPicker:Z

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mSignInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    iput-object v6, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mTenantId:Ljava/lang/String;

    iput-object v6, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mRequestType:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "environment is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-string p0, "sdkType is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-string p0, "msalVersion is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string p0, "applicationVersion is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6

    :cond_4
    const-string p0, "applicationName is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6

    :cond_5
    const-string p0, "correlationId is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6

    :cond_6
    const-string p0, "clientId is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6

    :cond_7
    const-string p0, "redirect is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v6
.end method
