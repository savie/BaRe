.class public Lcom/microsoft/identity/common/java/telemetry/Telemetry;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;


# instance fields
.field private final mIsTelemetryEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p1, "Telemetry"

    .line 5
    .line 6
    const-string v0, "Telemetry is disabled because the Telemetry context or configuration is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    .line 13
    .line 14
    return-void
.end method

.method public static access$300(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;-><init>(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 23
    .line 24
    :cond_1
    sget-object p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method private applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    monitor-enter p0

    .line 11
    monitor-exit p0

    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->access$300(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method


# virtual methods
.method public flush(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const-string p0, "No correlation id set."

    .line 13
    .line 14
    const-string p1, "Telemetry"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    throw p0
.end method

.method public final getMap(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    const-string p0, "Telemetry"

    .line 15
    .line 16
    const-string p1, "No correlation id set."

    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    throw p0
.end method
