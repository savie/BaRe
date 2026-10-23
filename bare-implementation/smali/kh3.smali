.class public final Lkh3;
.super Ljava/security/SecureRandom;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final declared-synchronized nextBytes([B)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-class v0, Lg67;

    .line 3
    .line 4
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-boolean v1, Lg67;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    :try_start_3
    sput-boolean v1, Lg67;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    .line 14
    :try_start_4
    monitor-exit v0

    .line 15
    :goto_0
    invoke-super {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :catchall_1
    move-exception p1

    .line 23
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 24
    :try_start_6
    throw p1

    .line 25
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 26
    throw p1
.end method
