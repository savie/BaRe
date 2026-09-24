.class public final Lku2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Lku2;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Lp50;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Lfu2;

.field public final f:Lju2;

.field public final g:Lfo8;

.field public final h:I

.field public final i:Lje2;


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
    sput-object v0, Lku2;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lmu2;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lku2;->c:I

    .line 13
    .line 14
    iget-object v1, p1, Lgu2;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lju2;

    .line 17
    .line 18
    iput-object v1, p0, Lku2;->f:Lju2;

    .line 19
    .line 20
    iget v2, p1, Lgu2;->a:I

    .line 21
    .line 22
    iput v2, p0, Lku2;->h:I

    .line 23
    .line 24
    iget-object p1, p1, Lgu2;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lje2;

    .line 27
    .line 28
    iput-object p1, p0, Lku2;->i:Lje2;

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lku2;->d:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance p1, Lp50;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {p1, v3}, Lp50;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lku2;->b:Lp50;

    .line 48
    .line 49
    new-instance p1, Lfo8;

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    invoke-direct {p1, v4}, Lfo8;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lku2;->g:Lfo8;

    .line 56
    .line 57
    new-instance p1, Lfu2;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lfu2;-><init>(Lku2;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lku2;->e:Lfu2;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    .line 70
    .line 71
    if-nez v2, :cond_0

    .line 72
    .line 73
    :try_start_0
    iput v3, p0, Lku2;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lku2;->b()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    :try_start_1
    new-instance v0, Leu2;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Leu2;-><init>(Lfu2;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v0}, Lju2;->c(Lnc8;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    invoke-virtual {p0, p1}, Lku2;->d(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void
.end method

.method public static a()Lku2;
    .locals 4

    .line 1
    sget-object v0, Lku2;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lku2;->k:Lku2;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget v0, p0, Lku2;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lku2;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lku2;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget v0, p0, Lku2;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :try_start_1
    iput v1, p0, Lku2;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    iget-object v0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lku2;->e:Lfu2;

    .line 54
    .line 55
    iget-object v0, p0, Lfu2;->a:Lku2;

    .line 56
    .line 57
    :try_start_2
    new-instance v1, Leu2;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Leu2;-><init>(Lfu2;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v0, Lku2;->f:Lju2;

    .line 63
    .line 64
    invoke-interface {p0, v1}, Lju2;->c(Lnc8;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    invoke-virtual {v0, p0}, Lku2;->d(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    const-string p0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 85
    .line 86
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_0
    iput v1, p0, Lku2;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Lku2;->b:Lp50;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lku2;->b:Lp50;

    .line 24
    .line 25
    invoke-virtual {v1}, Lp50;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lku2;->d:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, Liu2;

    .line 40
    .line 41
    iget p0, p0, Lku2;->c:I

    .line 42
    .line 43
    invoke-direct {v2, v0, p0, p1}, Liu2;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final e(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lku2;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_18

    .line 14
    .line 15
    if-ltz p2, :cond_17

    .line 16
    .line 17
    if-ltz p3, :cond_16

    .line 18
    .line 19
    if-gt p2, p3, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    if-eqz v0, :cond_15

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    return-object v3

    .line 29
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gt p2, v0, :cond_3

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move v0, v1

    .line 38
    :goto_2
    if-eqz v0, :cond_14

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-gt p3, v0, :cond_4

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_4
    move v2, v1

    .line 48
    :goto_3
    if-eqz v2, :cond_13

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    if-ne p2, p3, :cond_6

    .line 57
    .line 58
    :cond_5
    move-object v5, p1

    .line 59
    goto/16 :goto_c

    .line 60
    .line 61
    :cond_6
    iget-object p0, p0, Lku2;->e:Lfu2;

    .line 62
    .line 63
    iget-object v4, p0, Lfu2;->b:Ldr;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    instance-of p0, p1, Lxj7;

    .line 69
    .line 70
    if-eqz p0, :cond_7

    .line 71
    .line 72
    move-object v0, p1

    .line 73
    check-cast v0, Lxj7;

    .line 74
    .line 75
    invoke-virtual {v0}, Lxj7;->a()V

    .line 76
    .line 77
    .line 78
    :cond_7
    const-class v0, Lbd8;

    .line 79
    .line 80
    if-nez p0, :cond_9

    .line 81
    .line 82
    :try_start_0
    instance-of v2, p1, Landroid/text/Spannable;

    .line 83
    .line 84
    if-eqz v2, :cond_8

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_8
    instance-of v2, p1, Landroid/text/Spanned;

    .line 88
    .line 89
    if-eqz v2, :cond_a

    .line 90
    .line 91
    move-object v2, p1

    .line 92
    check-cast v2, Landroid/text/Spanned;

    .line 93
    .line 94
    add-int/lit8 v5, p2, -0x1

    .line 95
    .line 96
    add-int/lit8 v6, p3, 0x1

    .line 97
    .line 98
    invoke-interface {v2, v5, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-gt v2, p3, :cond_a

    .line 103
    .line 104
    new-instance v3, Lre8;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-boolean v1, v3, Lre8;->a:Z

    .line 110
    .line 111
    new-instance v2, Landroid/text/SpannableString;

    .line 112
    .line 113
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iput-object v2, v3, Lre8;->b:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :goto_4
    move-object v5, p1

    .line 120
    goto/16 :goto_b

    .line 121
    .line 122
    :catchall_0
    move-exception v0

    .line 123
    move-object p2, v0

    .line 124
    goto :goto_4

    .line 125
    :cond_9
    :goto_5
    :try_start_1
    new-instance v3, Lre8;

    .line 126
    .line 127
    move-object v2, p1

    .line 128
    check-cast v2, Landroid/text/Spannable;

    .line 129
    .line 130
    invoke-direct {v3, v2}, Lre8;-><init>(Landroid/text/Spannable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 131
    .line 132
    .line 133
    :cond_a
    :goto_6
    if-eqz v3, :cond_c

    .line 134
    .line 135
    :try_start_2
    iget-object v2, v3, Lre8;->b:Landroid/text/Spannable;

    .line 136
    .line 137
    invoke-interface {v2, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, [Lbd8;

    .line 142
    .line 143
    if-eqz v0, :cond_c

    .line 144
    .line 145
    array-length v2, v0

    .line 146
    if-lez v2, :cond_c

    .line 147
    .line 148
    array-length v2, v0

    .line 149
    :goto_7
    if-ge v1, v2, :cond_c

    .line 150
    .line 151
    aget-object v5, v0, v1

    .line 152
    .line 153
    iget-object v6, v3, Lre8;->b:Landroid/text/Spannable;

    .line 154
    .line 155
    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    iget-object v7, v3, Lre8;->b:Landroid/text/Spannable;

    .line 160
    .line 161
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eq v6, p3, :cond_b

    .line 166
    .line 167
    invoke-virtual {v3, v5}, Lre8;->removeSpan(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_b
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    .line 175
    .line 176
    .line 177
    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_c
    move v6, p2

    .line 182
    move v7, p3

    .line 183
    if-eq v6, v7, :cond_d

    .line 184
    .line 185
    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-lt v6, p2, :cond_e

    .line 190
    .line 191
    :cond_d
    move-object v5, p1

    .line 192
    goto :goto_a

    .line 193
    :cond_e
    new-instance v10, Lyf1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 194
    .line 195
    :try_start_4
    iget-object p2, v4, Ldr;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p2, Lfo8;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 198
    .line 199
    const/4 p3, 0x5

    .line 200
    :try_start_5
    invoke-direct {v10, p3, v3, p2}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 201
    .line 202
    .line 203
    const/4 v9, 0x0

    .line 204
    const v8, 0x7fffffff

    .line 205
    .line 206
    .line 207
    move-object v5, p1

    .line 208
    :try_start_6
    invoke-virtual/range {v4 .. v10}, Ldr;->f(Ljava/lang/CharSequence;IIIZLwu2;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Lre8;

    .line 213
    .line 214
    if-eqz p1, :cond_10

    .line 215
    .line 216
    iget-object p1, p1, Lre8;->b:Landroid/text/Spannable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 217
    .line 218
    if-eqz p0, :cond_f

    .line 219
    .line 220
    move-object p0, v5

    .line 221
    check-cast p0, Lxj7;

    .line 222
    .line 223
    invoke-virtual {p0}, Lxj7;->b()V

    .line 224
    .line 225
    .line 226
    :cond_f
    return-object p1

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    :goto_8
    move-object p2, v0

    .line 229
    goto :goto_b

    .line 230
    :cond_10
    if-eqz p0, :cond_12

    .line 231
    .line 232
    :goto_9
    move-object p1, v5

    .line 233
    check-cast p1, Lxj7;

    .line 234
    .line 235
    invoke-virtual {p1}, Lxj7;->b()V

    .line 236
    .line 237
    .line 238
    return-object v5

    .line 239
    :catchall_2
    move-exception v0

    .line 240
    move-object v5, p1

    .line 241
    goto :goto_8

    .line 242
    :catchall_3
    move-exception v0

    .line 243
    move-object v5, p1

    .line 244
    move-object p1, v0

    .line 245
    move-object p2, p1

    .line 246
    goto :goto_b

    .line 247
    :goto_a
    if-eqz p0, :cond_12

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :goto_b
    if-eqz p0, :cond_11

    .line 251
    .line 252
    move-object p1, v5

    .line 253
    check-cast p1, Lxj7;

    .line 254
    .line 255
    invoke-virtual {p1}, Lxj7;->b()V

    .line 256
    .line 257
    .line 258
    :cond_11
    throw p2

    .line 259
    :cond_12
    :goto_c
    return-object v5

    .line 260
    :cond_13
    const-string p0, "end should be < than charSequence length"

    .line 261
    .line 262
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-object v3

    .line 266
    :cond_14
    const-string p0, "start should be < than charSequence length"

    .line 267
    .line 268
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    return-object v3

    .line 272
    :cond_15
    const-string p0, "start should be <= than end"

    .line 273
    .line 274
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-object v3

    .line 278
    :cond_16
    const-string p0, "end cannot be negative"

    .line 279
    .line 280
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-object v3

    .line 284
    :cond_17
    const-string p0, "start cannot be negative"

    .line 285
    .line 286
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-object v3

    .line 290
    :cond_18
    const-string p0, "Not initialized yet"

    .line 291
    .line 292
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-object v3
.end method

.method public final f(Lhu2;)V
    .locals 4

    .line 1
    const-string v0, "initCallback cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lyc9;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget v0, p0, Lku2;->c:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lku2;->c:I

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lku2;->b:Lp50;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lp50;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lku2;->d:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v1, Liu2;

    .line 37
    .line 38
    iget v2, p0, Lku2;->c:I

    .line 39
    .line 40
    filled-new-array {p1}, [Lhu2;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v1, p1, v2, v3}, Liu2;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_2
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .line 73
    .line 74
    throw p1
.end method
