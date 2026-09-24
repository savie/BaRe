.class public final Lso5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lso5;

.field public static b:Z

.field public static final c:Lro5;

.field public static final d:Lex6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lso5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lso5;->a:Lso5;

    .line 7
    .line 8
    new-instance v0, Lro5;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lso5;->c:Lro5;

    .line 14
    .line 15
    new-instance v0, Lex6;

    .line 16
    .line 17
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lso5;->d:Lex6;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lso5;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    sput-boolean v0, Lso5;->b:Z

    .line 10
    .line 11
    const-string v0, "NoticeRepo"

    .line 12
    .line 13
    const-string v1, "Initializing"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lre3;->b()Lzc2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "notices"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lso5;->c:Lro5;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lzc2;->g(Laj8;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lre3;->b()Lzc2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "notices"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Lzc2;->c(Laj8;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw v0
.end method
