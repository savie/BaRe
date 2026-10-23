.class public Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/parameters/IHasExtraParameters;


# instance fields
.field private mBrkClientId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "brk_client_id"
    .end annotation
.end field

.field private mBrkRedirectUri:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "brk_redirect_uri"
    .end annotation
.end field

.field private mClientAssertion:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_assertion"
    .end annotation
.end field

.field private mClientAssertionType:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "client_assertion_type"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "client_id"
    .end annotation
.end field

.field private mClientSecret:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_secret"
    .end annotation
.end field

.field private mCode:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "code"
    .end annotation
.end field

.field private transient mExtendedParameters:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGrantType:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "grant_type"
    .end annotation
.end field

.field private mRedirectUri:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "redirect_uri"
    .end annotation
.end field

.field private mRefreshToken:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "refresh_token"
    .end annotation
.end field

.field private mRequestConfirmation:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "req_cnf"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "scope"
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "token_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized getExtraParameters()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mExtendedParameters:Ljava/lang/Iterable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final getGrantType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mGrantType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mScope:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTokenType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mTokenType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setBrkClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mBrkClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBrkRedirectUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mBrkRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized setExtraParameters(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mExtendedParameters:Ljava/lang/Iterable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public final setGrantType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mGrantType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRedirectUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mRefreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestConfirmation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mRequestConfirmation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setScope(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mScope:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTokenType()V
    .locals 1

    .line 1
    const-string v0, "pop"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;->mTokenType:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method
