.class public final Lyw2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lfu;

.field public volatile b:Lgm2;


# direct methods
.method public constructor <init>(Lfu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyw2;->a:Lfu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lgm2;
    .locals 4

    .line 1
    iget-object v0, p0, Lyw2;->b:Lgm2;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lyw2;->b:Lgm2;

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lyw2;->a:Lfu;

    .line 11
    .line 12
    iget-object v0, v0, Lfu;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lbe4;

    .line 15
    .line 16
    const-string v1, "image_manager_disk_cache"

    .line 17
    .line 18
    iget-object v0, v0, Lbe4;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    :cond_2
    new-instance v2, Lsm2;

    .line 50
    .line 51
    invoke-direct {v2, v3}, Lsm2;-><init>(Ljava/io/File;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    iput-object v2, p0, Lyw2;->b:Lgm2;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    :goto_2
    iget-object v0, p0, Lyw2;->b:Lgm2;

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    new-instance v0, Lus2;

    .line 64
    .line 65
    const/16 v1, 0xb

    .line 66
    .line 67
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lyw2;->b:Lgm2;

    .line 71
    .line 72
    :cond_5
    monitor-exit p0

    .line 73
    goto :goto_4

    .line 74
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw v0

    .line 76
    :cond_6
    :goto_4
    iget-object p0, p0, Lyw2;->b:Lgm2;

    .line 77
    .line 78
    return-object p0
.end method
