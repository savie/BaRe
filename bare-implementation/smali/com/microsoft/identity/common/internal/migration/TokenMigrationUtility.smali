.class public final Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;",
        "U:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public static _import(Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;-><init>(Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
