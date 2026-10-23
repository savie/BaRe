.class public final Lex0;
.super Lmd7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:J

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x14

    .line 5
    .line 6
    iput-wide v0, p0, Lex0;->a:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lex0;->b:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lzd7;
    .locals 5

    .line 1
    const-string v0, "su"

    .line 2
    .line 3
    iget v1, p0, Lex0;->b:I

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v2, v4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x2

    .line 13
    and-int/2addr v1, v2

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    :try_start_0
    const-string v1, "--mount-master"

    .line 17
    .line 18
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Lex0;->c([Ljava/lang/String;)Lzd7;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_0
    .catch Lkn5; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_1
    .catch Lkn5; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    move-object v1, v3

    .line 33
    :catch_1
    :cond_2
    if-nez v1, :cond_5

    .line 34
    .line 35
    iget v2, p0, Lex0;->b:I

    .line 36
    .line 37
    and-int/2addr v2, v4

    .line 38
    if-ne v2, v4, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lex0;->c([Ljava/lang/String;)Lzd7;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_2
    .catch Lkn5; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    move-object v3, v1

    .line 57
    :goto_1
    move-object v1, v3

    .line 58
    :catch_2
    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 59
    .line 60
    iget v0, p0, Lex0;->b:I

    .line 61
    .line 62
    and-int/2addr v0, v4

    .line 63
    if-ne v0, v4, :cond_6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_6
    const-class v0, Lji8;

    .line 67
    .line 68
    monitor-enter v0

    .line 69
    const/4 v1, 0x0

    .line 70
    :try_start_3
    sput v1, Lji8;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    :goto_3
    const-string v0, "sh"

    .line 74
    .line 75
    filled-new-array {v0}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lex0;->c([Ljava/lang/String;)Lzd7;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_4

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_7
    :goto_4
    return-object v1
.end method

.method public final b(Ljava/lang/Process;)Lzd7;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lzd7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lzd7;-><init>(Lex0;Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const-class p0, Lk55;

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    sget-boolean p1, Lk55;->b:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lk55;->a:[Lzd7;

    .line 14
    .line 15
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_2
    aput-object v0, p1, v1

    .line 18
    .line 19
    monitor-exit p1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    throw p1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Lkn5;

    .line 32
    .line 33
    const-string v0, "Unable to create a shell!"

    .line 34
    .line 35
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final varargs c([Ljava/lang/String;)Lzd7;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, " "

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lex0;->b(Ljava/lang/Process;)Lzd7;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Lkn5;

    .line 21
    .line 22
    const-string v0, "Unable to create a shell!"

    .line 23
    .line 24
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method
