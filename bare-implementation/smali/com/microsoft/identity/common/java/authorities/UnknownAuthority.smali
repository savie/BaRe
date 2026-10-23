.class public Lcom/microsoft/identity/common/java/authorities/UnknownAuthority;
.super Lcom/microsoft/identity/common/java/authorities/Authority;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 4
    .line 5
    const-string p1, "parameters is marked non-null but is null"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public getAuthorityURL()Ljava/net/URL;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public getAuthorityUri()Ljava/net/URI;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
