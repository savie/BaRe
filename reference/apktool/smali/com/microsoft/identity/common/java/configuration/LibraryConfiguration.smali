.class public final Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;


# instance fields
.field private final authorizationInCurrentTask:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->authorizationInCurrentTask:Z

    .line 5
    .line 6
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
    .locals 4

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    new-instance v2, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->authorizationInCurrentTask(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->build()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    monitor-exit v1

    .line 25
    sput-object v2, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :catchall_1
    move-exception v2

    .line 31
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    :try_start_4
    throw v2

    .line 33
    :cond_0
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    throw v1
.end method

.method public static declared-synchronized intializeLibraryConfiguration(Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;)V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sput-object p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string p0, "LibraryConfiguration"

    .line 14
    .line 15
    const-string v1, "MsalConfiguration was already initialized"

    .line 16
    .line 17
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->authorizationInCurrentTask:Z

    .line 13
    .line 14
    iget-boolean p1, p1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->authorizationInCurrentTask:Z

    .line 15
    .line 16
    if-eq p0, p1, :cond_2

    .line 17
    .line 18
    :goto_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->authorizationInCurrentTask:Z

    .line 2
    .line 3
    const/16 v0, 0x61

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x4f

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p0, v0

    .line 11
    :goto_0
    const/16 v1, 0x3b

    .line 12
    .line 13
    add-int/2addr p0, v1

    .line 14
    mul-int/2addr p0, v1

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final isAuthorizationInCurrentTask()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->authorizationInCurrentTask:Z

    .line 2
    .line 3
    return p0
.end method
