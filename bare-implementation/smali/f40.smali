.class public final Lf40;
.super Lms8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static volatile e:Lf40;

.field public static final f:Le40;


# instance fields
.field public final d:Ldg2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le40;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf40;->f:Le40;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldg2;

    .line 5
    .line 6
    invoke-direct {v0}, Ldg2;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf40;->d:Ldg2;

    .line 10
    .line 11
    return-void
.end method

.method public static W()Lf40;
    .locals 2

    .line 1
    sget-object v0, Lf40;->e:Lf40;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lf40;->e:Lf40;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lf40;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lf40;->e:Lf40;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lf40;

    .line 16
    .line 17
    invoke-direct {v1}, Lf40;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lf40;->e:Lf40;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lf40;->e:Lf40;

    .line 27
    .line 28
    return-object v0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v1
.end method


# virtual methods
.method public final X(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lf40;->d:Ldg2;

    .line 2
    .line 3
    iget-object v0, p0, Ldg2;->f:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Ldg2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Ldg2;->f:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ldg2;->W(Landroid/os/Looper;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Ldg2;->f:Landroid/os/Handler;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_2
    iget-object p0, p0, Ldg2;->f:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
