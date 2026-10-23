.class public final Lyn4;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:J

.field public final synthetic c:Lbt3;


# direct methods
.method public constructor <init>(JLbt3;Ljv1;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lyn4;->b:J

    .line 2
    .line 3
    iput-object p3, p0, Lyn4;->c:Lbt3;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lyn4;

    .line 2
    .line 3
    iget-wide v0, p0, Lyn4;->b:J

    .line 4
    .line 5
    iget-object p0, p0, Lyn4;->c:Lbt3;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p0, p2}, Lyn4;-><init>(JLbt3;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lyn4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lyn4;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyn4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lyn4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lyx1;->a:Lyx1;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput v2, p0, Lyn4;->a:I

    .line 32
    .line 33
    iget-wide v4, p0, Lyn4;->b:J

    .line 34
    .line 35
    invoke-static {v4, v5, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v3, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    sget-object p1, Lzn4;->a:Lzn4;

    .line 43
    .line 44
    iput v1, p0, Lyn4;->a:I

    .line 45
    .line 46
    iget-object p1, p0, Lyn4;->c:Lbt3;

    .line 47
    .line 48
    invoke-static {p1, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-ne p0, v3, :cond_4

    .line 53
    .line 54
    :goto_1
    return-object v3

    .line 55
    :cond_4
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 56
    .line 57
    return-object p0
.end method
