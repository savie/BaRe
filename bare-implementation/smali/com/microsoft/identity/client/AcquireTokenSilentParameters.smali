.class public final Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
.super Lcom/microsoft/identity/client/TokenParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

.field private final mForceRefresh:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/TokenParameters;-><init>(Lcom/microsoft/identity/client/TokenParameters$Builder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->access$000(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mForceRefresh:Z

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->access$100(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getForceRefresh()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mForceRefresh:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 2
    .line 3
    return-void
.end method
