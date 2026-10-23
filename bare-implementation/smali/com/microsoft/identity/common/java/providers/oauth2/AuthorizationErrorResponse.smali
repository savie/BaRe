.class public abstract Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;


# instance fields
.field private mError:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private mErrorDescription:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private mTokenProtectionRequired:Z

.field private mUpnToWpj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mError:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mErrorDescription:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mError:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mErrorDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUpnToWpj()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mUpnToWpj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isTokenProtectionRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mTokenProtectionRequired:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setTokenProtectionRequired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mTokenProtectionRequired:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUpnToWpj(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->mUpnToWpj:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
