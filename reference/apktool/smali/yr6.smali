.class public final Lyr6;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/slog/SLogActivity;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/slog/SLogActivity;ZLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyr6;->b:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lyr6;->c:Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 4
    .line 5
    iput-boolean p3, p0, Lyr6;->d:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lyr6;

    .line 2
    .line 3
    iget-object v0, p0, Lyr6;->c:Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 4
    .line 5
    iget-boolean v1, p0, Lyr6;->d:Z

    .line 6
    .line 7
    iget-object p0, p0, Lyr6;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lyr6;-><init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/slog/SLogActivity;ZLjv1;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lyr6;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lyr6;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyr6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lyr6;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->n()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-object p1, p0, Lyr6;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v6, p1}, Ldt7;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v3, p0, Lyr6;->c:Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-boolean v2, p0, Lyr6;->d:Z

    .line 42
    .line 43
    invoke-static {v0, v2, p1}, Ldt7;->a(Landroid/content/Context;ZLjava/util/List;)Lq63;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sget-object p1, Lzn4;->a:Lzn4;

    .line 48
    .line 49
    new-instance v2, Lld6;

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    invoke-direct/range {v2 .. v7}, Lld6;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    iput v1, p0, Lyr6;->a:I

    .line 56
    .line 57
    invoke-static {v2, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object p1, Lyx1;->a:Lyx1;

    .line 62
    .line 63
    if-ne p0, p1, :cond_2

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 67
    .line 68
    return-object p0
.end method
