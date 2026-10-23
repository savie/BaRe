.class public final Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/providers/oauth2/IResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/providers/oauth2/IResult;"
    }
.end annotation


# instance fields
.field private mAuthorizationErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;"
        }
    .end annotation
.end field

.field private mAuthorizationResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;"
        }
    .end annotation
.end field

.field private mAuthorizationStatus:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

.field private final mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mSuccess:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mSuccess:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->setAuthorizationStatus(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;)V

    .line 19
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    return-void
.end method


# virtual methods
.method public final getAuthorizationErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthorizationResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthorizationStatus()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationStatus:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSuccess()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mSuccess:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSuccessResponse()Lcom/microsoft/identity/common/java/providers/oauth2/ISuccessResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAuthorizationResponse(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationResponse:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;

    .line 2
    .line 3
    return-void
.end method

.method public final setAuthorizationStatus(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->mAuthorizationStatus:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 2
    .line 3
    return-void
.end method
