.class public final Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mClientException:Lcom/microsoft/identity/common/java/exception/ClientException;

.field private final mKnown:Z


# direct methods
.method public constructor <init>(ZLcom/microsoft/identity/common/java/exception/ClientException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mKnown:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mClientException:Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getClientException()Lcom/microsoft/identity/common/java/exception/ClientException;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mClientException:Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKnown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mKnown:Z

    .line 2
    .line 3
    return p0
.end method
