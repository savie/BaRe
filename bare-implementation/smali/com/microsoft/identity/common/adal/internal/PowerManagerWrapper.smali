.class public final Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;


# direct methods
.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;
    .locals 3

    .line 1
    const-class v0, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v1
.end method
