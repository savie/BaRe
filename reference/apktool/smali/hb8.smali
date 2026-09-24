.class public final Lhb8;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lmb8;

.field public final synthetic c:Lbt3;


# direct methods
.method public constructor <init>(Lmb8;Lbt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb8;->b:Lmb8;

    .line 2
    .line 3
    iput-object p2, p0, Lhb8;->c:Lbt3;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lhb8;

    .line 2
    .line 3
    iget-object v0, p0, Lhb8;->b:Lmb8;

    .line 4
    .line 5
    iget-object p0, p0, Lhb8;->c:Lbt3;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lhb8;-><init>(Lmb8;Lbt3;Ljv1;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lhb8;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lhb8;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lhb8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lhb8;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lhb8;->c:Lbt3;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :try_start_1
    iget-object p1, p0, Lhb8;->b:Lmb8;

    .line 27
    .line 28
    iput v2, p0, Lhb8;->a:I

    .line 29
    .line 30
    invoke-static {p1, p0}, Lmb8;->b(Lmb8;Lkv1;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    sget-object p0, Lyx1;->a:Lyx1;

    .line 35
    .line 36
    if-ne p1, p0, :cond_2

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    :goto_0
    :try_start_2
    check-cast p1, Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-object p0, Lbe8;->a:Lbe8;

    .line 45
    .line 46
    return-object p0

    .line 47
    :goto_1
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    throw p0
.end method
