.class public abstract Lcom/topjohnwu/superuser/Shell;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static EXECUTOR:Ljava/util/concurrent/ExecutorService; = null

.field public static final FLAG_MOUNT_MASTER:I = 0x2

.field public static final FLAG_NON_ROOT_SHELL:I = 0x1

.field public static final FLAG_REDIRECT_STDERR:I = 0x8

.field public static final NON_ROOT_SHELL:I = 0x0

.field public static final ROOT_MOUNT_MASTER:I = 0x2

.field public static final ROOT_SHELL:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static enableVerboseLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/topjohnwu/superuser/Shell;->enableVerboseLogging:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cmd(Ljava/io/InputStream;)Lod7;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, Lk55;->z(Ljava/io/InputStream;Z)Lvy5;

    move-result-object p0

    return-object p0
.end method

.method public static varargs cmd([Ljava/lang/String;)Lod7;
    .locals 2

    .line 1
    new-instance v0, Lvy5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvy5;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lrh4;->a([Ljava/lang/String;)Lrh4;

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static getCachedShell()Lcom/topjohnwu/superuser/Shell;
    .locals 1

    .line 1
    invoke-static {}, Lk55;->k()Lzd7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getShell()Lcom/topjohnwu/superuser/Shell;
    .locals 1

    .line 33
    invoke-static {}, Lk55;->j()Lzd7;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(Ljava/util/concurrent/Executor;Lnd7;)V
    .locals 2

    .line 34
    invoke-static {}, Lk55;->k()Lzd7;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v0, Lj55;

    invoke-direct {v0, p1}, Lj55;-><init>(Lzd7;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 37
    :cond_0
    sget-object p1, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lj70;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lj70;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getShell(Lnd7;)V
    .locals 3

    .line 1
    sget-object p0, Lnd8;->b:Lmd8;

    .line 2
    .line 3
    invoke-static {}, Lk55;->k()Lzd7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lj55;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lj55;-><init>(Lzd7;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lmd8;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    new-instance v1, Lj70;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {v1, p0, v2}, Lj70;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static isAppGrantedRoot()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lji8;->x()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static rootAccess()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lji8;->x()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public static setDefaultBuilder(Lmd7;)V
    .locals 2

    .line 1
    const-class v0, Lk55;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lk55;->b:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lk55;->k()Lzd7;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    check-cast p0, Lex0;

    .line 15
    .line 16
    sput-object p0, Lk55;->c:Lex0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "The main shell was already created"

    .line 25
    .line 26
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method public static sh(Ljava/io/InputStream;)Lod7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, Lk55;->z(Ljava/io/InputStream;Z)Lvy5;

    move-result-object p0

    return-object p0
.end method

.method public static varargs sh([Ljava/lang/String;)Lod7;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lvy5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvy5;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lrh4;->a([Ljava/lang/String;)Lrh4;

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static su(Ljava/io/InputStream;)Lod7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 11
    invoke-static {p0, v0}, Lk55;->z(Ljava/io/InputStream;Z)Lvy5;

    move-result-object p0

    return-object p0
.end method

.method public static varargs su([Ljava/lang/String;)Lod7;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lvy5;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lvy5;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lrh4;->a([Ljava/lang/String;)Lrh4;

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract execTask(Lpd7;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getStatus()I
.end method

.method public abstract isAlive()Z
.end method

.method public final isRoot()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/Shell;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-lt p0, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public abstract newJob()Lod7;
.end method

.method public final waitAndClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :catch_0
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1, v2, v0}, Lcom/topjohnwu/superuser/Shell;->waitAndClose(JLjava/util/concurrent/TimeUnit;)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void
.end method

.method public abstract waitAndClose(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
