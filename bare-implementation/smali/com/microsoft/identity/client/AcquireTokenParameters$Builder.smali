.class public final Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;
.super Lcom/microsoft/identity/client/TokenParameters$Builder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/client/TokenParameters$Builder<",
        "Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

.field private mExtraScopesToConsent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginHint:Ljava/lang/String;

.field private mPrompt:Lcom/microsoft/identity/client/Prompt;


# direct methods
.method public static synthetic access$000(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mLoginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Lcom/microsoft/identity/client/Prompt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mPrompt:Lcom/microsoft/identity/client/Prompt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mExtraScopesToConsent:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Lcom/microsoft/identity/client/AuthenticationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final self()Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final startAuthorizationFromActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public final withCallback(Lcom/microsoft/identity/client/AuthenticationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final withLoginHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mLoginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final withOtherScopesToAuthorize(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mExtraScopesToConsent:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final withPrompt(Lcom/microsoft/identity/client/Prompt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->mPrompt:Lcom/microsoft/identity/client/Prompt;

    .line 2
    .line 3
    return-void
.end method
