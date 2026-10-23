.class public final Ldg3;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:J


# direct methods
.method public constructor <init>(JLjv1;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ldg3;->b:J

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Ldg3;

    .line 2
    .line 3
    iget-wide v0, p0, Ldg3;->b:J

    .line 4
    .line 5
    invoke-direct {p1, v0, v1, p2}, Ldg3;-><init>(JLjv1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ldg3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ldg3;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ldg3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lyx1;->a:Lyx1;

    .line 2
    .line 3
    iget v1, p0, Ldg3;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput v2, p0, Ldg3;->a:I

    .line 25
    .line 26
    const-wide/16 v3, 0x3a98

    .line 27
    .line 28
    invoke-static {v3, v4, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    :goto_0
    sget-object p1, Lgg3;->a:Lgg3;

    .line 36
    .line 37
    iget-wide v0, p0, Ldg3;->b:J

    .line 38
    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    sget-wide v3, Lgg3;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    cmp-long p0, v0, v3

    .line 43
    .line 44
    if-nez p0, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/4 v2, 0x0

    .line 48
    :goto_1
    monitor-exit p1

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    sget-object p0, Lxf3;->DISCONNECTED:Lxf3;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lgg3;->j(Lxf3;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 57
    .line 58
    return-object p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method
