.class public final Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;
.super Lcom/microsoft/identity/client/TokenParameters$Builder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/client/TokenParameters$Builder<",
        "Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

.field private mForceRefresh:Z


# direct methods
.method public static synthetic access$000(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mForceRefresh:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Lcom/microsoft/identity/client/SilentAuthenticationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final forceRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mForceRefresh:Z

    .line 2
    .line 3
    return-void
.end method

.method public final self()Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final withCallback$1(Lcom/microsoft/identity/client/AuthenticationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 2
    .line 3
    return-void
.end method
