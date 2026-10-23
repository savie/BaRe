.class public final Lbr1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lbr1;

.field public static b:Z

.field public static final c:Lzc2;

.field public static d:Lar1;

.field public static e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

.field public static final f:Lgv7;

.field public static final g:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbr1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbr1;->a:Lbr1;

    .line 7
    .line 8
    invoke-static {}, Lre3;->k()Lzc2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "configs"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lbr1;->c:Lzc2;

    .line 19
    .line 20
    new-instance v0, Lcl;

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-direct {v0, v1}, Lcl;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lgv7;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lbr1;->f:Lgv7;

    .line 32
    .line 33
    new-instance v0, Ldl;

    .line 34
    .line 35
    const/4 v1, 0x7

    .line 36
    invoke-direct {v0, v1}, Ldl;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lgv7;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lbr1;->g:Lgv7;

    .line 45
    .line 46
    return-void
.end method

.method public static c(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->isNameValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getValues()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-static {v2, v1, v3}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    return v3

    .line 71
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 72
    return p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    :try_start_2
    sget-object v0, Lbr1;->g:Lgv7;

    .line 27
    .line 28
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lq63;

    .line 33
    .line 34
    invoke-virtual {v1}, Lq63;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    sget-object v1, Lw14;->a:Lgv7;

    .line 41
    .line 42
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lq63;

    .line 47
    .line 48
    const-class v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-static {v0, v1, v2}, Lw14;->b(Lq63;Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lbr1;->d(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_3
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 65
    .line 66
    const-string v2, "ConfigRepo"

    .line 67
    .line 68
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v5, 0x4

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    .line 81
    .line 82
    const-string v1, "Method called from main thread"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    throw v0
.end method

.method public final b()Z
    .locals 8

    .line 1
    const-string v0, "ConfigRepo"

    .line 2
    .line 3
    const-string v1, "Fetching on demand"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lai8;->b()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lai8;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lbr1;->a()V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    sget-object v0, Lbr1;->c:Lzc2;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v2, v0, Lxe3;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v0, Lxe3;

    .line 33
    .line 34
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 35
    .line 36
    const-class v2, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lbr1;->d(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    instance-of p0, v0, Lwe3;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    check-cast v0, Lwe3;

    .line 56
    .line 57
    iget-object p0, v0, Lwe3;->n:Lwc2;

    .line 58
    .line 59
    iget-object v4, p0, Lwc2;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const/4 v6, 0x4

    .line 65
    const/4 v7, 0x0

    .line 66
    const-string v3, "ConfigRepo"

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 74
    .line 75
    .line 76
    return v1
.end method

.method public final declared-synchronized d(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sput-object p1, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 3
    .line 4
    sget-object v0, Lbr1;->f:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lex6;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method
