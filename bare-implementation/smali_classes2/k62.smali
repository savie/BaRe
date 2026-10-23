.class public final Lk62;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lm62;


# direct methods
.method public constructor <init>(Lm62;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk62;->b:Lm62;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lk62;

    .line 2
    .line 3
    iget-object p0, p0, Lk62;->b:Lm62;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lk62;-><init>(Lm62;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lk62;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lk62;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lk62;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v1, p0, Lk62;->b:Lm62;

    .line 2
    .line 3
    iget v0, p0, Lk62;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance p1, Loz4;

    .line 25
    .line 26
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 27
    .line 28
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Loz4;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Lm62;->f:Ldd1;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Loz4;->a(Ldd1;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    move-object v7, p1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p1, "cloudType"

    .line 49
    .line 50
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 55
    .line 56
    iget-object v5, v1, La55;->b:Ljava/lang/String;

    .line 57
    .line 58
    const/16 v9, 0x8

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const-string v6, "startLocalServerDiscovery"

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lov2;->a:Lov2;

    .line 68
    .line 69
    :goto_1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 70
    .line 71
    new-instance v0, Lo20;

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    invoke-direct {v0, v2, p1, v1}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput v3, p0, Lk62;->a:I

    .line 78
    .line 79
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object p1, Lyx1;->a:Lyx1;

    .line 84
    .line 85
    if-ne p0, p1, :cond_3

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_3
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 89
    .line 90
    return-object p0
.end method
