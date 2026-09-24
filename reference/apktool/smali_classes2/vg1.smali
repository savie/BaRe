.class public final Lvg1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lgv7;


# instance fields
.field public final a:Lqg1;

.field public final b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lel;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lel;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lgv7;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lvg1;->d:Lgv7;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lqg1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvg1;->a:Lqg1;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lvg1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lrg1;
    .locals 2

    .line 1
    iget-object v0, p0, Lvg1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lvg1;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lvg1;->a:Lqg1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lqg1;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lvg1;->c:Z

    .line 25
    .line 26
    new-instance v1, Lrg1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lrg1;-><init>(Lvg1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 35
    :goto_1
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :goto_2
    monitor-exit v0

    .line 38
    throw p0
.end method
