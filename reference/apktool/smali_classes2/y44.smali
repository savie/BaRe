.class public final Ly44;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lzc6;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;


# direct methods
.method public constructor <init>(Lzc6;Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly44;->b:Lzc6;

    .line 2
    .line 3
    iput-object p2, p0, Ly44;->c:Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

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
    new-instance p1, Ly44;

    .line 2
    .line 3
    iget-object v0, p0, Ly44;->b:Lzc6;

    .line 4
    .line 5
    iget-object p0, p0, Ly44;->c:Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Ly44;-><init>(Lzc6;Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Ly44;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ly44;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ly44;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Ly44;->a:I

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
    iget-object v5, p0, Ly44;->b:Lzc6;

    .line 23
    .line 24
    invoke-static {v5}, Lw13;->k(Lzc6;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v5, p1}, Lw13;->f(Lzc6;I)Llk3;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    sget-object p1, Lzn4;->a:Lzn4;

    .line 37
    .line 38
    new-instance v2, Lkk2;

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    iget-object v3, p0, Ly44;->c:Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 42
    .line 43
    invoke-direct/range {v2 .. v7}, Lkk2;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    iput v1, p0, Ly44;->a:I

    .line 47
    .line 48
    invoke-static {v2, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Lyx1;->a:Lyx1;

    .line 53
    .line 54
    if-ne p0, p1, :cond_2

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 58
    .line 59
    return-object p0
.end method
