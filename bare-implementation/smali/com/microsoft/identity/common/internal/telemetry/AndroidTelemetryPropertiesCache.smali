.class public final Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mStorage:Lcom/microsoft/identity/common/SharedPreferenceStringStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/SharedPreferenceStringStorage;

    .line 2
    .line 3
    const-string v1, "com.microsoft.common.telemetry-properties"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v1, v2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;-><init>(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;->mStorage:Lcom/microsoft/identity/common/SharedPreferenceStringStorage;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final declared-synchronized getOrCreateRandomStableDeviceId()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;->mStorage:Lcom/microsoft/identity/common/SharedPreferenceStringStorage;

    .line 3
    .line 4
    const-string v1, "device_id_guid"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/SharedPreferenceStringStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;->mStorage:Lcom/microsoft/identity/common/SharedPreferenceStringStorage;

    .line 27
    .line 28
    const-string v2, "device_id_guid"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/microsoft/identity/common/SharedPreferenceStringStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    return-object v0

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0
.end method
