.class public abstract Ly35;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Lorg/swiftapps/swiftbackup/database/MDatabase;
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/database/MDatabase;->k:Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lorg/swiftapps/swiftbackup/database/MDatabase;->k:Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 13
    .line 14
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "swiftbackup-db"

    .line 19
    .line 20
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Lbo6;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lbo6;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v2, Lbo6;->n:Z

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v2, Lbo6;->o:Z

    .line 36
    .line 37
    iput-boolean v1, v2, Lbo6;->p:Z

    .line 38
    .line 39
    invoke-virtual {v2}, Lbo6;->a()Leo6;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 44
    .line 45
    sput-object v1, Lorg/swiftapps/swiftbackup/database/MDatabase;->k:Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    .line 51
    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    :goto_0
    monitor-exit v0

    .line 59
    goto :goto_2

    .line 60
    :goto_1
    monitor-exit v0

    .line 61
    throw v1

    .line 62
    :cond_2
    :goto_2
    sget-object v0, Lorg/swiftapps/swiftbackup/database/MDatabase;->k:Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    return-object v0
.end method
