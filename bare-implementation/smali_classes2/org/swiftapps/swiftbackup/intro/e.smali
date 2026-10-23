.class public final Lorg/swiftapps/swiftbackup/intro/e;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/intro/d;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/intro/d;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/intro/e;->b:Lorg/swiftapps/swiftbackup/intro/d;

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
    new-instance p1, Lorg/swiftapps/swiftbackup/intro/e;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/intro/e;->b:Lorg/swiftapps/swiftbackup/intro/d;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/swiftapps/swiftbackup/intro/e;-><init>(Lorg/swiftapps/swiftbackup/intro/d;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/intro/e;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/e;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/intro/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/intro/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/intro/e;->b:Lorg/swiftapps/swiftbackup/intro/d;

    .line 6
    .line 7
    sget-object v4, Lyx1;->a:Lyx1;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    move-object p1, v0

    .line 32
    move-object v8, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    iput v2, p0, Lorg/swiftapps/swiftbackup/intro/e;->a:I

    .line 38
    .line 39
    invoke-virtual {v3, p0}, Lorg/swiftapps/swiftbackup/intro/d;->l(Lkv1;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v4, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    iget-object v6, v3, La55;->b:Ljava/lang/String;

    .line 56
    .line 57
    const/16 v10, 0x8

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    const-string v7, "Unable to restore first-run cloud settings"

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    :goto_2
    sget-object v0, Lzn4;->a:Lzn4;

    .line 68
    .line 69
    new-instance v0, Lvf4;

    .line 70
    .line 71
    invoke-direct {v0, v3, p1}, Lvf4;-><init>(Lorg/swiftapps/swiftbackup/intro/d;Z)V

    .line 72
    .line 73
    .line 74
    iput v1, p0, Lorg/swiftapps/swiftbackup/intro/e;->a:I

    .line 75
    .line 76
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-ne p0, v4, :cond_4

    .line 81
    .line 82
    :goto_3
    return-object v4

    .line 83
    :cond_4
    :goto_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 84
    .line 85
    return-object p0
.end method
