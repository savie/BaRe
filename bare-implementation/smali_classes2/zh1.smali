.class public final Lzh1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkc;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic k:J

.field public final synthetic n:Lqh4;


# direct methods
.method public constructor <init>(Lkc;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;JLqh4;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzh1;->c:Lkc;

    .line 2
    .line 3
    iput-object p2, p0, Lzh1;->d:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 4
    .line 5
    iput-wide p3, p0, Lzh1;->e:J

    .line 6
    .line 7
    iput-object p5, p0, Lzh1;->f:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p6, p0, Lzh1;->k:J

    .line 10
    .line 11
    iput-object p8, p0, Lzh1;->n:Lqh4;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p9}, Lws7;-><init>(ILjv1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 10

    .line 1
    new-instance v0, Lzh1;

    .line 2
    .line 3
    iget-wide v6, p0, Lzh1;->k:J

    .line 4
    .line 5
    iget-object v8, p0, Lzh1;->n:Lqh4;

    .line 6
    .line 7
    iget-object v1, p0, Lzh1;->c:Lkc;

    .line 8
    .line 9
    iget-object v2, p0, Lzh1;->d:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 10
    .line 11
    iget-wide v3, p0, Lzh1;->e:J

    .line 12
    .line 13
    iget-object v5, p0, Lzh1;->f:Ljava/lang/String;

    .line 14
    .line 15
    move-object v9, p2

    .line 16
    invoke-direct/range {v0 .. v9}, Lzh1;-><init>(Lkc;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;JLqh4;Ljv1;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v0, Lzh1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lzh1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lzh1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lzh1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lzh1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxx1;

    .line 4
    .line 5
    iget v1, p0, Lzh1;->a:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    sget-object v3, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    iget-object v5, p0, Lzh1;->n:Lqh4;

    .line 12
    .line 13
    iget-wide v6, p0, Lzh1;->k:J

    .line 14
    .line 15
    iget-object v8, p0, Lzh1;->d:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-ne v1, v4, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object p1, p0, Lzh1;->c:Lkc;

    .line 38
    .line 39
    invoke-virtual {p1}, Lkc;->b()Lpe4;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0}, Ll73;->t(Lxx1;)Z

    .line 44
    .line 45
    .line 46
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-static {v8, v6, v7, v5}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_2
    :try_start_2
    iget-wide v9, p0, Lzh1;->e:J

    .line 54
    .line 55
    iget-object v11, p0, Lzh1;->f:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v12, Lw01;

    .line 58
    .line 59
    invoke-direct {v12, v4, v8, p1}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lzh1;->b:Ljava/lang/Object;

    .line 63
    .line 64
    iput v4, p0, Lzh1;->a:I

    .line 65
    .line 66
    move-object v13, p0

    .line 67
    invoke-static/range {v8 .. v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;Lkv1;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sget-object p0, Lyx1;->a:Lyx1;

    .line 72
    .line 73
    if-ne p1, p0, :cond_3

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_3
    :goto_0
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-static {v8, v6, v7, v5}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 82
    .line 83
    .line 84
    return-object v3

    .line 85
    :goto_1
    invoke-static {v8, v6, v7, v5}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method
