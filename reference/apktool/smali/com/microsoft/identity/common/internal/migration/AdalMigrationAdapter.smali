.class public final Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mAuthorityForInstanceDiscovery:Lcom/microsoft/identity/common/java/authorities/Authority;

.field private final mRedirectsMap:Ljava/util/HashMap;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/microsoft/identity/common/java/authorities/Authority;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.microsoft.identity.client.migration_status"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->mRedirectsMap:Ljava/util/HashMap;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->mAuthorityForInstanceDiscovery:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 16
    .line 17
    return-void
.end method

.method public static deserialize(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/gson/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/gson/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    const-class v4, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v4}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 50
    .line 51
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lkm4; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    const-string v2, "AdalMigrationAdapter:deserialize"

    .line 58
    .line 59
    const-string v3, "Failed to deserialize ADAL cache entry. Skipping."

    .line 60
    .line 61
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final adapt(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->getMigrationStatus()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->mAuthorityForInstanceDiscovery:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 16
    .line 17
    const-string v3, "AdalMigrationAdapter:loadCloudDiscoveryMetadata"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_1
    sget v5, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->a:I

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-static {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    move v2, v4

    .line 36
    goto :goto_2

    .line 37
    :goto_1
    :try_start_2
    const-string v5, "Failed to load instance discovery metadata"

    .line 38
    .line 39
    sget v6, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 40
    .line 41
    invoke-static {v3, v5, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_2
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->deserialize(Ljava/util/Map;)Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->mRedirectsMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->migrateTokens(Ljava/util/HashMap;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "adal-migration-complete"

    .line 71
    .line 72
    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_4

    .line 82
    :cond_1
    :goto_3
    monitor-exit v1

    .line 83
    return-object v0

    .line 84
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0
.end method

.method public final getMigrationStatus()Z
    .locals 2

    .line 1
    const-string v0, "adal-migration-complete"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
