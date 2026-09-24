.class final Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$adapter:Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;

.field final synthetic val$callback:Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;

.field final synthetic val$credentials:Ljava/util/Map;

.field final synthetic val$destination:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$adapter:Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$credentials:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$destination:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$callback:Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$adapter:Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$credentials:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->adapt(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$destination:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->setSingleSignOnState(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 44
    .line 45
    const-string v1, "TokenMigrationUtility:_import"

    .line 46
    .line 47
    const-string v2, "Failed to save account/refresh token . Skipping "

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$callback:Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;

    .line 54
    .line 55
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;->onMigrationFinished()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
