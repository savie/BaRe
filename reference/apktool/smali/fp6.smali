.class public Lfp6;
.super Ly84;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final CACHE_TTL_MILLIS:J = 0x7530L

.field private static final COMPLETED_OPERATION_TTL_MILLIS:J = 0x493e0L

.field private static final Companion:Lyo6;

.field private static final MAX_ARCHIVE_INFO_CACHE_ENTRIES:I = 0x4

.field private static final MAX_TAR_ENTRY_CACHE_ENTRIES:I = 0x2

.field private static final RAW_REMOVABLE_STORAGE_PREFIX:Ljava/lang/String; = "/mnt/media_rw/"


# instance fields
.field private final archiveInfoCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lwo6;",
            "Lxo6;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final operationIds:Ljava/util/concurrent/atomic/AtomicLong;

.field private final operations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lap6;",
            ">;"
        }
    .end annotation
.end field

.field private final tarEntryCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lep6;",
            "Lxo6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyo6;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfp6;->Companion:Lyo6;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "org.swiftapps.rootservice.IRootAidlInterface"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfp6;->context:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    const-wide/16 v0, 0x1

    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lfp6;->operationIds:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lfp6;->executor:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    new-instance p1, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lfp6;->cacheLock:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lfp6;->archiveInfoCache:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lfp6;->tarEntryCache:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    return-void
.end method

.method public static g(Ljava/util/LinkedHashMap;J)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lxo6;

    .line 26
    .line 27
    iget-wide v0, v0, Lxo6;->b:J

    .line 28
    .line 29
    sub-long v0, p1, v0

    .line 30
    .line 31
    const-wide/16 v2, 0x7530

    .line 32
    .line 33
    cmp-long v0, v0, v2

    .line 34
    .line 35
    if-ltz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public static j(Ljava/lang/String;)Lzo6;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Lzo6;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-direct/range {v0 .. v5}, Lzo6;-><init>(JJLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static l(JLjava/lang/String;)Lap6;
    .locals 32

    .line 1
    new-instance v0, Lap6;

    .line 2
    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    new-instance v2, Lo17;

    .line 6
    .line 7
    const-wide/16 v29, 0x0

    .line 8
    .line 9
    const v31, 0x1fe00

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const-wide/16 v10, 0x0

    .line 17
    .line 18
    const-wide/16 v12, 0x0

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    const-wide/16 v15, 0x0

    .line 22
    .line 23
    const-wide/16 v17, 0x0

    .line 24
    .line 25
    const-wide/16 v19, 0x0

    .line 26
    .line 27
    const-wide/16 v21, 0x0

    .line 28
    .line 29
    const-wide/16 v23, 0x0

    .line 30
    .line 31
    const-wide/16 v25, 0x0

    .line 32
    .line 33
    const-wide/16 v27, 0x0

    .line 34
    .line 35
    move-wide/from16 v3, p0

    .line 36
    .line 37
    move-object/from16 v9, p2

    .line 38
    .line 39
    invoke-direct/range {v2 .. v31}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lap6;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public static m(Lap6;Lo17;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lap6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lo17;->b:I

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lap6;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static n(Lap6;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lap6;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Lzz6;

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v1, v0}, Lzz6;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    const-string v2, ": "

    .line 18
    .line 19
    invoke-static {p0, v2, v1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static p(Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lzz6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    return p0

    .line 13
    :cond_1
    instance-of v0, p0, Lyy6;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x4

    .line 18
    return p0

    .line 19
    :cond_2
    instance-of p0, p0, Ljava/io/IOException;

    .line 20
    .line 21
    if-eqz p0, :cond_3

    .line 22
    .line 23
    const/4 p0, 0x5

    .line 24
    return p0

    .line 25
    :cond_3
    const/4 p0, 0x6

    .line 26
    return p0
.end method

.method public static q(Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lpz6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    instance-of v0, p0, Lsz6;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    instance-of v0, p0, Lrz6;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x4

    .line 18
    return p0

    .line 19
    :cond_2
    instance-of v0, p0, Lnz6;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const/4 p0, 0x5

    .line 24
    return p0

    .line 25
    :cond_3
    instance-of p0, p0, Lyy6;

    .line 26
    .line 27
    if-eqz p0, :cond_4

    .line 28
    .line 29
    const/4 p0, 0x3

    .line 30
    return p0

    .line 31
    :cond_4
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 20
    .line 21
    const-string v1, " path must be absolute: "

    .line 22
    .line 23
    invoke-static {p0, v1, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    .line 32
    .line 33
    const-string v0, " path is blank"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public static s(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "SBA root progressUpdateIntervalMillis must be >= 0: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;Ljava/lang/Object;ILbt3;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lfp6;->cacheLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-static {p1, v0, v1}, Lfp6;->g(Ljava/util/LinkedHashMap;J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lxo6;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-wide/16 v5, 0x7530

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-wide v7, v3, Lxo6;->b:J

    .line 23
    .line 24
    sub-long/2addr v0, v7

    .line 25
    cmp-long v0, v0, v5

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v4

    .line 31
    :goto_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object p0, v3, Lxo6;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit v2

    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    monitor-exit v2

    .line 40
    invoke-interface {p4}, Lbt3;->invoke()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-object p0, p0, Lfp6;->cacheLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    invoke-static {p1, v0, v1}, Lfp6;->g(Ljava/util/LinkedHashMap;J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lxo6;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-wide v7, v2, Lxo6;->b:J

    .line 63
    .line 64
    sub-long v7, v0, v7

    .line 65
    .line 66
    cmp-long v3, v7, v5

    .line 67
    .line 68
    if-gez v3, :cond_2

    .line 69
    .line 70
    move-object v4, v2

    .line 71
    :cond_2
    if-eqz v4, :cond_3

    .line 72
    .line 73
    iget-object p1, v4, Lxo6;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :try_start_2
    new-instance v2, Lxo6;

    .line 80
    .line 81
    invoke-direct {v2, p4, v0, v1}, Lxo6;-><init>(Ljava/lang/Object;J)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-le v0, p3, :cond_4

    .line 100
    .line 101
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    monitor-exit p0

    .line 115
    return-object p4

    .line 116
    :goto_2
    monitor-exit p0

    .line 117
    throw p1

    .line 118
    :goto_3
    monitor-exit v2

    .line 119
    throw p0
.end method

.method public cancelSba(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lap6;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lap6;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public createSba(Li17;Le94;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfp6;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfp6;->operationIds:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v0, p1, Li17;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v4, v0}, Lfp6;->l(JLjava/lang/String;)Lap6;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget-object v0, p0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lfp6;->executor:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    new-instance v1, Lso6;

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    move-object v5, p1

    .line 34
    move-object v6, p2

    .line 35
    invoke-direct/range {v1 .. v7}, Lso6;-><init>(Lfp6;JLi17;Le94;Lap6;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-wide v3
.end method

.method public extractSba(Lm17;Le94;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfp6;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfp6;->operationIds:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v0, p1, Lm17;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v4, v0}, Lfp6;->l(JLjava/lang/String;)Lap6;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget-object v0, p0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lfp6;->executor:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    new-instance v1, Lpo6;

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    move-object v5, p1

    .line 34
    move-object v6, p2

    .line 35
    invoke-direct/range {v1 .. v7}, Lpo6;-><init>(Lfp6;JLm17;Le94;Lap6;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-wide v3
.end method

.method public extractTar(Ls17;Le94;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfp6;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfp6;->operationIds:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v0, p1, Ls17;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v4, v0}, Lfp6;->l(JLjava/lang/String;)Lap6;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget-object v0, p0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lfp6;->executor:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    new-instance v1, Lto6;

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    move-object v5, p1

    .line 34
    move-object v6, p2

    .line 35
    invoke-direct/range {v1 .. v7}, Lto6;-><init>(Lfp6;JLs17;Le94;Lap6;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-wide v3
.end method

.method public final f()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lap6;

    .line 42
    .line 43
    iget-object v6, v3, Lap6;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    const-wide/16 v8, 0x0

    .line 50
    .line 51
    cmp-long v8, v6, v8

    .line 52
    .line 53
    if-lez v8, :cond_0

    .line 54
    .line 55
    sub-long v6, v0, v6

    .line 56
    .line 57
    const-wide/32 v8, 0x493e0

    .line 58
    .line 59
    .line 60
    cmp-long v6, v6, v8

    .line 61
    .line 62
    if-ltz v6, :cond_0

    .line 63
    .line 64
    iget-object v6, p0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v6, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lfp6;->context:Landroid/content/Context;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v0, "getPackageArchiveInfo"

    .line 9
    .line 10
    invoke-static {v0, p1}, Lfp6;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    const-string v0, ", flags="

    .line 24
    .line 25
    const-string v1, ")"

    .line 26
    .line 27
    const-string v2, "getPackageArchiveInfo(path="

    .line 28
    .line 29
    invoke-static {v2, p1, v0, p2, v1}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, p0}, Lfp6;->o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0

    .line 38
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 39
    .line 40
    const-string p1, "getPackageArchiveInfo() requires an Android Context"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public getParcelFileDescriptor(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "getParcelFileDescriptor"

    .line 5
    .line 6
    invoke-static {p0, p1}, Lfp6;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/high16 p0, 0x10000000

    .line 10
    .line 11
    if-eq p2, p0, :cond_1

    .line 12
    .line 13
    const/high16 p0, 0x2c000000

    .line 14
    .line 15
    if-eq p2, p0, :cond_1

    .line 16
    .line 17
    const/high16 p0, 0x38000000

    .line 18
    .line 19
    if-ne p2, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 23
    .line 24
    const-string p1, "Unsupported getParcelFileDescriptor mode: "

    .line 25
    .line 26
    invoke-static {p2, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    :try_start_0
    new-instance p0, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    const-string v0, ", mode="

    .line 49
    .line 50
    const-string v1, ")"

    .line 51
    .line 52
    const-string v2, "getParcelFileDescriptor(path="

    .line 53
    .line 54
    invoke-static {v2, p1, v0, p2, v1}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1, p0}, Lfp6;->o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0
.end method

.method public getPid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getSbaNativeVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p0, Lxz6;

    .line 2
    .line 3
    sget-object v0, Lcom/swiftapps/sba/SbaRuntimeNative;->a:Lcom/swiftapps/sba/SbaRuntimeNative;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/swiftapps/sba/SbaRuntimeNative;->version()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->isAvailable()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p0, v0, v1}, Lxz6;-><init>(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lxz6;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    new-instance v0, Landroid/os/RemoteException;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v1, "getSbaNativeVersion(): "

    .line 29
    .line 30
    invoke-static {v1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public getSbaResult(J)Lo17;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lfp6;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lap6;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v2, Lo17;

    .line 21
    .line 22
    const-string v0, "Unknown SBA root operation: "

    .line 23
    .line 24
    move-wide/from16 v3, p1

    .line 25
    .line 26
    invoke-static {v3, v4, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const-wide/16 v29, 0x0

    .line 31
    .line 32
    const v31, 0x1fe00

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const-wide/16 v10, 0x0

    .line 40
    .line 41
    const-wide/16 v12, 0x0

    .line 42
    .line 43
    const/4 v14, 0x0

    .line 44
    const-wide/16 v15, 0x0

    .line 45
    .line 46
    const-wide/16 v17, 0x0

    .line 47
    .line 48
    const-wide/16 v19, 0x0

    .line 49
    .line 50
    const-wide/16 v21, 0x0

    .line 51
    .line 52
    const-wide/16 v23, 0x0

    .line 53
    .line 54
    const-wide/16 v25, 0x0

    .line 55
    .line 56
    const-wide/16 v27, 0x0

    .line 57
    .line 58
    invoke-direct/range {v2 .. v31}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_0
    iget-object v2, v1, Lap6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lo17;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget v3, v2, Lo17;->b:I

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    if-eq v3, v4, :cond_1

    .line 79
    .line 80
    iget-object v0, v0, Lfp6;->operations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    return-object v2
.end method

.method public getUid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public isSbaAegis256Available()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p0, Lxz6;

    .line 2
    .line 3
    sget-object v0, Lcom/swiftapps/sba/SbaRuntimeNative;->a:Lcom/swiftapps/sba/SbaRuntimeNative;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/swiftapps/sba/SbaRuntimeNative;->version()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->isAvailable()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p0, v0, v1}, Lxz6;-><init>(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Lxz6;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    new-instance v0, Landroid/os/RemoteException;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v1, "isSbaAegis256Available(): "

    .line 29
    .line 30
    invoke-static {v1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public isSbaFile(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "isSbaFile"

    .line 5
    .line 6
    invoke-static {p0, p1}, Lfp6;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance p0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    sget-object v2, Lzv1;->c:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    .line 20
    const-wide/16 v3, 0x4

    .line 21
    .line 22
    cmp-long v0, v0, v3

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x4

    .line 34
    :try_start_2
    new-array v3, p0, [B

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ne v4, p0, :cond_1

    .line 41
    .line 42
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move p0, v1

    .line 53
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 54
    .line 55
    .line 56
    return p0

    .line 57
    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :catchall_1
    move-exception v2

    .line 59
    :try_start_5
    invoke-static {v0, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 63
    :catch_0
    :goto_2
    return v1

    .line 64
    :catchall_2
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "isSbaFile(path="

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, ")"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1, p0}, Lfp6;->o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    throw p0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lfp6;->context:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 17
    .line 18
    :try_start_0
    invoke-static {p1, p0, p0}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    instance-of v1, v0, Landroid/system/ErrnoException;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, Landroid/system/ErrnoException;

    .line 29
    .line 30
    iget v1, v1, Landroid/system/ErrnoException;->errno:I

    .line 31
    .line 32
    sget v2, Landroid/system/OsConstants;->EPERM:I

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    const-string v1, "/mnt/media_rw/"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {p1, v1, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 47
    .line 48
    const-string v2, "Failed to hand off root-created SBA output to app uid "

    .line 49
    .line 50
    const-string v3, ": "

    .line 51
    .line 52
    invoke-static {p0, v2, v3, p1}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_2
    const-string p0, "Failed to hand off root-created SBA output because service Context is unavailable"

    .line 61
    .line 62
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public listSbaTarEntries(Ljava/lang/String;Ljava/lang/String;[CII)Lq17;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "listSbaTarEntries(path="

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v1, "listSbaTarEntries"

    .line 10
    .line 11
    invoke-static {v1, p1}, Lfp6;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v2, Lyi0;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-direct {v2, v3, p1, p2, p3}, Lyi0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    new-instance v3, Lep6;

    .line 24
    .line 25
    invoke-static {p1}, Lfp6;->j(Ljava/lang/String;)Lzo6;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v3, v4, p2}, Lep6;-><init>(Lzo6;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Lfp6;->tarEntryCache:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-virtual {p0, v4, v3, v5, v2}, Lfp6;->a(Ljava/util/LinkedHashMap;Ljava/lang/Object;ILbt3;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/List;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v2}, Lyi0;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/util/List;

    .line 49
    .line 50
    :goto_0
    invoke-static {p0, p4, p5}, Lpe4;->l(Ljava/util/List;II)Lq17;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz p3, :cond_1

    .line 55
    .line 56
    array-length p1, p3

    .line 57
    invoke-static {p3, v1, p1, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-object p0

    .line 61
    :goto_1
    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ", entry="

    .line 70
    .line 71
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, ")"

    .line 78
    .line 79
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1, p0}, Lfp6;->o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    if-eqz p3, :cond_2

    .line 93
    .line 94
    array-length p1, p3

    .line 95
    invoke-static {p3, v1, p1, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 96
    .line 97
    .line 98
    :cond_2
    throw p0
.end method

.method public listTarEntries(Ljava/lang/String;II)Lq17;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "listTarEntries"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lfp6;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lep6;

    .line 10
    .line 11
    invoke-static {p1}, Lfp6;->j(Ljava/lang/String;)Lzo6;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2}, Lep6;-><init>(Lzo6;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcr1;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, p1, v2}, Lcr1;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lfp6;->tarEntryCache:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-virtual {p0, v2, v0, v3, v1}, Lfp6;->a(Ljava/util/LinkedHashMap;Ljava/lang/Object;ILbt3;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/List;

    .line 33
    .line 34
    invoke-static {p0, p2, p3}, Lpe4;->l(Ljava/util/List;II)Lq17;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p3, "listTarEntries(path="

    .line 43
    .line 44
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ")"

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, p0}, Lfp6;->o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    throw p0
.end method

.method public readSbaInfo(Ljava/lang/String;)Lf17;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "readSbaInfo"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lfp6;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lwo6;

    .line 10
    .line 11
    invoke-static {p1}, Lfp6;->j(Ljava/lang/String;)Lzo6;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lwo6;-><init>(Lzo6;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lfp6;->archiveInfoCache:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    new-instance v2, Lv95;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, p1, v3}, Lv95;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-virtual {p0, v1, v0, v3, v2}, Lfp6;->a(Ljava/util/LinkedHashMap;Ljava/lang/Object;ILbt3;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lky6;

    .line 32
    .line 33
    invoke-static {p0}, Ll73;->l(Lky6;)Lf17;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "readSbaInfo(path="

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ")"

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1, p0}, Lfp6;->o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0
.end method

.method public readSbaInfoPage(Ljava/lang/String;II)Lf17;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "readSbaInfo"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lfp6;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lwo6;

    .line 10
    .line 11
    invoke-static {p1}, Lfp6;->j(Ljava/lang/String;)Lzo6;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lwo6;-><init>(Lzo6;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lfp6;->archiveInfoCache:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    new-instance v2, Lv95;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, p1, v3}, Lv95;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-virtual {p0, v1, v0, v3, v2}, Lfp6;->a(Ljava/util/LinkedHashMap;Ljava/lang/Object;ILbt3;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lky6;

    .line 32
    .line 33
    invoke-static {p0, p2, p3}, Ll73;->m(Lky6;II)Lf17;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p3, "readSbaInfo(path="

    .line 42
    .line 43
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ")"

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1, p0}, Lfp6;->o(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0
.end method
