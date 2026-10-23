.class public Lcom/microsoft/identity/client/AcquireTokenParameters;
.super Lcom/microsoft/identity/client/TokenParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

.field private final mExtraQueryStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExtraScopesToConsent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Landroidx/fragment/app/o;

.field private final mLoginHint:Ljava/lang/String;

.field private final mPrompt:Lcom/microsoft/identity/client/Prompt;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/TokenParameters;-><init>(Lcom/microsoft/identity/client/TokenParameters$Builder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$000(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mActivity:Landroid/app/Activity;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mFragment:Landroidx/fragment/app/o;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$200(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mLoginHint:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$500(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Lcom/microsoft/identity/client/Prompt;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mPrompt:Lcom/microsoft/identity/client/Prompt;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$600(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraScopesToConsent:Ljava/util/List;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraQueryStringParameters:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$800(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtraQueryStringParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraQueryStringParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtraScopesToConsent()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraScopesToConsent:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFragment()Landroidx/fragment/app/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mFragment:Landroidx/fragment/app/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLoginHint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mLoginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrompt()Lcom/microsoft/identity/client/Prompt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mPrompt:Lcom/microsoft/identity/client/Prompt;

    .line 2
    .line 3
    return-object p0
.end method
