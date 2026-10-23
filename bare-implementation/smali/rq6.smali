.class public final Lrq6;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lbn1;

.field public final synthetic d:Lqt3;


# direct methods
.method public constructor <init>(Lbn1;Lqt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrq6;->c:Lbn1;

    .line 2
    .line 3
    iput-object p2, p0, Lrq6;->d:Lqt3;

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
    .locals 2

    .line 1
    new-instance v0, Lrq6;

    .line 2
    .line 3
    iget-object v1, p0, Lrq6;->c:Lbn1;

    .line 4
    .line 5
    iget-object p0, p0, Lrq6;->d:Lqt3;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lrq6;-><init>(Lbn1;Lqt3;Ljv1;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lrq6;->b:Ljava/lang/Object;

    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lrq6;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lrq6;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lrq6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lrq6;->a:I

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
    iget-object p0, p0, Lrq6;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lan1;

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lrq6;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lxx1;

    .line 31
    .line 32
    iget-object v0, p0, Lrq6;->c:Lbn1;

    .line 33
    .line 34
    iget-object v2, p0, Lrq6;->d:Lqt3;

    .line 35
    .line 36
    :try_start_1
    iput-object v0, p0, Lrq6;->b:Ljava/lang/Object;

    .line 37
    .line 38
    iput v1, p0, Lrq6;->a:I

    .line 39
    .line 40
    invoke-interface {v2, p1, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    sget-object p0, Lyx1;->a:Lyx1;

    .line 45
    .line 46
    if-ne p1, p0, :cond_2

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    move-object p0, v0

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    move-object p0, v0

    .line 53
    :goto_0
    new-instance v0, Lbn6;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    move-object p1, v0

    .line 59
    :goto_1
    invoke-static {p1}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast p0, Lbn1;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lci4;->G(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {p0, v0}, Lbn1;->Y(Ljava/lang/Throwable;)Z

    .line 72
    .line 73
    .line 74
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 75
    .line 76
    return-object p0
.end method
